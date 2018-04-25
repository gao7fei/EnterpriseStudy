package com.saber.dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.saber.databaseUtil.DBUtils;
import com.saber.pojo.Details;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Saber on 2017/9/5.
 */
public class DetailsManager {
    PreparedStatement titleQuery= null ;
    ResultSet results= null ;
    Connection conn=null;


    public List<Details> queryDetails(){
        List<Details> details=new ArrayList<>();
        conn= (Connection) DBUtils.getConnection();
        String sql = "select * from course_details";
        try
        {
            titleQuery= (PreparedStatement) conn.prepareStatement(sql);
            results=titleQuery.executeQuery();
            while(results.next())
            {
                Details u=new Details();
                u.setDetails_class(results.getString("class"));
                u.setDetails_link(results.getString("link"));
                u.setDetails_name(results.getString("course_name"));
                u.setDetails_type(getsType(results.getString("type")));
//                System.out.println(u.getDetails_name());
                details.add(u);
            }
            results.close() ;
            titleQuery.close() ;
        }
        catch(Exception e)
        {
            System.out.println(e) ;
        }
        finally
        {
            DBUtils.close();
        }
        return details;
    }

    public String getsType(String s){
        String s1;
        switch (s){
            case "1": s1=" ”∆µ";break;
            case "2":s1="“Ù∆µ";break;
            case "3":s1="PPT";break;
            default: s1=" ”∆µ";break;
        }
        return s1;
    }
}
