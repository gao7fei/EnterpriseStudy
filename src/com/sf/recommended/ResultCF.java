package com.sf.recommended;

import org.apache.mahout.cf.taste.common.TasteException;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by sf on 2017/8/18.
 * 调用系统中的各个推荐算法并整理出最终的推荐结果
 */
public class ResultCF {
//    推荐系统所应该推荐的课程的最大数量
    public final static int COURSE_NUM=20;
//    被推荐对象的id,在执行推荐算法前，该变量必须首先被定义
    private int user_id;
//    当前用户基于课程推荐的权值
    private double itemCF_Power=1;
//    当前用户基于用户推荐的权值
    private double userCF_Power=1;
//    当前用户基于新课程推荐的权值
    private double newCourseCF_power=1;
/*
* @return 被推荐对象的Id*/
    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    public void getResult() throws SQLException, IOException, TasteException {
//        获取各种推荐模式的推荐结果
        ItemCF itemCF=new ItemCF();
        List<Integer> item=itemCF.getResult(getUser_id());
        UserCF userCF=new UserCF();
        List<Integer> user=userCF.userCF(getUser_id());
        NewCourseCF newCourseCF=new NewCourseCF();
        List<Integer> newCourse=newCourseCF.getResult();
        Integer[] aItem=new Integer[item.size()];
                item.toArray(aItem);
        Integer[] aUser=new Integer[user.size()];
                user.toArray(aUser);
        Integer[] aNewCourseCF=new Integer[newCourse.size()];
                newCourse.toArray(aNewCourseCF);
//        System.out.println(aItem.length);
//        System.out.println(aUser.length);
//        System.out.println(aNewCourseCF.length);
    }
    public static void main(String[] args) throws SQLException, IOException, TasteException {
        new ResultCF().getResult();
    }
}
