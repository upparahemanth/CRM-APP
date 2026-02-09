package com.crm.dao;

import java.util.List;

import com.crm.dto.User;

public interface UserDAO {
	boolean registerUser(User User);
	User loginUser(String email,String password);
	List<User> getAllUsers();
	User getUserById(int uid);
	boolean updateuser(User updateduser);
	boolean deleteuserById(int UserId);
}
