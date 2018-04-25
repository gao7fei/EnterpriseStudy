package com.sf.recommended;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.sf.up.mysqlConnecter;

/**
 * Created by sf on 2017/7/10.
 */

public class FromSkillTree {
    public static void main(String[] args) throws SQLException {
        System.out.println( new FromSkillTree().getCourse(12));
    }
    public String getCourse(int finishedCourseId) throws SQLException {
        Connection conn=mysqlConnecter.connectToMysql();
        Statement statement=conn.createStatement();
        String sql="select child from skilltree where father="+finishedCourseId+";";
        ResultSet resultSet=statement.executeQuery(sql);
        String s="";
        while(resultSet.next()){
            s+=resultSet.getInt("child");
            s+=",";
        }
        return s;
    }
}
