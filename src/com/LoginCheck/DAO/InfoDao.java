package com.LoginCheck.DAO;

import com.LoginCheck.Bean.History;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.saber.databaseUtil.DBUtils;

import java.sql.*;
import java.util.*;

/**
 * Created by LHF on 2017/7/10.
 */
public class InfoDao {
    private Connection conn=null;
    private Statement stat=null;

    private String DBurl="jdbc://localhost:3306/lhf";
    private String DBpassword="as709394";
    public String getHistory(String Username) throws SQLException {
        List<JSONArray> dataset=new ArrayList<JSONArray>() ;
        String history=new String();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn= DriverManager.getConnection(DBurl,"root",DBpassword);
            //conn= DBUtils.getConnection();
            stat=conn.createStatement();
            String sql="select * from Access where Username='"+Username+"'";
            ResultSet result=stat.executeQuery(sql);
            List<History> historyList=new ArrayList<History>();
            while(result.next()){
                History h=new History(result.getString("Username"),result.getString("history"));
                historyList.add(h);
            }
            String json= JSON.toJSONString(historyList);
            return json;
            //本处进行数据库基本数据获取，直接根据已知表名进行信息提取而不加筛选。此处耦合性较高，不易改动。
           /* if(result.next()!=false){
                JSONArray array=new JSONArray();
                ResultSetMetaData metaData=result.getMetaData();
                int column=metaData.getColumnCount();
                while(result.next()){
                    JSONObject data=new JSONObject();
                    for(int i=0;i<column;i++){
                        String name=metaData.getColumnName(i);
                        String value=result.getString(name);
                        data.put(name,value);
                    }
                    array.add(data);

                }
            }*/
        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println("\nError,do not have history json\n");
        return null;
    }
}
