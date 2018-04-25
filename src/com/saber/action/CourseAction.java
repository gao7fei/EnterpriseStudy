package com.saber.action;

import com.opensymphony.xwork2.ActionSupport;
import com.saber.dao.DetailsManager;
import com.saber.pojo.Course;
import com.saber.dao.CourseManager;
import com.saber.pojo.Details;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Saber on 2017/8/16.
 */
public class CourseAction extends ActionSupport {
    /**
     * 获取课程的action
     */
    private String source;//课程的图片
    private Course course;//课程
    private String course_describe;//课程描述
    private String course_name;//课程名
    //后期还将假如课程到底是视频、音频、PPT的判断
    private String course_type;//课程内容
    private String course_source;//课程链接
    private List<Details> details;
    private List<Course> courses;

    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

    public String getCourse_source() {
        return course_source;
    }

    public void setCourse_source(String course_source) {
        this.course_source = course_source;
    }

    public List<Details> getDetails() {
        return details;
    }

    public void setDetails(List<Details> details) {
        this.details = details;
    }

    public String getCourse_type() {
        return course_type;
    }

    public void setCourse_type(String course_type) {
        this.course_type = course_type;
    }

    public String getCourse_describe() {
        return course_describe;
    }

    public void setCourse_describe(String course_describe) {
        this.course_describe = course_describe;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }


    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }
    public String queryTuijian() throws Exception{
        CourseManager courseManager=new CourseManager();
        List<String> s=new ArrayList<>();
        s.add("picture/Echarts3.0入门基础与实战.jpg");
        s.add("picture/Hadoop大数据平台架构与实践--基础篇.jpg");
        s.add("picture/HBase入门.jpg");
        s.add("picture/IS-IS路由协议原理和配置.jpg");
        courses=courseManager.queryBytuijian(s);

        return "tuijian";

    }

    public String queryCourse() throws Exception {
        CourseManager courseManager = new CourseManager();
        course = courseManager.queryBySource(source);

        course_source=course.getLink();
        course_name = course.getName();
        course_describe = course.getDescribe();
        if (course_type.equals("视频"))
            return "video";//表示返回的是video
        else if (course_type.equals("音频"))
            return "music";
            //return "music"表示返回的是音频
        else if (course_type.equals("PPT"))
            return "ppt";
            //return "ppt"表示返回的是视频
        else return "video";
    }

    public String queryDetails() throws Exception {
        CourseManager courseManager = new CourseManager();
        course = courseManager.queryBySource(source);
        course_name = course.getName();
        course_describe = course.getDescribe();
        DetailsManager detailsManager = new DetailsManager();
        details = detailsManager.queryDetails();
        return "success";
    }
}

