package com.app.model;

/**
 * Searchhistory entity. @author MyEclipse Persistence Tools
 */

public class Searchhistory implements java.io.Serializable {

	// Fields

	private SearchhistoryId id;

	// Constructors

	/** default constructor */
	public Searchhistory() {
	}

	/** full constructor */
	public Searchhistory(SearchhistoryId id) {
		this.id = id;
	}

	// Property accessors

	public SearchhistoryId getId() {
		return this.id;
	}

	public void setId(SearchhistoryId id) {
		this.id = id;
	}

}