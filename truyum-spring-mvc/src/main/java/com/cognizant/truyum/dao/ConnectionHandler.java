package com.cognizant.truyum.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionHandler {

	public static Connection connection = null;
	private static Properties props = new Properties();

	public static Connection getConnection() throws SQLException, ClassNotFoundException {

		try {
			
			FileInputStream fis = new FileInputStream("C:\\truyum-spring-mvc\\src\\main\\resources\\connection.properties");
			props.load(fis);
			Class.forName(props.getProperty("driver"));
			System.out.println(props.getProperty("connection-url"));
//			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/lch_marketplace_2", props.getProperty("user"),
//					props.getProperty("password"));
			connection = DriverManager.getConnection(props.getProperty("connection-url"), props.getProperty("user"),
                    props.getProperty("password"));
		
		} catch (IOException e) {
			e.printStackTrace();
		
		}

		return connection;
	}
}