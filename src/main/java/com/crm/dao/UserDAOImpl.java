package com.crm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

	@Override
	public List<User> getAllUsers() {
		con = DBConn.getConnection();
		String allusers = "SELECT * FROM user";
		List<User> ulist = new ArrayList<>();
		try {
			PreparedStatement pstmt = con.prepareStatement(allusers);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				User user = new User(); // Creates new object for each user
				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setRole(rs.getString(5));
				ulist.add(user); // adding new user into the collection

			}
			return ulist;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public User getUserById(int uid) {
		User user = null;
		con = DBConn.getConnection();
		String getuser = "SELECT * FROM user WHERE uid=?";
		try {
			PreparedStatement pstmt = con.prepareStatement(getuser);
			pstmt.setInt(1, uid);
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

	@Override
	public boolean updateuser(User Updateuser) {
		con = DBConn.getConnection();
		String update = "UPDATE user SET uname=?, email=?, password=?, role=? WHERE uid=?";

		try {
			PreparedStatement pstmt = con.prepareStatement(update);
			 pstmt.setString(1, Updateuser.getUserName());
		        pstmt.setString(2, Updateuser.getEmail());
		        pstmt.setString(3, Updateuser.getPassword());
		        pstmt.setString(4, Updateuser.getRole());
		        pstmt.setInt(5, Updateuser.getUserId());
			int count = pstmt.executeUpdate();
			if (count > 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteuserById(int UserId) {
		 
		con=DBConn.getConnection();
		String delete="DELETE FROM user WHERE uid=?";
		try {
			PreparedStatement pstmt=con.prepareStatement(delete);
			pstmt.setInt(1, UserId);
			int count=pstmt.executeUpdate();
			if(count>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}



}
