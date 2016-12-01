package com.myway.service.impl.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myway.mapper.UserMapper;
import com.myway.pojo.User;
import com.myway.pojo.UserExample;
import com.myway.service.user.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserMapper userMapper;

	@Override
	public boolean testPassword(String userName, String password) {
		UserExample example = new UserExample();
		example.or().andUserNameEqualTo(userName).andPasswordEqualTo(password);
		List<User> result = userMapper.selectByExample(example);
		if (result.isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

}
