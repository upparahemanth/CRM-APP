package com.crm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.crm.dto.User;
import com.crm.util.DBConn;

public class UserDAOImpl implements UserDAO {

	Connection con = null;

	@Override
	public boolean registerUser(User User) {
		con = DBConn.getConnection();
		String register = "INSERT INTO user VALUES(?,?,?,?,?)";

		try {
			PreparedStatement pstmt = con.prepareStatement(register);
			pstmt.setInt(1, User.getUserId());
			pstmt.setString(2, User.getUserName());
			pstmt.setString(3, User.getEmail());
			pstmt.setString(4, User.getPassword());
			pstmt.setString(5, User.getRole());
			int count = pstmt.executeUpdate();
			if (count > 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return (false);

	}

	@Override
	public User loginUser(String email, String password) {
		User user = null;
		con = DBConn.getConnection();
		String login = "SELECT * FROM user WHERE email=? AND password=?";
		try {
			PreparedStatement pstmt = con.prepareStatement(login);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPassword(rs.getString(4));
				user.setRole(rs.getString(5));
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

}
