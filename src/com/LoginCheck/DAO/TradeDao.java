package com.LoginCheck.DAO;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import java.sql.*;

/**
 * Created by LHF on 2017/7/10.
 */
//还没DEBUG
public class TradeDao {
    //用于完成交易请求，交易失败返回失败信息，成功则返回成功信息，参数为产品ID与用户名
    public static String Trade(String Productname, String UserId){
        ResultSet resultSet=null;
        Connection conn=null;
        Statement stat=null;
        int need;
        int balance;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/lhf","root","as709394");
            stat=conn.createStatement();
            String sql="select * from Product where ProductName='"+Productname+"'";
            resultSet=stat.executeQuery(sql);
            if(resultSet.next()!=false){
                need=resultSet.getInt("Need");
                sql="select * from Points where UserID='"+UserId+"'";
                resultSet=stat.executeQuery(sql);
                if (resultSet.next()!=false){
                    balance=resultSet.getInt("UserPoint");
                    balance-=need;
                    if (balance<0){
                        resultSet.close();
                        stat.close();
                        conn.close();
                        return "Fail to trade";
                    }
                    else{
                        sql="update Points set balance="+balance+"where UserId='"+UserId+"'";
                        stat.executeQuery(sql);
                        resultSet.close();
                        stat.close();
                        conn.close();
                        return "Success";
                    }
                }
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return "This trade cannot be finish";
    }
    public JSONArray getTrade() throws ClassNotFoundException,SQLException {
        ResultSet resultSet=null;
        Connection conn=null;
        Statement stat=null;
        JSONArray result=new JSONArray();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lhf", "root", "as709394");
            stat = conn.createStatement();
            String sql = "select * from Trade";
            resultSet=stat.executeQuery(sql);
            if(resultSet.next()!=false){
                ResultSetMetaData metaData=resultSet.getMetaData();
                int column=metaData.getColumnCount();
                while(resultSet.next()){
                    JSONObject data=new JSONObject();
                    for(int i=0;i<column;i++){
                        String name=metaData.getColumnName(i);
                        String value=resultSet.getString(name);
                        data.put(name,value);
                    }
                    result.add(data);
                }
                return  result;
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }finally {
            if (conn!=null){
            conn.close();
            }
            if (stat!=null) {
                stat.close();
            }
            if (resultSet!=null) {
                resultSet.close();
            }
        }
        return result;
        }

}
