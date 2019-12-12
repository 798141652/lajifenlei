package com.app.model;

/**
 * GarbageType entity. @author MyEclipse Persistence Tools
 */

public class GarbageType implements java.io.Serializable {

	// Fields

	private Integer garbagetypeId;
	private String garbagetypeName;
	private String introduce;
	private String requirement;

	// Constructors

	/** default constructor */
	public GarbageType() {
	}

	/** full constructor */
	public GarbageType(String garbagetypeName, String introduce, String requirement) {
		this.garbagetypeName = garbagetypeName;
		this.introduce = introduce;
		this.requirement = requirement;
	}

	// Property accessors

	public Integer getGarbagetypeId() {
		return this.garbagetypeId;
	}

	public void setGarbagetypeId(Integer garbagetypeId) {
		this.garbagetypeId = garbagetypeId;
	}

	public String getGarbagetypeName() {
		return this.garbagetypeName;
	}

	public void setGarbagetypeName(String garbagetypeName) {
		this.garbagetypeName = garbagetypeName;
	}

	public String getIntroduce() {
		return this.introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getRequirement() {
		return this.requirement;
	}

	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}

}