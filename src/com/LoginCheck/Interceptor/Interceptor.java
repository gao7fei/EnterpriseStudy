package com.LoginCheck.Interceptor;

import com.opensymphony.xwork2.ActionInvocation;

import java.io.Serializable;

/**
 * Created by LHF on 2017/7/4.
 */
public interface Interceptor extends Serializable {
    public void init();
    public void destroy();
    String Interceptor(ActionInvocation invocation)throws Exception;
}
