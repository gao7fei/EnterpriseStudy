package com.sf.filememger;

import com.sf.up.uploadFile;
import org.apache.struts2.interceptor.ApplicationAware;
import com.sf.up.mysqlConnecter;

import java.io.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.sf.up.PPT2Img;

/**
 * 将文件信息传递到前端供前端浏览
 * 文件信息为已上传文件
 * 本类返回的文件信息是一个课程中所包含的所有课程文件的信息
 * 用于在前端文件信息的二级列表中列出
 * 一级列表为课程名
 * Created by sf on 2017/7/6.
 */
public class putFileInfo implements ApplicationAware{
    public String getCourseID() {
        return courseID;
    }

    public void setCourseID(String courseID) {
        this.courseID = courseID;
    }

    private String courseID;

    private Map<String, Object> application;

    @Override
    public void setApplication(Map<String, Object> map) {
        this.application=map;
    }
    public String fileInof() throws SQLException {
        int getcourseId=0;
        uploadFile u=new uploadFile();
        String path=u.getWorkPath();
        path+="/test.txt";
        System.out.println(path);
        File file=new File(path);
        file.setWritable(true);
        file.setReadable(true);
        try {
            FileReader fr=new FileReader(file);
            Connection conn= mysqlConnecter.connectToMysql();
            Statement stat=conn.createStatement();
            List<FileInfo> fileInfoList=new ArrayList<>();

            while((getcourseId=(int)fr.read())!=-1){


       // System.out.println(getcourseId+"*************************************");

        //System.out.println(getCourseID());

        String sql="select * from file where courseid="+getcourseId+" order by fileid";
        System.out.println(sql);
        ResultSet result=stat.executeQuery(sql);
        while (result.next()){
            FileInfo fileInfo=new FileInfo();//不能放在外面
            fileInfo.setFileId(result.getInt("fileid"));
            System.out.println(result.getString("filename"));
            fileInfo.setFileName(result.getString("filename"));
            fileInfo.setFilePath(result.getString("path"));
            fileInfo.setFileSize(result.getInt("fileSize"));
            fileInfo.setFileType(result.getString("fileType"));
            fileInfo.setCourseId(getcourseId);
            System.out.println(result.getString("fileType"));
            fileInfoList.add(fileInfo);
        }
fr.read();
            }

            application.put("info",fileInfoList);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "success";
    }
    public static void removeFirstLine(File file){
        file.setReadable(true);
        file.setWritable(true);
        List<String> line=new ArrayList<>();
        try {
            FileReader fr=new FileReader(file);
            BufferedReader bfr=new BufferedReader(fr);
            if(bfr.readLine()!=null){
                String l;
                while((l=bfr.readLine())!=null){
                    line.add(l);
                }
            }
            FileWriter fw=new FileWriter(file);
            for(int i=0;i<line.size();i++){
                if(i==0){
                    fw.write(line.get(i));
                }
                else
                {
                    fw.append(line.get(i));
                }
                fw.append('\n');
            }
            fw.flush();
            fw.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
