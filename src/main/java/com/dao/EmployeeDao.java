package com.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.model.Employee;
import com.util.DatabaseConnection;

public class EmployeeDao {

	public void insert(Employee employee) throws SQLException, NullPointerException, ClassNotFoundException {
		DatabaseConnection databaseConnection = new DatabaseConnection();
		Connection connection = databaseConnection.getConnection();
		Statement statement = null;
		try {
			if(connection != null) {
				statement= connection.createStatement();
				String sql = "Insert into registrationlist (firstname, lastName, userName, password, address, contact) values('" + 
				employee.getFirstName() + "', '" + employee.getLastName() + "', '" + employee.getUserName() + "', '" + employee.getPassword() + "', '"
				+ employee.getAddress() + "', '" + employee.getContact() + "')";

				int result = statement.executeUpdate(sql);
				if (result > 0) {
					System.out.println("Data entered Successfully");
				} else {
					System.out.println("Data not entered");
				}
			} else {
				System.out.println("Connection is null");
			}
		} finally {
			if (statement != null) {
				statement.close();	
			} 
			if (connection != null) {
				connection.close();	
			}
		}
	}

}