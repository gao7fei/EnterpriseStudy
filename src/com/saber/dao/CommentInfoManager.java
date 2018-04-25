package com.saber.dao;

import com.mysql.jdbc.Statement;
import com.saber.databaseUtil.DBUtils;
import com.saber.lucene.IKWord;
import com.saber.lucene.WordSearcher;
import com.saber.pojo.CommentInfo;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.struts2.interceptor.ApplicationAware;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Saber on 2017/6/30.
 */
public class CommentInfoManager implements ApplicationAware {
    /**
     *获取评论
     */
    public String allComment(){//将评论获取，通过applicationaware发送到前端
        try {
            Connection connection= DBUtils.getConnection();
            Statement statement=(Statement) connection.createStatement();
            String sql="SELECT * FROM commentinfo ORDER  BY date DESC";
            ResultSet resultSet=statement.executeQuery(sql);
            List<CommentInfo> commentInfoList=new ArrayList<>();
            while (resultSet.next()){
                CommentInfo commentInfo=new CommentInfo();
                commentInfo.setName(resultSet.getString("name"));
                commentInfo.setComment(resultSet.getString("comment"));
                commentInfo.setDate(resultSet.getString("date"));
                commentInfo.setGood(resultSet.getString("good"));
                commentInfoList.add(commentInfo);
                //System.out.println(resultSet.getString("date"));
            }
            application.put("key",commentInfoList);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "success";
    }
    public String indexDir_ik="F:\\服务外包比赛\\整合1\\EnterpriseStudy2\\EnterpriseStudy\\lucene_word_index";

    public String someComment(){
        try {

            List<CommentInfo> commentInfoList=new ArrayList<>();

            Connection connection= DBUtils.getConnection();
            Statement statement=(Statement) connection.createStatement();
            String sql="SELECT * FROM commentinfo ORDER  BY good DESC";
            ResultSet resultSet=statement.executeQuery(sql);
            int i=0;
            while (resultSet.next()&&i<5){
                CommentInfo commentInfo=new CommentInfo();
                commentInfo.setName(resultSet.getString("name"));
                commentInfo.setComment(resultSet.getString("comment"));
                commentInfo.setDate(resultSet.getString("date"));
                commentInfo.setGood(resultSet.getString("good"));
                commentInfoList.add(commentInfo);
                i++;
                System.out.println(resultSet.getString("date"));
            }

            WordSearcher wordSearcher=new WordSearcher();
            String str= (new IKWord()).search(indexDir_ik);
            commentInfoList.addAll(wordSearcher.search(indexDir_ik,str));

            application.put("key",commentInfoList);
            application.put("size",str);
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "success";
    }
    private Map<String, Object> application;
    @Override
    public void setApplication(Map<String, Object> map) {
        this.application=map;
    }
}
