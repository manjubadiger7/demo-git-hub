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
import model.Result;
import model.Staff;

public class StaffDAOImple implements StaffDAO {

	public void registerStaff(Staff staff) throws SQLException, BikeDAOExceptions {

		Statement statement = null;

		Connection connection = DButil.getConnection();

		String query = "INSERT INTO staff(name, age, email, city, state, country, zipcode, user_name, password) VALUES('"
				+ staff.getName() + "'," + staff.getAge() + ",'" + staff.getEmail() + "','" + staff.getCity() + "','"
				+ staff.getState() + "','" + staff.getCountry() + "','" + staff.getZipcode() + "','"
				+ staff.getUserName() + "','" + staff.getPassword() + "');";

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

	public boolean checkStaff(String userName, String password) throws BikeDAOExceptions {

		Statement statement = null;

		boolean flag = false;

		Connection connection = DButil.getConnection();

		Staff staff = new Staff();

		String query = "select * from staff where user_name='" + userName + "' and  password='" + password + "' ;";

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

	public void addResults(Result result) throws SQLException {

		Statement statement = null;

		Connection connection = DButil.getConnection();

//		String query = "insert into results(subject_id, student_id, total_marks, acheived_marks, grades) values ("
//				+ result.getSubjectId() + "," + result.getStudentId() + "," + result.getTotalMarks() + ","
//				+ result.getAcheivedMarks() + ",'" + result.getGrades() + "';";
		String sql = "insert into results(subject_id, student_id, total_marks, acheived_marks, grades) values(?,?,?,?,?)";

//		statement = connection.createStatement();
//		statement.execute(query);

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, result.getSubjectId());

		ps.setInt(2, result.getStudentId());
		ps.setInt(3, result.getTotalMarks());
		ps.setInt(4, result.getAcheivedMarks());
		ps.setString(5, result.getGrades());

		ps.executeUpdate();
		connection.close();

	}

	public void deleteResult(int id) throws SQLException {

		Connection connection = DButil.getConnection();
		String sql = "delete from results where student_id=?";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, id);

		ps.executeUpdate();
		ps.close();
		connection.close();
	}

	public void editResult(Result result) throws SQLException {

		Connection connection = DButil.getConnection();

		String sql = "update results set total_marks=?, acheived_marks=?, grades=? where student_id=?";

		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setInt(1, result.getTotalMarks());
		ps.setInt(2, result.getAcheivedMarks());
		ps.setString(3, result.getGrades());
		ps.setInt(4, result.getStudentId());

		ps.executeUpdate();

		ps.close();
		connection.close();

	}

}
