package com.LoginCheck.DAO;

import com.LoginCheck.Bean.History;
import com.alibaba.fastjson.JSON;
import com.saber.databaseUtil.DBUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;

/**
 * Created by LHF on 2017/9/10.
 */
public class HistoryDao {
    public String Store(int Userid,String username,String url,Date date)throws SQLException{
        Connection conn=null;
        Statement stat=null;
        ResultSet resultset=null;
        String sql;
        try{
            conn= DBUtils.getConnection();
            stat=conn.createStatement();
            sql="insert into History values("+Userid+",'"+username+"'"+url+"'"+date+"'";
            ;
            if (stat.executeUpdate(sql)!=0)return "success";
        }catch (Exception e){
           e.printStackTrace();
        }
        return "error";
    }
    public String Fetch(String Username)throws SQLException{
        Connection conn=null;
        Statement stat=null;
        ResultSet resultset=null;
        String sql;
        List<String> list=new ArrayList<String>();
        try{
            conn= DBUtils.getConnection();
            stat=conn.createStatement();
            sql="select history from Access where Username='"+Username+"'";
            resultset=stat.executeQuery(sql);
            while(resultset.next()){
                list.add(resultset.getString("history"));
            }
            String result= JSON.toJSONString(list);
            return result;
        }catch (Exception e){
            e.printStackTrace();
        }
        return "error";
    }
}
