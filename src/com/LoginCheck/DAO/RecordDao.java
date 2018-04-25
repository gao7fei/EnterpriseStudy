package com.LoginCheck.DAO;

/**
 * Created by LHF on 2017/7/12.
 */
import com.LoginCheck.Bean.Record;
import com.alibaba.fastjson.JSON;
import com.saber.databaseUtil.DBUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RecordDao {
    //使用的时间类型仍未调试确定。
    //private String DBurl="jdbc:mysql://localhost/lhf";
    //private String DBpassword="as709394";
    public void Store(Record record) throws SQLException {
        HttpServletRequest request= ServletActionContext.getRequest();
        HttpSession session=request.getSession();
        String User=(String) session.getAttribute("Username");
        Connection conn=null;
        Statement stat=null;
        ResultSet rs=null;
        String sql=null;
        try{

            conn= DBUtils.getConnection();
            stat=conn.createStatement();
            sql="select Userid from Record where Username='"+record.getUsername()+"'";
            rs=stat.executeQuery(sql);
            HttpServletRequest request1;
            sql="insert into Record values('"+record.getUsername()+"','"+record.getLogintime()+"','"+record.getLogouttime()+"')";
            rs=stat.executeQuery(sql);
            if (rs.next()) System.out.println("\nsuccess");
        }catch (Exception e){
            e.printStackTrace();
        }finally{
            rs.close();;
            stat.close();
            conn.close();
        }
    }
    public String Fetch(String username)throws SQLException{
        Connection conn=null;
        Statement stat=null;
        ResultSet rs=null;
        String sql=null;
        List<Record> result=new ArrayList<Record>();
        try{

            conn= DBUtils.getConnection();
            stat=conn.createStatement();
            sql="select * from Record where Username='"+username+"'";
            rs=stat.executeQuery(sql);
            while(rs.next()){
                Record r=new Record(rs.getString("Username"),rs.getDate("logintime"),rs.getDate("logouttime"));
                result.add(r);
            }
            String json= JSON.toJSONString(result);
            return json;
        }catch (Exception e){
            e.printStackTrace();
        }finally{
            rs.close();;
            stat.close();
            conn.close();
        }
        return "fail";
    }
}
