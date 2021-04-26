package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.DuplicateFormatFlagsException;

import Exceptions.BikeDAOExceptions;
import Exceptions.ConnectionFailedException;
import Utility.DButil;
import model.Admin;
import model.Staff;
import model.Student;

public class AdminDAOImple implements AdminDAO {

	public void registeradmin(Admin admin) throws SQLException, BikeDAOExceptions {

		Statement statement = null;

		Connection connection = DButil.getConnection();

		String query = "INSERT INTO admin(name, age, email, city, state, country, zipcode, user_name, password) VALUES('"
				+ admin.getName() + "'," + admin.getAge() + ",'" + admin.getEmail() + "','" + admin.getCity() + "','"
				+ admin.getState() + "','" + admin.getCountry() + "','" + admin.getZipcode() + "','"
				+ admin.getUserName() + "','" + admin.getPassword() + "');";

		try {
			statement = connection.createStatement();

			statement.execute(query);
		} catch (SQLException e) {
			throw new BikeDAOExceptions(e.getMessage());
		} catch (DuplicateFormatFlagsException e) {
			throw new BikeDAOExceptions(e.getMessage());
		}

		finally {
			try {
				DButil.closeResource(statement);
				DButil.closeResource(connection);

			} catch (ConnectionFailedException sqlException) {
				throw new BikeDAOExceptions("Something went wrong in getting bikes", sqlException);
			}

		}

	}

	public boolean checkadmin(String userName, String password) throws SQLException {

		Statement statement = null;

		Connection connection = DButil.getConnection();

		boolean flag = false;

		String query = "select * from admin where user_name='" + userName + "' and password='" + password + "' ;";
		// String query = "select password from admin where username=? and password =
		// ?";

//		PreparedStatement ps = connection.prepareStatement(query);
//		ps.setString(1, userName);
//		ps.setString(2, password);

		statement = connection.createStatement();

		ResultSet result = statement.executeQuery(query);
		if (result.next()) {
			flag = true;
		} else {
			flag = false;
		}

		result.close();
		connection.close();
		statement.close();

//			statement = connection.createStatement();
//
//			ResultSet result = statement.executeQuery(query);

		return flag;

	}
	
	public void delete(int id) throws SQLException {
		
		Connection connection = DButil.getConnection();
		
		String sql = "delete from staff where id=?";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		
		ps.setInt(1, id);
		
		ps.executeUpdate();
		
		ps.close();
		connection.close();
		
	}
	
	public void addStaff(Staff staff) throws SQLException {
		
		Connection connection = DButil.getConnection();
			
		String sql = "insert into staff (name, age, email, city, state, country, zipcode, user_name, password) values (?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, staff.getName());
		ps.setString(2, staff.getAge());
		ps.setString(3, staff.getEmail());
		ps.setString(4, staff.getCity());
		ps.setString(5, staff.getState());
		ps.setString(6, staff.getCountry());
		ps.setString(7, staff.getZipcode());
		ps.setString(8, staff.getUserName());
		ps.setString(9, staff.getPassword());
		
		ps.executeUpdate();
		
		ps.close();
		connection.close();
		
		
	}
	
	public void addStudent(Student student) throws SQLException {
		
		Connection connection = DButil.getConnection();
		
		String sql = "insert into student (name, age, email, city, state, country, zipcode, user_name, password) values (?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, student.getName());
		ps.setString(2, student.getAge());
		ps.setString(3, student.getEmail());
		ps.setString(4, student.getCity());
		ps.setString(5, student.getState());
		ps.setString(6, student.getCountry());
		ps.setString(7, student.getZipcode());
		ps.setString(8, student.getUserName());
		ps.setString(9, student.getPassword());
		
		ps.executeUpdate();
		
		ps.close();
		connection.close();
		
	}
	
}
