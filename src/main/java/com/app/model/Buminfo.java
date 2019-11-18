package com.app.model;

/**
 * Buminfo entity. @author MyEclipse Persistence Tools
 */

public class Buminfo implements java.io.Serializable {

	// Fields

	private BuminfoId id;

	// Constructors

	/** default constructor */
	public Buminfo() {
	}

	/** full constructor */
	public Buminfo(BuminfoId id) {
		this.id = id;
	}

	// Property accessors

	public BuminfoId getId() {
		return this.id;
	}

	public void setId(BuminfoId id) {
		this.id = id;
	}

}