package com.dao;
import java.util.List;

import com.model.Users;
public interface UserInfo {

	    // Customer - register
	    boolean registerUser(Users u);

	    // Customer/Admin - login
	    Users loginUser(String username, String password);

	    // Customer/Admin - view user by ID
	    Users getUserById(int userId);

	    // Admin - view all users
	    List<Users> getAllUsers(String role);

	    // Customer - update own details by ID and admin can also update 
	    boolean updateUserById(int userId, Users u);

	    // Admin - delete user by ID
	    boolean deleteUserById(int userId);

		
}
