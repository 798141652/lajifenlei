package com.app.model;

/**
 * Star entity. @author MyEclipse Persistence Tools
 */

public class Star implements java.io.Serializable {

	// Fields

	private String userId;
	private Integer starNum;

	// Constructors

	/** default constructor */
	public Star() {
	}

	/** full constructor */
	public Star(String userId, Integer starNum) {
		this.userId = userId;
		this.starNum = starNum;
	}

	// Property accessors

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Integer getStarNum() {
		return this.starNum;
	}

	public void setStarNum(Integer starNum) {
		this.starNum = starNum;
	}

}