package com.LoginCheck.DAO;

import com.LoginCheck.Bean.Question;
import com.alibaba.fastjson.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by LHF on 2017/7/9.
 */
//DEBUG失败，用于后台请求问题显示，主要识别符为问题ID与问题类型
public class QuestionDao {
    private String QuestionType;
    private String Id;

    //未测试
    public String getQuestion(String id, String questionType)throws SQLException {
        ResultSet Result = null;
        Statement stmt=null;
        Connection conn=null;
        List<Question> result=new ArrayList<Question>();
        String Qresult=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lhf", "root", "as709394");
            stmt = conn.createStatement();
            //SQL语句根据数据库是否划分题库存储而进行变更，若按问题类型进行分类则有。
            //String sql="select * from "+questionType+"where QuestionID='"+id+"'";
            String sql = "select * from Question where QuestionID='" + id + "' and Type='" + questionType+"'";
            Result = stmt.executeQuery(sql);
            System.out.println("\n"+sql);
            if (Result.next()!=false) {
                //获取问题对象并返回
                while (Result.next()) {
                    System.out.println("\n"+Result.getString("QuestionID"));
                    Question question = new Question(Result.getString("QuestionID"), Result.getString("Type"), Result.getString("Question"), Result.getString("AnswerCorrect"), Result.getString("AnswerB1"), Result.getString("AnswerB2"), Result.getString("AnswerB3"));
                    result.add(question);
                    Qresult=JSON.toJSONString(question);
                }
                Result.close();
                conn.close();
                stmt.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return Qresult;
    }
}
