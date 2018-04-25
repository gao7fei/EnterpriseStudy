package com.sf.User;
import com.sf.MysqlOperate;
import com.sf.up.mysqlConnecter;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by sf on 2017/8/20.
 * 对用户的浏览历史进行操作
 */
public class HistoryRecord {
    private int userId;
    private Connection conn;
    public HistoryRecord(int userId){
        this.conn=mysqlConnecter.connectToMysql();
        this.userId=userId;
    }
    /**
    *插入用户浏览课程的记录到数据库
    *@param courseId 浏览的课程的Id号
    *@return 插入操作失败返回-1，成功返回0
    *@author sf
    */
    public int recordHistory(int courseId) throws SQLException {
        int result=-1;

        String sql="insert into history_record(userId,courseId) values(" +
                this.userId +
                "," +
                courseId+
                ")";
        System.out.println(sql);
        result=MysqlOperate.insert(conn,sql);

        return result;
    }

    public static void main(String[] args) throws SQLException {
        new HistoryRecord(12).recordHistory(14);
    }
}
