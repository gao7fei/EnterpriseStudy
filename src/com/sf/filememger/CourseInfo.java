package com.sf.filememger;

import com.sf.up.mysqlConnecter;
import com.sf.up.uploadFile;
import org.apache.struts2.interceptor.ApplicationAware;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by sf on 2017/7/6.
 */
public class CourseInfo implements ApplicationAware {

    private Map<String, Object> application;

    @Override
    public void setApplication(Map<String, Object> map) {
        this.application=map;
    }
    public String fileInof() throws SQLException {
        Connection conn= mysqlConnecter.connectToMysql();        Statement stat=conn.createStatement();
        String sql="select * from course order by time DESC ";
        ResultSet result=stat.executeQuery(sql);
        List<CourseGC> fileInfoList=new ArrayList<CourseGC>();
        int courseId=0;
        uploadFile u=new uploadFile();
        String path=u.getWorkPath();
        path+="/test.txt";
        File file=new File(path);
        file.setWritable(true);
        file.setReadable(true);
        try {

            FileWriter fw=new FileWriter(file);
        while (result.next()){
            CourseGC course=new CourseGC();
            course.setUser(result.getInt("managerid"));
            course.setCourse(result.getString("name"));
            //System.out.println(result.getString("name"));
            course.setDescrbie(result.getString("description"));
            course.setCourseId(result.getInt("courseid"));
            course.setData(result.getString("time"));
            course.setTag(result.getString("tags"));
            fileInfoList.add(course);

                fw.write(result.getInt("courseid"));
                fw.write('\n');

        }
            fw.flush();
            fw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        application.put("key",fileInfoList);
        return "success";
    }
}