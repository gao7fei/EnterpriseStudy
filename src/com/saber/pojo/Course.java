package com.saber.pojo;

/**
 * Created by Saber on 2017/7/3.
 */
public class Course {//课程
    private String type;//课程类型
    private String name;//课程名
    private String describe;//课程描述
    private String key;//课程关键字
    private String link;//课程的链接
    private String source;//课程图片的链接

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }



    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }
}
