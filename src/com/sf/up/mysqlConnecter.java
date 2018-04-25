package com.sf.up;

import java.sql.Connection;

import com.sf.MysqlOperate;

/**
 * Created by sf on 2017/7/6.
 */
public class mysqlConnecter {
     public static Connection connectToMysql(){
         return new MysqlOperate().connectToMysql("sf","9536","filememger");
     }
}
