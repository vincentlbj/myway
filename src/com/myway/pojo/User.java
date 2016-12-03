package com.myway.pojo;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.myway.validation.Login;
import com.myway.validation.Register;

public class User {
	private Integer uId;

	@Size(min = 5, max = 15, message = "用户名应该在5到15个字符之间", groups = { Register.class, Login.class })
	private String userName;

	@NotEmpty(message = "邮箱不能为空", groups = { Register.class })
	@Email(message = "不满足邮箱格式", groups = { Register.class })
	private String email;

	@Size(min = 6, max = 10, message = "密码应该在6到10个字符之间", groups = { Register.class, Login.class })
	private String password;

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName == null ? null : userName.trim();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}
}