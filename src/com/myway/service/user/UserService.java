package com.myway.service.user;

import com.myway.pojo.User;

public interface UserService {
	public boolean testPassword(String userName, String password);

	public void addUser(User user);

	public User getUser(String username);
}
