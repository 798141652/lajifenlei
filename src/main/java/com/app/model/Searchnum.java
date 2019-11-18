package com.app.model;

/**
 * Searchnum entity. @author MyEclipse Persistence Tools
 */

public class Searchnum implements java.io.Serializable {

	// Fields

	private SearchnumId id;

	// Constructors

	/** default constructor */
	public Searchnum() {
	}

	/** full constructor */
	public Searchnum(SearchnumId id) {
		this.id = id;
	}

	// Property accessors

	public SearchnumId getId() {
		return this.id;
	}

	public void setId(SearchnumId id) {
		this.id = id;
	}

}