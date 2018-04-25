package com.sf.up;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by sf on 2017/6/29.
 */
public class upmysql {
    public int insert(int id, String name, String path,long size,String type,int courseId) {
        int i=1;
        Connection conn;
        try {
            conn = mysqlConnecter.connectToMysql();
            //创建一个Statement对象
            Statement stmt = conn.createStatement(); //创建Statement对象
            String sql = "insert into file(fileID,filename,path,filetype,filesize,courseId" +
                    ") values(" + id + ",\'" + name + "\',\'" + path + "\\\',\'"+type+"\',\'"+size+"\',\'"+courseId+"\')";
            //String sql = "insert into uploadfile(id,name,path) values(5,'hello','naem')";
            System.out.println(sql);
            stmt.execute(sql);
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            i=0;
            e.printStackTrace();
        }
        return i;
    }
}
