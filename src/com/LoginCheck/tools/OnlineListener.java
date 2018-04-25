package com.LoginCheck.tools;

import com.LoginCheck.Bean.Record;
import com.LoginCheck.DAO.RecordDao;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.sql.SQLException;
import java.util.Date;

/**
 * Created by LHF on 2017/9/8.
 */
public class OnlineListener implements HttpSessionListener {
    private Record record=new Record();
    public void sessionCreated(HttpSessionEvent event){
        System.out.println("\n SessionCreate");
        HttpSession session=event.getSession();
        String username=session.getAttribute("Username").toString();
        Date logintime=new Date();

        record.setUsername(username);
        record.setLogintime(logintime);
    }
    public void sessionDestoryed(HttpSessionEvent event){
        Date logouttime=new Date();
        HttpSession session=event.getSession();
        ServletContext application=session.getServletContext();
        String Username=session.getAttribute("Username").toString();
        this.record.setLogouttime(logouttime);
        session.removeAttribute("Username");
        RecordDao r=new RecordDao();
        try{
        r.Store(this.record);
        }
        catch(SQLException e){
            System.out.println("\nRecord save error");
        }
        System.out.print(record);
    }
}
