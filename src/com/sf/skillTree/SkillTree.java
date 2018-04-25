package com.sf.skillTree;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.List;
import com.sf.skillTree.*;

import com.sf.up.mysqlConnecter;
/**
 * Created by sf on 2017/7/10.
 * 用于向技能树中添加节点
 * 其中孩子节点只能为一个值，形如 "23" 的字符串
 * 父节点可以为多个值，输入形式为： "12,45,1,56" 长度不限
 * 说明在学习ID为23的课程前，建议首先学习ID为12,45,1,56的课程
 * 在推荐算法中，当用户学习完12课程时，将向用户推荐学习23课程
 */
public class SkillTree {
    String[] courseName;
    Connection conn;
    /**
    *构建当前课程的课程树
    *@param courseName 课程要求的先修课程
     *                  @param currentName 本课程的名字
    *@author sf
    */

    public SkillTree(String courseName,String currentName) throws SQLException {
        conn=mysqlConnecter.connectToMysql();
        this.courseName=courseName.split(";");
        int childId=courseName2CourseID(currentName);
        int [] fatherId=courseName2CourseID(this.courseName);
        for(int i:fatherId){
            addTreeNode(i,childId);
        }
    }



    /**
    *将课程的名字转化为课程的ID编号
    *@param courseName 课程的名字
    *@return 课程的id编号
    *@author sf
    */

    public int[] courseName2CourseID(String[] courseName) throws SQLException {
            int[] id=new int[courseName.length];
        System.out.println(Arrays.toString(courseName));
            for(int i=0;i<courseName.length;i++){
                id[i]=courseName2CourseID(courseName[i]);
            }
            return id;
    }
    public int courseName2CourseID(String courseName) throws SQLException {
        Statement stat=conn.createStatement();
        String sql="SELECT courseid from course where name=\""+courseName+"\"";
        System.out.println(sql);
        ResultSet resultSet=stat.executeQuery(sql);
        int result=-1;
        while (resultSet.next()){
            result=resultSet.getInt("courseid");
            System.out.println(result+"resulkt");
        }
        return result;
    }


    public int addTreeNode(String fatherNode,String childNode) throws SQLException {
        String[] s=fatherNode.split(",");
        int child=Integer.parseInt(childNode);
        for(int i=0;i<s.length;i++){

            int a=Integer.parseInt(s[i]);
            addTreeNode(a,child);

        }
        return 0;
    }

    /**
    * 用于向树中添加单一节点，
    * @param fatherNode
    * 父节点，即在学习子节点之前必须先修的课程
    * @param childNode
    * 子节点，在学习父节点后可继续学习的课程
    * @return 0:正常结束
    * */
    public int addTreeNode(int fatherNode,int childNode ) throws SQLException {
        Statement statement=conn.createStatement();
        /*
        * 用于检测父节点是否合法*/
//        String sql="select * from uploadfile where father="+fatherNode+";";
//        ResultSet resultSet=statement.executeQuery(sql);

        String sql="select * from skilltree where father="+fatherNode+" and child="+childNode+";";
        ResultSet resultSet=statement.executeQuery(sql);
        //判断节点是否已经存在于数据库中，避免重复添加
        if(resultSet.next()){
            return 0;
        }
        else{
            sql="insert into skilltree values("+fatherNode+","+childNode+");";
            System.out.println(sql);
            statement.execute(sql);
        }
        return 0;
    }

    public static void main(String[] args) throws SQLException {
        String s="hello;hello1;hello2;hello6";
        new SkillTree(s,"test1");
    }
}
