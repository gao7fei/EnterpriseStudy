package com.LoginCheck.Service;

import com.LoginCheck.DAO.UserDao;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by LHF on 2017/6/29.
 */
//用于注册用的类，刚开始写的时候分不清Bean和Action所以四不像了
public class SignUp extends ActionSupport implements SessionAware, ServletRequestAware, ServletResponseAware {
    private Map session;
    private HttpServletResponse response;
    private HttpServletRequest request;
    private HttpSession Session;
    private String Name;
    private String Email;
    private String Password;
    private String Permission;
    public void setServletRequest(HttpServletRequest request){
        this.request=request;
    }
    public void setServletResponse(HttpServletResponse response){
        this.response=response;
    }
    public void setSession(Map att){
        this.session=att;
    }
    public void setName(String Name){
        this.Name=Name;
    }
    public void setEmail(String Email){this.Email=Email;}
    public void setPermission(String Permission){this.Permission=Permission;};
    public void setPassword(String Password){
        this.Password=Password;
    }
    public String getName(){
        return this.Name;
    }
    public String getPassword(){
        return this.Password;
    }
    public String getEmail(){
        return this.Email;
    }
    public String getPermission(){return this.Permission;}
    //Authorization mode

    @Override
    public String execute() {
        UserDao userdao = new UserDao();
        System.out.println("\nSignUp excute permission:"+getPermission());
        Session=request.getSession();
        System.out.println("\nGet Session ");
        if (userdao.CheckUserExit(Name, Password)){
            System.out.println(userdao.CheckUserExit(Name, Password));
            return ERROR;
        }
        else userdao.AddUser(Name, Password, Permission, Email);
        return SUCCESS;
    }
}