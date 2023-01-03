package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {


    public static Connection getConn(){  
        Connection conn=null;  
        try{  
        	Class.forName("com.mysql.jdbc.Driver");
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/eblogs","root","12345pnn&"); //2 
        }
        catch(Exception e)
        {System.out.println(e);}  
        return conn;  
    } 
}
