package com.sf.up;
/**
 * Created by sf on 2017/6/29.
 */
import java.io.File;
import com.opensymphony.xwork2.ActionSupport;
import com.sf.skillTree.SkillTree;
import org.apache.commons.io.FileUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class uploadFile extends ActionSupport {
    private final int FILESIZE=150;//设定允许上传的文件的最大大小
    //设定允许上传的文件类型
    private  final HashSet<String> FILETYPE=new HashSet<String>(){
        {
            add(".mp3");
            add(".mp4");
            add(".ppt");
            add(".pptx");
            add(".pdf");
        } };
    private List<File> myFile;
    private List<String> myFileContentType;
    private List<String> myFileFileName;
    private String destPath;
    private String relativePath="uploadFiledir/";//存储文件相对地址
    private String rootpath="";
    private  String error_r="";//如果出错，存放出错原因
    private String courseName;
    private String courseTag;
    private String courseDescribe;
    private String preCourse;

    public String getPreCourse() {
        return preCourse;
    }

    public void setPreCourse(String preCourse) {
        this.preCourse = preCourse;
    }

    private int courseId;
    private int fileId=0;
    private int managerID=0;
    public String execute() throws Exception {
        if (rootpath.equals("")) {
            //类所在工程根路径
            rootpath = getWorkPath();
        }
        FileJson files = new FileJson();
        /* Copy file to a safe location */
        upmysql upld = new upmysql();//实例化上传数据到数据库的类
        int i = 20;
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out;
        out = response.getWriter();
        //由于部分包导入比较麻烦，暂时采用粗暴方法
        String sStart = "{\"files\": [";
        String s = "";
        String sEnd = "]}";
        if (myFile != null) {
            for (int lnum = 0; lnum < myFile.size(); lnum++) {
                try {
                    if (!type_er(myFileFileName.get(lnum))) {
                        error_r += "file type not allowed      ";
                    } else if (myFile.get(lnum).length() > FILESIZE * 1024 * 1024) {
                        error_r += "Your file is too big";
                    }
                    else if(getCourseName().equals("null")){
                        error_r+="课程名称不可为空";
                    }
                    else {
                    /*
                    * 判断课程名是否已经在数据库中存在
                    * 返回课程Id
                    * */
                        Connection connection;
                        try {
                            connection = mysqlConnecter.connectToMysql();
                            //创建一个Statement对象
                            Statement stmt = connection.createStatement(); //创建Statement对象
                            String sql = "SELECT * FROM course WHERE name=\"" + getCourseName() + "\" and managerId="+managerID+";";//在能够获取当前用户信息后添加
                            //String sql = "insert into uploadfile(id,name,path) values(5,'hello','naem')";
                            System.out.println(sql);
                            ResultSet result = stmt.executeQuery(sql);
                            if (result.next()) {
                                courseId = result.getInt("courseid");
//fileid
                             /*   sql = "SELECT max(fileID) as maxId from file ;";//添加 where courseid=\""+courseId+"\""
                                result = stmt.executeQuery(sql);
                                result.next();
                                fileId = result.getInt("maxId") + 1;*/
                                System.out.println("fileId"+fileId);
                            } else {
                                sql = "SELECT max(courseid) AS maxId FROM course";
                                result = stmt.executeQuery(sql);
                                result.next();
                                courseId = result.getInt("maxId") + 1;
                                sql = "INSERT INTO course(managerId, name, courseid, description, tags) VALUES ("+managerID+",\"" + getCourseName() + "\"," + courseId + ",\"" + getCourseDescribe() + "\",\"" + getCourseTag() + "\");";
                                stmt.execute(sql);
                            }
                            sql = "SELECT max(fileID) as maxId from file ;";//添加 where courseid=\""+courseId+"\""
                            result = stmt.executeQuery(sql);
                            result.next();
                            fileId = result.getInt("maxId") + 1;
                            System.out.println("Tree************"+getPreCourse());
                            new SkillTree(getPreCourse(),getCourseName());
                            stmt.close();
                            connection.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                        String fileName=myFileFileName.get(lnum);
                        destPath = rootpath + getCourseName()+"\\" + getPath(myFileContentType.get(lnum) + "");//添加用户目录文件夹
                        upld.insert(fileId, myFileFileName.get(lnum), destPath,myFile.get(lnum).length(),fileName.substring(fileName.lastIndexOf("."),fileName.length()),courseId);//上传文件信息到数据库
                        System.out.println(
                                "+++++++++++++++++++++++++++++fileID"+fileId
                        );
                        File destFile = new File(destPath, myFileFileName.get(lnum));
                        FileUtils.copyFile(myFile.get(lnum), destFile);
                        VideoEdiot ve = new VideoEdiot();
                        PPT2ImgThread ppt2ImgThread=new PPT2ImgThread(myFileContentType.get(lnum) + "",destPath,myFileFileName.get(lnum));
                        Thread thread=new Thread(ppt2ImgThread);
                        thread.start();
                    }
                    if (error_r.equals("")) {
                        s = "  {\n" + "    \"name\": \"" + myFileFileName.get(lnum) + "\",\n" + "    \"size\": " + myFile.get(lnum).length() + ",\n" + "    \"url\": \"http://localhost:8080/" + relativePath + myFileFileName.get(lnum) + "\",\n" + "    \"thumbnailUrl\": \"http://localhost:8080/" + relativePath + myFileFileName.get(lnum) + "\",\n" + "    \"deleteUrl\": \"http://localhost:8080/" + relativePath + myFileFileName.get(lnum) + "\",\n" + "    \"deleteType\": \"DELETE\"\n" + "  }";
                    } else {
                        s = "  {\n" + "    \"name\": \"" + myFileFileName.get(lnum) + "\",\n" + "    \"size\": " + myFile.get(lnum).length() + ",\n" + "    \"error\": \"" + error_r + "\"" + "  }";
                    }
                    if (lnum > 0) {s = "," + s;
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    return ERROR;
                }
            }
            out.println(sStart + s + sEnd);
            out.flush();
            out.close();
            return SUCCESS;
        }
        return SUCCESS;
    }

    public List<File> getMyFile() {
        return myFile;
    }
    public void setMyFile(List<File> myFile) {
        this.myFile = myFile;
    }
    public List<String> getMyFileContentType() {
        return myFileContentType;
    }
    public void setMyFileContentType(List<String> myFileContentType) {
        this.myFileContentType = myFileContentType;
    }
    public List<String> getMyFileFileName() {
        return myFileFileName;
    }
    public void setMyFileFileName(List<String> myFileFileName) {
        this.myFileFileName = myFileFileName;
    }
    public   String getWorkPath(){
        String s = this.getClass().getResource("").getPath();
        int location=s.indexOf("out/artifacts");
        return s.substring(1,location);
    }

    /**
     * 用于判断文件类型是否符合要求
     * 输入文件名的后缀是否与允许上传类型库中的类型相匹配
     * @param fileName
     * @return
     */
    private boolean type_er(String fileName){
        return FILETYPE.contains(fileName.substring(fileName.lastIndexOf("."),fileName.length()));
    }
    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseTag() {
        return courseTag;
    }

    public void setCourseTag(String courseTag) {
        this.courseTag = courseTag;
    }

    public String getCourseDescribe() {
        return courseDescribe;
    }

    public void setCourseDescribe(String courseDescribe) {
        this.courseDescribe = courseDescribe;
    }

    /**
     *判断上传文件的类型，返回其应该存储的文件路径
     * @param fileType
     * @return
     */
    private String getPath(String fileType){
        if(fileType.equals("application/vnd.openxmlformats-officedocument.presentationml.presentation")||fileType.equals("application/vnd.ms-powerpoint")){
            return relativePath+"PPT\\";
        }
        else if(fileType.equals("video/mp4")){
            return relativePath+"VIDEO\\";
        }
        else if(fileType.equals("audio/mpeg")){
            return relativePath+"AUDIO\\";
        }
        else
            return relativePath+"Other\\";
    }



}
class PPT2ImgThread implements Runnable{
    private String fileType;
    private String filePath;
    private String fileName;
    public PPT2ImgThread(String fileType,String filePath,String fileName) {
        this.fileName=fileName;
        this.filePath=filePath;
        this.fileType=fileType;
    }

    public boolean translatePPT(String fileType, String filePath, String fileName) {
        boolean result = false;
        if (fileType.equals("application/vnd.openxmlformats-officedocument.presentationml.presentation")) {
            return new PPT2Img().ppt2img(filePath + fileName, filePath + fileName + "IMG" + "/");
        } else if (fileType.equals("application/vnd.ms-powerpoint")) {
            return new PPT2Img().pptx2img(filePath + fileName, filePath + fileName + "IMG" + "/");
        }
        return result;
    }

    @Override
    public void run() {
        translatePPT(fileType,filePath,fileName);
    }
}