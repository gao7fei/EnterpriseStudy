package com.saber.action;

import com.mysql.jdbc.Statement;
import com.saber.databaseUtil.DBUtils;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by Saber on 2017/6/29.
 */
public class Comment {
    /**
     * 评论的action
     */
    private String commentContent;//评论内容
    private String commentTime;//评论发布时间
    private String commentName;//发布评论的人
    private String commentGood;//点赞次数

    //在后期数据库建立时，还将加入评论所在课程。（不同评论对应不同课程）commentClassId 外键
    //在后期数据库建立时，还将假如评论的类型：提问还是讨论。commentType

    public String getCommentGood() {
        return commentGood;
    }

    public void setCommentGood(String commentGood) {
        this.commentGood = commentGood;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public String getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(String commentTime) {
        this.commentTime = commentTime;
    }

    public String getCommentName() {
        return commentName;
    }

    public void setCommentName(String commentName) {
        this.commentName = commentName;
    }


    public String execute(){//评论插入数据库
        try {
            Connection connection= DBUtils.getConnection();
            Statement statement=(Statement) connection.createStatement();
            String sql="insert into commentinfo(name,comment,date,good) VALUES (\""
                    +getCommentName()+"\",\""+getCommentContent()+"\",\""+getCommentTime()+"\",\""+0+"\")";
            statement.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "success";
    }
}
