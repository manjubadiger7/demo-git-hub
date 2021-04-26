package DAO;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;
import java.util.DuplicateFormatFlagsException;
import java.util.List;

import Exceptions.BikeDAOExceptions;
import Exceptions.ConnectionFailedException;
import Utility.DButil;
import model.Result;
import model.Student;

public class StudentDaoImple implements StudentDao {

	public void registerStudent(Student student) throws SQLException, BikeDAOExceptions {

		Statement statement = null;

		Connection connection = DButil.getConnection();

		String query = "INSERT INTO student(name, age, email, city, state, country, zipcode, user_name, password) VALUES('"
				+ student.getName() + "'," + student.getAge() + ",'" + student.getEmail() + "','" + student.getCity()
				+ "','" + student.getState() + "','" + student.getCountry() + "','" + student.getZipcode() + "','"
				+ student.getUserName() + "','" + student.getPassword() + "');";

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

	public boolean checkStudent(String userName, String password) throws BikeDAOExceptions {

		Statement statement = null;

		boolean flag = false;

		Connection connection = DButil.getConnection();

		Student student = new Student();

		String query = "select * from student where user_name='" + userName + "' and  password='" + password + "' ;";

		try {

			statement = connection.createStatement();

			ResultSet result = statement.executeQuery(query);

			if (result.next()) {
				flag = true;
			} else {
				flag = false;
			}

		} catch (SQLException e) {
			throw new BikeDAOExceptions(e.getMessage());
		} finally {
			try {
				DButil.closeResource(statement);
				DButil.closeResource(connection);

			} catch (ConnectionFailedException sqlException) {
				throw new BikeDAOExceptions("Something went wrong in getting bikes", sqlException);
			}
		}
		return flag;

	}

//	public List<Result> displayResults() throws BikeDAOExceptions {
//
//		List<Result> studentResultList = new ArrayList<>();
//
//		Statement statement = null;
//
//		Connection connection = DButil.getConnection();
//
//		String query = "select subject.name, results.total_marks, results.acheived_marks, results.grades from results inner join subject on results.subject_id = subject.id where results.student_id=1;";
//
//		try {
//
//			statement = connection.createStatement();
//
//			ResultSet result = statement.executeQuery(query);
//
//			while (result.next()) {
//				Result results = new Result();
//
//				results.setName(result.getString("name"));
//				results.setTotalMarks(result.getInt("total_marks"));
//				results.setAcheivedMarks(result.getInt("acheived_marks"));
//				results.setGrades(result.getString("grades"));
//
//				studentResultList.add(results);
//			}
//
//		} catch (SQLException e) {
//			throw new BikeDAOExceptions(e.getMessage());
//		} finally {
//			try {
//				DButil.closeResource(statement);
//				DButil.closeResource(connection);
//
//			} catch (ConnectionFailedException sqlException) {
//				throw new BikeDAOExceptions("Something went wrong in getting bikes", sqlException);
//			}
//		}
//		return studentResultList;
//
//	}

	@Override
	public List<Student> retriveStudents() throws BikeDAOExceptions {

		List<Student> studentList = new ArrayList<>();

		Statement statement = null;

		Connection connection = DButil.getConnection();

		String query = "select * from student;";
		try {

			statement = connection.createStatement();

			ResultSet result = statement.executeQuery(query);

			while (result.next()) {
				Student student = new Student();

				student.setName(result.getString("name"));
				student.setAge(result.getString("age"));
				student.setEmail(result.getString("city"));
				student.setCity(result.getString("state"));
				student.setState(result.getString("country"));
				student.setZipcode(result.getString("zipcode"));
				student.setUserName(result.getString("user_name"));
				student.setPassword(result.getString("password"));

				studentList.add(student);
			}

		} catch (SQLException e) {
			throw new BikeDAOExceptions(e.getMessage());
		} finally {
			try {
				DButil.closeResource(statement);
				DButil.closeResource(connection);

			} catch (ConnectionFailedException sqlException) {
				throw new BikeDAOExceptions("Something went wrong in getting bikes", sqlException);
			}
		}
		return studentList;

	}

	public void delete(int id) throws SQLException {

		Statement statement = null;

		Connection connection = DButil.getConnection();

		String sql = "delete from results where student_id=?";

		PreparedStatement ps1 = connection.prepareStatement(sql);

		ps1.setInt(1, id);

		ps1.executeUpdate();

		String sql2 = "delete from student where id=?";

		PreparedStatement ps2 = connection.prepareStatement(sql2);
		ps2.setInt(1, id);

		ps2.executeUpdate();

		ps1.close();
		ps2.close();
		connection.close();

	}

	private static java.sql.Date getCurrentDate() {
		java.util.Date today = new java.util.Date();
		return new java.sql.Date(today.getTime());
	}

	private static Time getCurrentTime() {
		java.util.Date today = new java.util.Date();
		return new java.sql.Time(today.getTime());
	}

	public void addComment(String comment) throws SQLException {

		Connection connection = DButil.getConnection();

		String sql = "insert into comments (description,comment_time,comment_date)values(?,?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, comment);
		ps.setTime(2, getCurrentTime());
		ps.setDate(3, getCurrentDate());

		ps.executeUpdate();

		ps.close();

		connection.close();

	}
	
	
	public List<Student> forgotPassword(String userName) throws SQLException{
		
		List<Student> studentList = new ArrayList<>();
		
		Connection connection = DButil.getConnection();
		
		String sql = "select * from student where user_name = ?";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, userName);
		
		ResultSet results = ps.executeQuery();
		
		while ( results.next()) {
			
			Student student = new Student();
			
			student.setName(results.getString("name"));
			student.setAge(results.getString("age"));
			student.setEmail(results.getString("city"));
			student.setCity(results.getString("state"));
			student.setState(results.getString("country"));
			student.setZipcode(results.getString("zipcode"));
			student.setUserName(results.getString("user_name"));
			student.setPassword(results.getString("password"));
			
			
			studentList.add(student);
			
			
		}
		
		ps.close();
		connection.close();
		return studentList;
		
	}
}
