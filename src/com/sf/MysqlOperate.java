package com.sf;

import java.sql.*;
import java.util.Set;

/**
 * Created by sf on 2017/8/18.
 * 提供mysql数据库的一些最基本的操作
 * 包括数据库连接
 * 增删改查等操作
 */
public class MysqlOperate {
    /*
    *连接到某个特定的数据库
     * @param userName 数据库用户名
      * @param password 数据库密码
      * @param sqlName 数据库名称
      * @return 连接成功后返回数据库连接
      * @author sf
      * @version 1.0*/
    public Connection connectToMysql(String userName, String password, String sqlName) {
        String result = "success";
        try {
            //调用Class.forName()方法加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("成功加载MySQL驱动！");
        } catch (ClassNotFoundException e1) {
            System.out.println("找不到MySQL驱动!");
            e1.printStackTrace();
        }
        String url = "jdbc:mysql://localhost:3306/" +sqlName+
                "?useSSL=true";    //JDBC的URL
        Connection conn = null;
        try {
            conn= DriverManager.getConnection(url, userName, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
    /*
    * 执行select操作
    * @param conn 数据库连接
    * @param sql 要执行的数据库语句
    * @return 执行的结果*/
    public static ResultSet select(Connection conn,String sql) throws SQLException {
        Statement stat=conn.createStatement();
        ResultSet result=stat.executeQuery(sql);
        return result;
    }
    /*
    * 执行增加操作
    *  * @param conn 数据库连接
    * @param sql 要执行的数据库语句
    * @return 执行的结果，0表示成功执行
    * */
    public static int insert(Connection conn,String sql) throws SQLException {
        Statement stat=conn.createStatement();
        stat.execute(sql);
        return 0;
    }
}
