package com.sf.recommended;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sf.MysqlOperate;
import com.sf.up.mysqlConnecter;

/**
 * Created by sf on 2017/8/18.
 * 基于课程的推荐算法
 * 适应于系统初期使用
 * 无冷启动问题
 * 实现原理核心是技能树，通过技能树找到其接下来应该学习的课程
 * 通过学员职位确定其能够学习的课程
 * 通过用户历史上对推荐信息的接受情况进行分析，并在下次推荐时做出调整
 */
public class ItemCF {
    private Connection conn;
    public ItemCF(){
        this.conn=mysqlConnecter.connectToMysql();
    }
    public ItemCF(Connection conn){
        this.conn=conn;
    }
    /*
    * 获取用户历史学习的课程ID
    * @param userId 用户ID
    * @return 用户最近学习的课程列表
    * */
    private List<Integer> historyStudyCourse(int userId) throws SQLException {
        List<Integer> courseId=new ArrayList();
        /*
        * 从数据库中获取，首先定义数据库*/
        String sql="select courseId from history_record order by time desc ";
        ResultSet resultSet=MysqlOperate.select(conn,sql);
        while(resultSet.next()){
            courseId.add(resultSet.getInt("courseId"));
        }
        return courseId;
    }
    /*
    * 根据输入课程ID在技能树中进行匹配
    * 获取匹配结果
    *@param courseId 现在学习的课程的ID
    *@return 从数据库中获取的匹配结果
    *@author sf
    */
    private List<Integer> courseMateWithSkillTree(List<Integer> courseId) throws SQLException {
        List<Integer> mateCourseId=new ArrayList<Integer>();
        /*
        * 从技能树中进行匹配并返回匹配结果*/
        MysqlOperate mysqlOperate=new MysqlOperate();
        for(Integer s:courseId) {
            String sql = "select child from skilltree where father=" + s;
            ResultSet result=mysqlOperate.select(conn,sql);
            while(result.next()){
                mateCourseId.add(result.getInt("child"));
            }
        }
        return mateCourseId;
    }
    public List<Integer> getResult(int userId) throws SQLException {
//输入用户Id
        List<Integer> courseId=historyStudyCourse(userId);
//        获取基于技能树课程的推荐
        List<Integer> newCourseId=courseMateWithSkillTree(courseId);
        return newCourseId;

    }

}
