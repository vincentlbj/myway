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

	@Override
	public void addUser(User user) {
		userMapper.insert(user);
	}

	@Override
	public User getUser(String username) {
		UserExample example = new UserExample();
		example.or().andUserNameEqualTo(username);
		List<User> list = userMapper.selectByExample(example);
		return list.get(0);
	}

	@Override
	public void updateUser(User user) {
		UserExample example = new UserExample();
		example.or().andUIdEqualTo(user.getuId());
		userMapper.updateByExampleSelective(user, example);
	}

	@Override
	public User getUserById(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}

}
