package com.LoginCheck.Bean;

/**
 * Created by LHF on 2017/6/29.
 */
//用户类，基本用户信息条目存储单元POJO
public class User {
    public String username;
    public String password;
    public int permit;
    public String Email;
    public User(String Username, String Password){
        this.username=Username;
        this.password=Password;
    }
    public User(String Username, String Password, int Permit, String Email){
        this.username=Username;
        this.password=Password;
        this.permit=Permit;
        this.Email=Email;
    }
    public int getPermit(){return this.permit;}
    public String getEmail(){return this.Email;}
    public String getUsername(){
        return this.username;
    }
    public String getPassword(){
        return this.password;
    }
    public void setUsername(String Username){
        this.username=Username;
    }
    public void setPassword(String Password){
        this.password=Password;
    }
}
