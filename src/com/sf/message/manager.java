package com.sf.message;
import com.sf.up.mysqlConnecter;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by sf on 2017/8/15.
 * 管理员上传消息推送的action
 *
 */
public class manager {
    private String message;//存储推送消息的内容
    private String manager;//发布消息的管理员
    /*
    * @return action执行情况
    * */
    public String msg_upload() throws SQLException {
        String result="success";
        Connection conn=mysqlConnecter.connectToMysql();
        Statement stat=conn.createStatement();
        String sql="INSERT INTO message(manager, message) VALUES (\""+manager+"\",\""+message+"+\")";
        stat.execute(sql);
        return result;
    }
    public void setMessage(String message) {
        this.message = message;
    }
    public void setManager(String manager) {
        this.manager = manager;
    }
}
