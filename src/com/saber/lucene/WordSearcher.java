package com.saber.lucene;

import com.saber.action.Comment;
import com.saber.pojo.CommentInfo;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.wltea.analyzer.lucene.IKAnalyzer;

import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Saber on 2017/8/31.
 */
public class WordSearcher {
    public List<CommentInfo> search(String indexDir, String sql) throws IOException, ParseException {
        List<CommentInfo> courses=new ArrayList();

        Directory directory= FSDirectory.open(Paths.get(indexDir));
        DirectoryReader reader=DirectoryReader.open(directory);
        IndexSearcher indexSearcher=new IndexSearcher(reader);
        Analyzer analyzer=new IKAnalyzer(true);

        //查找的是 address这个字段  出现过   String q   的文档。
        //这里还要分词的原因是:analyzer需要处理sql里面的词。
        QueryParser queryParser=new QueryParser("s_comment",analyzer);
        Query query=queryParser.parse(sql);

        TopDocs topDocs=indexSearcher.search(query,100);
        System.out.println("查到的文档共有"+topDocs.totalHits);
        ScoreDoc[] scoreDocs=topDocs.scoreDocs;
        for (ScoreDoc scoreDoc:scoreDocs) {
            CommentInfo course=new CommentInfo();
            Document document=indexSearcher.doc(scoreDoc.doc);
            course.setName(document.get("s_name"));
            course.setComment(document.get("s_comment"));
            course.setDate(document.get("s_date"));
            course.setGood(document.get("s_good"));
            courses.add(course);
        }
        directory.close();
        reader.close();
        return courses;
    }
}
