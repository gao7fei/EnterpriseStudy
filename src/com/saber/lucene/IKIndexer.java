package com.saber.lucene;


import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.saber.databaseUtil.DBUtils;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.wltea.analyzer.lucene.IKAnalyzer;

import java.io.IOException;
import java.nio.file.Paths;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Saber on 2017/5/19.
 */
public class IKIndexer {//生成索引，后期需要线程定期调用main函数
    /**
     * 加载扩展词典：>new_ext.dic;
     * 加载扩展停止词典：new_stopwords.dic
     *一定要看到输出里有这个 才算成功
     */
    public void index(String indexDir,String sql){
        //连接数据库，获得数据  存在resultSet之中
        Connection connection=null;
        Statement statement= null;
        ResultSet resultSet=null;
        try {
            connection= (Connection) DBUtils.getConnection();
            statement = (Statement) connection.createStatement();
            resultSet=statement.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        //使用IK analyser分词，以及创建索引
        Directory directory= null;
        IndexWriter indexWriter=null;
        try {
            directory = FSDirectory.open(Paths.get(indexDir));
            Analyzer analyzer=new IKAnalyzer(true);
            IndexWriterConfig indexWriterConfig=new IndexWriterConfig(analyzer);
            indexWriterConfig.setOpenMode(IndexWriterConfig.OpenMode.CREATE);
            indexWriter=new IndexWriter(directory,indexWriterConfig);

            while (resultSet.next()){
                Document document=new Document();
                document.add(new TextField("s_file_source",resultSet.getString("cover"), Field.Store.YES));
                document.add(new TextField("s_file_describe",resultSet.getString("description"), Field.Store.YES));
                document.add(new TextField("s_file_key",resultSet.getString("tags"), Field.Store.YES));
                document.add(new TextField("s_file_name",resultSet.getString("name"), Field.Store.YES));
                System.out.println(resultSet.getString("name"));
                //写入索引
                indexWriter.addDocument(document);
            }
            //  关闭writer   完成segment
            indexWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static String indexDir_ik="lucene_index";
    private static String sql="select * from course";
    public static void main(String[] args) {
        IKIndexer ikIndexer=new IKIndexer();
        ikIndexer.index(indexDir_ik,sql);
        System.out.println("_________________ik分词器完成索引创建__________________");
    }
}
