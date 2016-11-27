package com.myway.dto;

public class CommonDto {
	String key;
	String value;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value.replace("\n", "<br/>");
	}

}
