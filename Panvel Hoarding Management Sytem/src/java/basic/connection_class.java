/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basic;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @author shark
 */
public class connection_class {
    public static Connection getConnection() {
		//Properties props = new Properties();
		//FileInputStream fis = null;
		Connection con = null;
		try {
			//fis = new FileInputStream("C:/Users/shark/Documents/NetBeansProjects/panvel_hoarding_1/web/WEB-INF/jdbc.properties");
			//props.load(fis);

			// load the Driver Class
//			Class.forName(props.getProperty("DB_DRIVER_CLASS"));
//                        String db=props.getProperty("DB_URL")+";user="+props.getProperty("DB_USERNAME")+";password="+props.getProperty("DB_PASSWORD");
//			// create the connection now
//			con = DriverManager.getConnection(db);
                         Class.forName("com.mysql.jdbc.Driver");  
                         con=DriverManager.getConnection("jdbc:mysql://localhost:3307/panvel","root","root"); 
                         

                        System.out.println("Connection Created");
                        return con;
                } catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
}
