package com.monnami;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCConn {
	
		private static Connection conn=null;
		
		public static Connection getConnection(){
			
			String url="jdbc:oracle:thin:@localhost:1521:XE";
			String user="monnami";
			String pwd="monnami";
			
			if(conn==null){
				try {
					
					Class.forName("oracle.jdbc.driver.OracleDriver");
					conn=DriverManager.getConnection(url, user, pwd);
					
					
					
					
				} catch (Exception e) {
					System.out.println(e.toString());
				}
			}
			return conn;
		}
		
		public static void close(){
			
			if(conn==null){
				return ;
			}
			
			try {
				if(!conn.isClosed()){
					conn.close();
				}
				
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			conn=null;
		}


}
