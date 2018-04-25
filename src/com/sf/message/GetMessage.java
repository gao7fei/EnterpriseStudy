package com.sf.message;
import org.apache.struts2.interceptor.ApplicationAware;
import com.sf.up.mysqlConnecter;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by sf on 2017/8/16.
 */
public class GetMessage implements ApplicationAware {

    private Map<String, Object> application;

    @Override
    public void setApplication(Map<String, Object> map) {
        this.application=map;
    }
    public String getMessage() throws SQLException {
        Connection conn= mysqlConnecter.connectToMysql();
        Statement stat=conn.createStatement();
        String sql="select * from message order by time DESC ";
        ResultSet result=stat.executeQuery(sql);
        List<MessageGC> messageList=new ArrayList<MessageGC>();

            while (result.next()) {
                MessageGC messageGC=new MessageGC();
                messageGC.setMessage(result.getString("message"));
                messageGC.setMessage(result.getTimestamp("time").toString());
                messageList.add(messageGC);
            }
        application.put("message_key",messageList);
        return "success";
    }

}
