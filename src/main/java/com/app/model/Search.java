package com.app.model;


import java.util.HashSet;
import java.util.Set;

/**
 * Food entity. @author MyEclipse Persistence Tools
 */

public class Search implements java.io.Serializable {

	// Fields

	private Integer ID;
	private String sName;
	private Double classsify;

	// Constructors

	/** default constructor */
	public Search() {
	}

	/** minimal constructor */
	public Search(String sName) {
		this.sName = sName;
	}

	/** full constructor */
	public Search(String sName, Double classsify) {
		this.sName = sName;
		this.classsify = classsify;
	}

	// Property accessors

	public Integer getID() {
		return this.ID;
	}

	public void setID(Integer ID) {
		this.ID = ID;
	}

	public String getsName() {
		return this.sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public Double getclasssify() {
		return this.classsify;
	}

	public void setclasssify(Double classsify) {
		this.classsify = classsify;
	}
}
	