package DAO;

import java.sql.SQLException;

import Exceptions.BikeDAOExceptions;
import model.Result;
import model.Staff;
import model.Student;

public interface StaffDAO {

	public void registerStaff(Staff staff) throws SQLException, BikeDAOExceptions;

	public boolean checkStaff(String userName, String password) throws BikeDAOExceptions;

	public void deleteResult(int id) throws SQLException;
	public void editResult(Result result) throws SQLException;

}
