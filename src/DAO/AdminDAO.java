package DAO;

import java.sql.SQLException;

import Exceptions.BikeDAOExceptions;
import model.Admin;
import model.Staff;
import model.Student;

public interface AdminDAO {

	public void registeradmin(Admin admin) throws SQLException, BikeDAOExceptions;

	public boolean checkadmin(String userName, String password) throws SQLException;
	
	public void delete(int id) throws SQLException;
	
	public void addStaff(Staff staff) throws SQLException;
	public void addStudent(Student student) throws SQLException;

}
