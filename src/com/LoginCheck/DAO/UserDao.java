package com.LoginCheck.DAO;

import com.LoginCheck.Bean.User;
import com.saber.databaseUtil.DBUtils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

/**
 * Created by LHF on 2017/6/29.
 */

/**
 * DAO层，用于对数据库的访问。
 */
public class UserDao {
    //查询数据库是否存在目标用户
    private User user=null;
    private int Userid=0;
    public int getUserid(){return this.Userid;}
    //private String DBpassword="as709394";
    //private String DBurl="jdbc:mysql://localhost:3306/lhf";
    public boolean CheckUserExit(String Username, String Password){
        ResultSet Result = null;
        Statement stmt=null;
        Connection conn=null;
        try {

            conn = DBUtils.getConnection();
            stmt = conn.createStatement();
            String sql = "select * from User where User='" + Username + "' and password='" + Password+"'";

            try {
                Result = stmt.executeQuery(sql);
            } catch (Exception var6) {
                var6.printStackTrace();
            }
            if (Result.next()!=false) {
                user=new User(Result.getString("User"),Result.getString("password"),Result.getInt("class"),Result.getString("email"));
                this.Userid=Result.getInt("Userid");
                Result.close();
                stmt.close();
                conn.close();
                return true;
            }
            return false;
        } catch (Exception var7) {
            var7.printStackTrace();
            return false;
        }
    }
    //查询用户，并返回一个该用户的User类
    public User CheckUser(String Username, String Password){
        if(CheckUserExit(Username,Password))
            return user;
        else return null;
    }
    //往数据库添加用户，要求四项必填
    public boolean AddUser(String Username, String Password, String Permit, String Email){
        ResultSet Result = null;
        Statement stmt=null;
        Connection conn=null;
        String sql=null;
        try {
            //Class.forName("com.mysql.jdbc.Driver");
            conn = DBUtils.getConnection();
            stmt = conn.createStatement();
            if (CheckUserExit(Username,Password)) {
                Result.close();
                conn.close();
                stmt.close();
                return false;
            }
            else{
                Random id=new Random();
                sql="insert into User values('"+id.nextInt(1000)+"','"+Username+"','"+Password+"','"+Permit+ "','"+Email+"')";
                System.out.println(Username+Password+Email);
                int i=stmt.executeUpdate(sql);
                if(i>0)
                    return true;
            }

        } catch (Exception var7) {
            var7.printStackTrace();
            return false;
        }
        return false;
    }

}
