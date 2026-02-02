package com.crm.dao;

import com.crm.dto.User;

public interface UserDAO {
	boolean registerUser(User User);
	User loginUser(String email,String password);
}
