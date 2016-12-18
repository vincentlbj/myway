package com.myway.pojo;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.myway.validation.Login;
import com.myway.validation.Register;

public class User {
	private Integer uId;

	@Size(min = 6, max = 12, groups = { Login.class, Register.class }, message = "账户应该在6到12个字节")
	private String userName;

	@NotEmpty(groups = { Register.class }, message = "邮箱不能为空")
	@Email(groups = { Register.class }, message = "请输入正确格式的邮箱")
	private String email;

	@Size(min = 6, max = 12, groups = { Login.class, Register.class }, message = "密码应该在6到12个字节")
	private String password;

	@Size(min = 6, max = 12, groups = { Register.class }, message = "密码应该在6到12个字节")
	private String rePassword;

	@AssertTrue(groups = { Register.class }, message = "密码两次输入不一致")
	private boolean isReEquals() {
		return password.equals(rePassword);
	}

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

	public String getRePassword() {
		return rePassword;
	}

	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}
}