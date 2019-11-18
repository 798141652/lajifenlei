package com.app.model;

/**
 * Search entity. @author MyEclipse Persistence Tools
 */

public class Search implements java.io.Serializable {

	// Fields

	private SearchId id;

	// Constructors

	/** default constructor */
	public Search() {
	}

	/** full constructor */
	public Search(SearchId id) {
		this.id = id;
	}

	// Property accessors

	public SearchId getId() {
		return this.id;
	}

	public void setId(SearchId id) {
		this.id = id;
	}

}