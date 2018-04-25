package com.saber.action;

import com.opensymphony.xwork2.ActionSupport;
import com.saber.pojo.Course;
import com.saber.dao.CourseManager;

import java.util.List;

/**
 * Created by Saber on 2017/7/3.
 */
public class CourseListAction extends ActionSupport{
    /**
     * 分页
     */
    int i=1;//中间变量
    private int pageNow=1; //页码数,初始为1
    private int pageSize = 12 ; //页面行数
    private int intRowCount;//总行数
    private int intPageCount;//总页数

    private String searchItem;
    private Course user;
    private List<Course> users;


    public int getI() {
        return i;
    }
    public void setI(int i) {
        this.i = i;
    }
    public int getPageNow() {
        return pageNow;
    }
    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public int getIntRowCount() {
        return intRowCount;
    }
    public void setIntRowCount(int intRowCount) {
        this.intRowCount = intRowCount;
    }
    public int getIntPageCount() {
        return intPageCount;
    }
    public void setIntPageCount(int intPageCount) {
        this.intPageCount = intPageCount;
    }
    public Course getUser() {
        return user;
    }
    public void setUser(Course user) {
        this.user = user;
    }
    public List<Course> getUsers() {
        return users;
    }
    public void setUsers(List<Course> users) {
        this.users = users;
    }
    public String getSearchItem() {
        return searchItem;
    }

    public void setSearchItem(String searchItem) {
        this.searchItem = searchItem;
    }

    /**
     * by:saber
     * 查询用户列表
     */
    public String queryList() throws Exception {

        CourseManager u = new CourseManager();
        intRowCount = u.count();
        intPageCount = (intRowCount + pageSize - 1) / pageSize;//计算出总页数
        if (pageNow < 1) {
            pageNow = 1;
        }
        if (pageNow > intPageCount)
            pageNow = intPageCount;
        i = (pageNow - 1) * pageSize;
//        System.out.println("________当前页面："+pageNow+"___________--");
        CourseManager us = new CourseManager();
        intRowCount = (intRowCount + pageSize - 1) / pageSize;
//        System.out.println("________页面最大："+intRowCount+"___________--");
        if (null != us.queryByPage(i, pageSize)) {
            users = us.queryByPage(i, pageSize);
            return "userList";
        } else {
            return "userList";
        }

    }
    public String querySearch() throws Exception{
        CourseManager us=new CourseManager();
        if(null!=us.queryBySearch(searchItem)){
            users = us.queryBySearch(searchItem);
            return "userSearch";
        }else{
            return "userSearch";
        }

    }
}
