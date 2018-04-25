package com.LoginCheck.Bean;

/**
 * Created by LHF on 2017/9/8.
 */
public class History {
    private String username;
    private String history;
    public History(String username,String history){
        this.username=username;
        this.history=history;
    }
    public void setUsername(String username){this.username=username;}
    public String getUsername(){return this.username;}
    public void setHistory(String History){this.history=history;}
    public String getHistory(){return this.history;}
}
