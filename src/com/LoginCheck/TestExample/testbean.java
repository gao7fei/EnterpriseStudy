package com.LoginCheck.TestExample;

/**
 * Created by LHF on 2017/8/23.
 */
public class testbean {
    private String name;
    private int value;
    private String color;
    public testbean(String name, int value, String color){
        this.name=name;
        this.value=value;
        this.color=color;
    }
    public void setName(String name){
        this.name=name;
    }
    public void setData(int value){
        this.value=value;
    }
    public void setColor(String color){this.color=color;}
    public String getName(){
        return this.name;
    }
    public String getColor(){return this.color;}
    public int getValue(){
        return this.value;
    }
}
