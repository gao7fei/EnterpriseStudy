package com.LoginCheck.tools;

import com.LoginCheck.Bean.User;
import com.LoginCheck.DAO.UserDao;
import com.LoginCheck.Service.Log;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by LHF on 2017/6/29.
 */
public class CookieUtil {
    public static final String USER_COOKIE="user.cookie";
    //Cookie添加
    public Cookie addCookie(User user){
        Cookie cookie=new Cookie(USER_COOKIE,user.getUsername()+","+user.getPassword());
        cookie.setMaxAge(60*60*24*14);//two weeks
        return cookie;
    }
    //Cookie获取
    public boolean getCookie(HttpServletRequest request, UserDao userDao){
        Cookie[] cookies=request.getCookies();
        System.out.println("\nCookies:"+cookies);
        if(cookies!=null){
            for(Cookie cookie:cookies){
                //System.out.println("Cookie:"+cookie.getName());
                if(CookieUtil.USER_COOKIE.equals(cookie.getName())){
                    String value=cookie.getValue();
                    if(StringUtils.isNotBlank(value)){
                        String[] split=value.split(",");
                        String username=split[0];
                        String password=split[1];
                        User user =userDao.CheckUser(username,password);
                        if(user!=null){
                            HttpSession session=request.getSession();
                            session.setAttribute(Log.USER_SESSION,user);
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }
    //Cookie删除
    public Cookie delCookie(HttpServletRequest request){
        Cookie[] cookies=request.getCookies();
        if(cookies!=null){
            for(Cookie cookie:cookies){
                if(USER_COOKIE.equals(cookie.getName())){
                    cookie.setValue("");
                    cookie.setMaxAge(0);
                    return cookie;
                }
            }
        }
        return null;
    }
}
