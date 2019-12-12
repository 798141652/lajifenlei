package com.app.model;

/**
 * Garbage entity. @author MyEclipse Persistence Tools
 */

public class Garbage implements java.io.Serializable {

	// Fields

	private Integer garbageId;
	private String garbageName;
	private Integer garbageType;

	// Constructors

	/** default constructor */
	public Garbage() {
	}

	/** full constructor */
	public Garbage(String garbageName, Integer garbageType) {
		this.garbageName = garbageName;
		this.garbageType = garbageType;
	}

	// Property accessors

	public Integer getGarbageId() {
		return this.garbageId;
	}

	public void setGarbageId(Integer garbageId) {
		this.garbageId = garbageId;
	}

	public String getGarbageName() {
		return this.garbageName;
	}

	public void setGarbageName(String garbageName) {
		this.garbageName = garbageName;
	}

	public Integer getGarbageType() {
		return this.garbageType;
	}

	public void setGarbageType(Integer garbageType) {
		this.garbageType = garbageType;
	}

}