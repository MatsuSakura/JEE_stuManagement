//package com.yzk.student.util;
//
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.ResultSetMetaData;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.LinkedHashMap;
//import java.util.List;
//import java.util.Map;
//import java.util.Properties;
//
//import com.yzk.student.model.Student;
//
//import java.io.FileInputStream;
//
//import javax.sql.DataSource;
//public class JDBCUtil {
//    private static DataSource ds=null;
//    //�������ӳ�
//    static {
//        try {
//            //�����ļ�
//            Properties p = new Properties();
//            FileInputStream filein = new FileInputStream("resource/db.properties");
//            p.load(filein);
//            ds=DruidDataSourceFactory.createDataSource(p);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//
//    //dbutils����һ�����Ӷ���
//    public static QueryRunner getQR() {
//        return new QueryRunner(ds);
//    }
//
//}