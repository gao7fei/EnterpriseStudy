package com.LoginCheck.Service;

import com.LoginCheck.DAO.TradeDao;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

/**
 * Created by LHF on 2017/7/9.
 */
//还没DEBUG，用于前端生成视频列表或者商品列表，可通用。主要利用前端ajax请求后调用数据层
public class Trade extends ActionSupport implements ServletResponseAware,ServletRequestAware {
    public HttpServletRequest request;
    public HttpServletResponse response;
    public HttpSession session;
    public void setServletRequest(HttpServletRequest request){
        this.request=request;
    }
    public void setServletResponse(HttpServletResponse response){
        this.response=response;
    }
    public void setSession(HttpSession session){
        this.session=session;
    }

    //本方法已测试为可用
    public String loadpage() throws UnsupportedEncodingException {
        //处理ajax请求
        HttpServletRequest request= ServletActionContext.getRequest();
        HttpServletResponse response= ServletActionContext.getResponse();
        String Username=(String) session.getAttribute("Username");
        response.setContentType("text/html;charset=utf-8");
        response.setHeader("pragma","no-cache");
        response.setHeader("cache-control","no-cached");
        PrintWriter out=null;
        try {
            String Id=request.getParameter("productname");
            String result= TradeDao.Trade(Id,Username);
            String resultData="1";
            out=response.getWriter();
            out.write(result);
            out.flush();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(out!=null){
                out.close();
            }
        }
        return "Success";
    }
    public String execute(){

        return "Success";
    }
}
