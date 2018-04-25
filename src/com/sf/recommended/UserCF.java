package com.sf.recommended;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator;
import org.apache.mahout.cf.taste.impl.neighborhood.*;
import org.apache.mahout.cf.taste.impl.recommender.*;
import org.apache.mahout.cf.taste.impl.similarity.*;
import org.apache.mahout.cf.taste.model.*;
import org.apache.mahout.cf.taste.recommender.*;
import org.apache.mahout.cf.taste.similarity.*;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import com.sf.MysqlOperate;
import com.sf.up.mysqlConnecter;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sf on 2017/7/10.
 */

public class UserCF {
    final static int NEIGHBORHOOD_NUM = 2;
    final static int RECOMMENDER_NUM = 3;
    /**
    *对所有学员进行个性化推荐
     * *推荐的结果将存入cf_result数据库
    *@author sf
    */
    public static void userCf() throws IOException, TasteException, SQLException {
        System.out.println("OK");
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setServerName("localhost");
        dataSource.setUser("sf");
        dataSource.setPassword("9536");
        dataSource.setDatabaseName("filememger");
        dataSource.setAutoClosePStmtStreams(true);
//        历史记录的数据源
        JDBCDataModel dataModel=new MySQLJDBCDataModel(dataSource,"history_record","userId","courseId","point","time");
        // String file = "src/testCF.csv";
//        File data=new File(file);
//        DataModel model = new FileDataModel(data);
        DataModel model=dataModel;
        UserSimilarity user = new PearsonCorrelationSimilarity(model);
        //System.out.println("test");
        NearestNUserNeighborhood neighbor = new NearestNUserNeighborhood(NEIGHBORHOOD_NUM, user, model);
        Recommender r = new GenericUserBasedRecommender(model, neighbor, user);
        LongPrimitiveIterator iter = model.getUserIDs();
        Connection connection=dataSource.getConnection();
        Statement statement=connection.createStatement();
        statement.execute("DELETE FROM cf_result");
        String sql;
        while (iter.hasNext()) {
            sql="";
            long uid = iter.nextLong();
            List<RecommendedItem> list = r.recommend(uid, RECOMMENDER_NUM);
            System.out.printf("uid:%s", uid);
            sql+="Insert into cf_result(userid,courseid,point) VALUES("+uid+",";
            for (RecommendedItem ritem : list) {
                String fsql=sql+ritem.getItemID()+","+ritem.getValue()+")";
                //System.out.println(fsql);
                //System.out.printf("(%s,%f)", ritem.getItemID(), ritem.getValue());
                statement.execute(fsql);
            }
            //System.out.println();
        }
    }
    public List<Integer> userCF(int userId) throws TasteException, IOException, SQLException {
        userCf();
        List<Integer> result=new ArrayList<Integer>();
        ResultSet resultSet= MysqlOperate.select(mysqlConnecter.connectToMysql(),"select courseId from cf_result where userid="+userId);
        while(resultSet.next()){
            result.add(resultSet.getInt("courseid"));
            System.out.println("******");
        }
        return result;
    }
    public static Connection connectToMysql(){
        try {
            //调用Class.forName()方法加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("成功加载MySQL驱动！");
        } catch (ClassNotFoundException e1) {
            System.out.println("找不到MySQL驱动!");
            e1.printStackTrace();
        }
        String url = "jdbc:mysql://localhost:3306/?useSSL=true";    //JDBC的URL
        Connection conn = null;
        try {
            conn= DriverManager.getConnection(url, "sf", "9536");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static void main(String[] args) throws TasteException, IOException, SQLException {
        new UserCF().userCF(1);
    }
}
