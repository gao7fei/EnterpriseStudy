package com.sf.recommended;
import com.sf.up.mysqlConnecter;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sf on 2017/8/30.
 */
public class NewCourseCF {
//    要筛选的最新课程的数目
    private final int COURSE_NUM=20;
    /**
    *获取最新发布的课程
    *@return 最新的二十个课程
    *@author sf
    */

    public List<Integer> getResult() throws SQLException {
        Connection conn=mysqlConnecter.connectToMysql();
        Statement stat=conn.createStatement();
//        从数据库中选择最新的二十个课程
        String sql="SELECT courseid from course order by time DESC LIMIT "+COURSE_NUM;
        ResultSet resultSet=stat.executeQuery(sql);
        List<Integer> list=new ArrayList<>();
        while(resultSet.next()){
            list.add(resultSet.getInt("courseid"));
        }
        return list;
    }
}
