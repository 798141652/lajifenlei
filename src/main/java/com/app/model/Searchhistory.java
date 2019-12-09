package com.app.model;

/**
 * SearchHistory entity. @author MyEclipse Persistence Tools
 */

public class SearchHistory implements java.io.Serializable {

	// Fields

	private SearchHistoryId id;

	// Constructors

	/** default constructor */
	public SearchHistory() {
	}

	/** full constructor */
	public SearchHistory(SearchHistoryId id) {
		this.id = id;
	}

	// Property accessors

	public SearchHistoryId getId() {
		return this.id;
	}

	public void setId(SearchHistoryId id) {
		this.id = id;
	}

}