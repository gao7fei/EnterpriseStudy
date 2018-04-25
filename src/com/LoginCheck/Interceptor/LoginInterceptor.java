package com.LoginCheck.Interceptor;

import com.LoginCheck.Service.Log;
import com.opensymphony.xwork2.ActionInvocation;

import java.util.Map;

/**
 * Created by LHF on 2017/7/4.
 */
public abstract class LoginInterceptor implements Interceptor {
    public void init(){
    String s="";
    }
    public void destory(){
        System.out.println();
    }
    public String Interceptor(ActionInvocation invocation)throws Exception {
        Map session =invocation.getInvocationContext().getSession();
        Object action=invocation.getAction();
        if(action instanceof Log ||action instanceof Log){
            //为不需要过滤的动作，则通过该过滤器
            System.out.println("exit check login");
            return invocation.invoke();
        }
        else {
            //否则为需要过滤的网站，返回跳转结构集
         System.out.println("Back to login ,right now!");
         return "login";
        }
    }
}
