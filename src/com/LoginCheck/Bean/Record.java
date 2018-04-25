package com.LoginCheck.Bean;

import java.util.Date;

/**
 * Created by LHF on 2017/9/8.
 */
public class Record {
    private String username;
    private Date logintime;
    private Date logouttime;
    public Record(String username,Date logintime,Date logouttime){
        this.username=username;
        this.logintime=logintime;
        this.logouttime=logouttime;
    }
    public Record(){

    }
    public String getUsername(){return this.username;}
    public void setUsername(String username){this.username=username;}
    public Date getLogintime(){return this.logintime;}
    public void setLogintime(Date logintime){this.logintime=logintime;}
    public Date getLogouttime(){return this.logouttime;}
    public void setLogouttime(Date logouttime){this.logouttime=logouttime;}
}
