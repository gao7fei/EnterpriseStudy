package com.LoginCheck.Filter;

import com.LoginCheck.DAO.HistoryDao;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

/**
 * Created by LHF on 2017/9/8.
 */
public final class HistoryFilter implements Filter
{
    private FilterConfig filterConfig = null;
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        long start = System.currentTimeMillis();
        String address = request.getRemoteAddr();
        String file = ((HttpServletRequest) request).getRequestURI();
        HttpServletRequest request1=(HttpServletRequest) request;
        HttpSession session=request1.getSession();
        if(session.getAttribute("Username")==null)chain.doFilter(request,response);
        //filterConfig.getServletContext().log(
        //"User Access! " + " User IP: " + address + " Resource: " + file + " Milliseconds used: " + (System.currentTimeMillis() - start));
        else{System.out.println("User Access! " + " User IP: " + address + " Resource: " + file.toString() + " Milliseconds used: " + (System.currentTimeMillis() - start));
        HistoryDao h=new HistoryDao();
        Date date=new Date();
        try {
            h.Store((int) session.getAttribute("Userid"), session.getAttribute("Username").toString(), file.toString(), date);
        }catch(Exception e){
            e.printStackTrace();
        }
        }
        chain.doFilter(request, response);
    }
    public void destroy() { }
    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }
}
