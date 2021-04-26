package Utility;

import java.sql.Connection;

import java.sql.Statement;
import java.sql.DriverManager;

import Exceptions.ConnectionFailedException;

public class DButil {

	private static final String URL = "jdbc:mysql://localhost:3306/virtual_classroom";
	private static final String USER_NAME = "root";
	private static final String PASSWORD = "21497518";

	public static Connection getConnection() {

		Connection connection = null;

		try {
			 Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
	}

	public static void closeResource(Connection connection) throws ConnectionFailedException {
		if (connection != null) {
			try {
				connection.close();
			} catch (Exception e) {
				throw new ConnectionFailedException(e);
			}

		}
	}

	public static void closeResource(Statement statement) throws ConnectionFailedException {
		if (statement != null) {
			try {
				statement.close();
			} catch (Exception e) {
				throw new ConnectionFailedException(e);
			}

		}
	}

}
