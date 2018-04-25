package com.sf.up;

import java.io.File;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http   .HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by sf on 2017/7/2.
 *
 */
public class deleteFile extends ActionSupport{

    public String execute() throws Exception{
        System.out.println("it's been used");
        HttpServletRequest request= ServletActionContext.getRequest();

        HttpServletResponse response= ServletActionContext.getResponse();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        String[] list=request.getParameterValues("delete");
        System.out.println(list[0]);
        return SUCCESS;
    }
    /*
    * @return 1表示删除成功，0表示删除失败
    * */
    public int deleteFile(int file_id) throws Exception {

        try {
            //调用Class.forName()方法加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            //new oracle.jdbc.driver.OracleDriver();
            System.out.println("成功加载MySQL驱动！");
        } catch (ClassNotFoundException e1) {
            System.out.println("找不到MySQL驱动!");
            e1.printStackTrace();
        }
        String url = "jdbc:mysql://localhost:3306/file?useSSL=true";    //JDBC的URL
        //调用DriverManager对象的getConnection()方法，获得一个Connection对象
        Connection conn;
        try {
            conn = DriverManager.getConnection(url, "sf", "9536");
            //创建一个Statement对象
            System.out.print("成功连接到数据库！");
            String sql = "SELECT * FROM uploadfile";
            System.out.println(sql);
            PreparedStatement pst = null;
            //String sql = "insert into uploadfile(id,name,path) values(5,'hello','naem')";
            // 定义一个list用于接受数据库查询到的内容
            List<String> file_name = new ArrayList<String>();
            List<String> file_path= new ArrayList<String>();
            Statement stmt = conn.createStatement(); //创建Statement对象
            try {
                pst = (PreparedStatement) conn.prepareStatement(sql);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    // 将查询出的内容添加到list中，其中userName为数据库中的字段名称
                    file_name.add(rs.getString("name"));
                    file_path.add(rs.getString("path"));
                }
                for(int i=0;i<file_name.size();i++){
                    String file=file_path.get(i)+file_name.get(i);
                    System.out.println(file);
                    File f_delete=new File(file);
                    if(f_delete.delete()){
                        stmt.execute("DELETE FROM uploadfile WHERE id=\""+file_id+"\"");
                        return 1;
                    }
                    else
                        return 0;//删除失败
                }
            } catch (Exception e) {
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return 0;
    }
}
