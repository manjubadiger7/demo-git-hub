package DAO;

import java.sql.SQLException;
import java.util.List;

import Exceptions.BikeDAOExceptions;
import Exceptions.ConnectionFailedException;
import model.Result;
import model.Student;

public interface StudentDao {

	public void registerStudent(Student student) throws SQLException, BikeDAOExceptions;

	public boolean checkStudent(String userName, String password) throws BikeDAOExceptions;

	public List<Student> retriveStudents() throws BikeDAOExceptions;

	public void delete(int id) throws BikeDAOExceptions, SQLException, ConnectionFailedException;
	
	public void addComment(String comment) throws SQLException;
	
	public List<Student> forgotPassword(String userName) throws SQLException;
}
