package com.LoginCheck.Filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import javax.servlet.Filter;

/**
 * Created by LHF on 2017/7/6.
 */

//登录过滤器，防止未经登录即进入页面
public class LoginFilter implements Filter {
    private static String LOGIN_PAGE="index.jsp";
    public void init(FilterConfig arg0) throws ServletException {

    }
    public void destory(){

    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException,ServletException {
        HttpServletRequest res=(HttpServletRequest)request;
        HttpServletResponse rep=(HttpServletResponse)response;
        HttpSession session=res.getSession(true);
       // String currentUrl=rep.getRequestURI();
        //此处语句的与或使用有待考究
        //if (currentUrl.contains(LOGIN_PAGE)&&currentUrl.contains("login.jsp")){
        String Username=(String)session.getAttribute("Username");
        if((Username==null)||"".equals("username")){
            //if(session==null||session.getAttribute("Username")==null) {
                rep.sendRedirect("http://" + res.getHeader("host")+"/login.jsp");
            //}
            //rep.sendRedirect(".../login.jsp");
        }
        else{
        filterChain.doFilter(res,rep);
        }
    }
}
