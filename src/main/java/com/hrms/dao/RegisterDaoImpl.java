package com.hrms.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hrms.model.RegisterModel;
import com.hrms.util.DBConnection;

public class RegisterDaoImpl implements RegisterDao {

	Connection myConnection = null;
	PreparedStatement mysmt = null;
	Statement stm = null;
	

	@Override
	public int registerUser(RegisterModel model) {
		int row = 0;
		try {
			myConnection = DBConnection.getConnection();
			mysmt = myConnection.prepareStatement(
					"INSERT INTO registerUser (userName, email, address, mobileNumber, topic, registerDate, parentContact) VALUES (?, ?, ?, ?, ?, ?, ?)");

			mysmt.setString(1, model.getUserName());
			mysmt.setString(2, model.getEmail());
			mysmt.setString(3, model.getAddress());
			mysmt.setString(4, String.valueOf(model.getMobileNumber())); // Change to String for mobile numbers
			mysmt.setString(5, model.getTopics()); // Modify as necessary
			mysmt.setDate(6, new java.sql.Date(model.getRegisterDate().getTime())); // Convert java.util.Date to
																					// java.sql.Date
			mysmt.setString(7, model.getParentContact());

			row = mysmt.executeUpdate();

			if (row > 0) {
				System.out.println("Inserted");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return row;
	}

	@Override
	public List<RegisterModel> listOfRecors() {
		ResultSet rs = null;
		 List<RegisterModel> users = new ArrayList<RegisterModel>();

		try {
			myConnection = DBConnection.getConnection();
			stm = myConnection.createStatement();
			 rs = stm.executeQuery("SELECT * FROM registerUser");

	            while (rs.next()) {
	                RegisterModel user = new RegisterModel();
	                
	                user.setUserName(rs.getString("userName"));
	                user.setEmail(rs.getString("email"));
	                user.setAddress(rs.getString("address"));
	                user.setMobileNumber(rs.getString("mobileNumber"));
	                user.setTopics(rs.getString("topic"));
	                user.setRegisterDate(rs.getDate("registerDate"));
	                user.setParentContact(rs.getString("parentContact"));
	                
	                users.add(user);
	            }
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
}
