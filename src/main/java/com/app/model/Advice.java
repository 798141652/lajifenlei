package com.app.model;

/**
 * Advice entity. @author MyEclipse Persistence Tools
 */

public class Advice implements java.io.Serializable {

	// Fields

	private AdviceId id;

	// Constructors

	/** default constructor */
	public Advice() {
	}

	/** full constructor */
	public Advice(AdviceId id) {
		this.id = id;
	}

	// Property accessors

	public AdviceId getId() {
		return this.id;
	}

	public void setId(AdviceId id) {
		this.id = id;
	}

}