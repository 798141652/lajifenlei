package com.app.model;

/**
 * Buninfor entity. @author MyEclipse Persistence Tools
 */

public class Buninfor implements java.io.Serializable {

	// Fields

	private BuninforId id;

	// Constructors

	/** default constructor */
	public Buninfor() {
	}

	/** full constructor */
	public Buninfor(BuninforId id) {
		this.id = id;
	}

	// Property accessors

	public BuninforId getId() {
		return this.id;
	}

	public void setId(BuninforId id) {
		this.id = id;
	}

}