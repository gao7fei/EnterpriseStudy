package com.LoginCheck.Service;

import com.LoginCheck.tools.JsonUtil;
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
 * Created by LHF on 2017/8/21.
 */
//表请求处理及响应服务
public class FormAction extends ActionSupport implements ServletResponseAware,ServletRequestAware {
    public HttpServletRequest request;
    public HttpServletResponse response;
    public HttpSession session;
    public void setServletResponse(HttpServletResponse response){this.response=response;}
    public void setServletRequest(HttpServletRequest request){this.request=request;}
    public void setSession(HttpSession session){this.session=session;}
    public String Json()throws UnsupportedEncodingException {
    HttpServletRequest request= ServletActionContext.getRequest();
    HttpServletResponse response= ServletActionContext.getResponse();
    response.setContentType("text/json;charset:utf-8");
    response.setHeader("pragma","no-cache");
    response.setHeader("cached-control","no-cache");

    String type=request.getParameter("type");
        String range=request.getParameter("range");
    String requestType=request.getParameter("request");
    PrintWriter out=null;

    try{
            System.out.println(type);
            //获取JSON数据
            JsonUtil test=new JsonUtil();
            String j=test.Select();
            System.out.println(j+"\n"+"fuck");
            out=response.getWriter();
            out.write(j);

        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
