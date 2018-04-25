package com.LoginCheck.DAO;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by LHF on 2017/7/10.
 */
public class Information extends ActionSupport implements ServletRequestAware,ServletResponseAware {
    public HttpServletResponse response;
    public HttpServletRequest request;
    public HttpSession session;
    public void setServletResponse(HttpServletResponse response){
        this.response=response;
    }
    public void setServletRequest(HttpServletRequest request){
        this.request=request;
    }
    public void setSession(HttpSession session){
        this.session=session;
    }
    //处理生成报表的请求，返回JSON数据供前端处理后直接生成报表。
    //各种数据可视化框架都有对应的JSON处理生成图表。
    public void infoOutPutAjax()throws UnsupportedEncodingException {
        HttpServletRequest request= ServletActionContext.getRequest();
        HttpServletResponse response= ServletActionContext.getResponse();
        PrintWriter out=null;
        InfoDao info=new InfoDao();
        String User=(String) request.getParameter("CheckUsername");
        response.setContentType("Application/Json;charset=utf-8");
        response.setHeader("pragma","no-cache");
        response.setHeader("cache-control","no-cached");
        try{
        out=response.getWriter();
        String i= JSON.toJSONString(info);
        out.write(i);
        out.flush();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(out!=null)
                out.close();
        }
    }
    public String execute() throws SQLException {
        String User=(String)session.getAttribute("Username");
        InfoDao info=new InfoDao();
        List<JSONArray> array=new ArrayList<JSONArray>();
        ;
        return "Success";
    }
}
