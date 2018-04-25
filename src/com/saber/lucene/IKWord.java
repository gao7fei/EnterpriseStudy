package com.saber.lucene;

import org.apache.lucene.queryparser.classic.ParseException;
import java.io.*;
import java.util.*;

/**
 * Created by Saber on 2017/7/9.
 */
public class IKWord {//获取词频热度，后期需要与推荐算法结合
    public static String indexDir_ik="F:\\服务外包比赛\\整合1\\EnterpriseStudy2\\EnterpriseStudy\\lucene_word_index";

    public String search(String indexDir) throws IOException, ParseException {
        String str =new String();
        try{
            File file = new File("F:\\服务外包比赛\\整合1\\EnterpriseStudy2\\EnterpriseStudy\\src\\new_ext.dic");
            BufferedReader br = new BufferedReader(new FileReader(file));//构造一个BufferedReader类来读取文件
            String s = null;
            int i=0;
            while((s = br.readLine())!=null&&s!=""){//使用readLine方法，一次读一行
                IKSearcher ikSearcher=new IKSearcher();
                int i1=ikSearcher.search(indexDir_ik,s);
                if (i<i1){
                    str=s;
                    i=i1;
                }
            }
            br.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return str;
    }


    public static void main(String[] args) throws UnsupportedEncodingException {
        try {
            //可以先将所获得的 信息 通过一个bean的数组保存
            //由于不需要有太多的数据  只需要通过加权后  找到最符合的数据即可
            (new IKWord()).search(indexDir_ik);
            } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }

    }
}
class MapKeyComparator implements Comparator<Long>{
    public int compare(Long str1, Long str2) {
        return str2.compareTo(str1);
    }
}
