package com.sf.filememger;

/**
 * 课程信息的get set 函数
 * 用于在couse类中向前端发送课程信息
 * Created by sf on 2017/7/6.
 */
public class CourseGC {
    private int user;
    private String course;
    private int courseId;
    private String descrbie;
    private String tag;
    private String data;

    public String getData() {
        return data;
    }
    public void setData(String data) {
        this.data = data;
    }
    public int getUser() {
        return user;
    }
    public void setUser(int user) {
        this.user = user;
    }
    public String getCourse() {
        return course;
    }
    public void setCourse(String course) {
        this.course = course;
    }
    public int getCourseId() {
        return courseId;
    }
    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }
    public String getDescrbie() {
        return descrbie;
    }
    public void setDescrbie(String descrbie) {
        this.descrbie = descrbie;
    }
    public String getTag() {
        return tag;
    }
    public void setTag(String tag) {
        this.tag = tag;
    }
}
