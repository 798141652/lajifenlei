package com.app.model;

/**
 * Gameinfo entity. @author MyEclipse Persistence Tools
 */

public class Gameinfo implements java.io.Serializable {

	// Fields

	private GameinfoId id;

	// Constructors

	/** default constructor */
	public Gameinfo() {
	}

	/** full constructor */
	public Gameinfo(GameinfoId id) {
		this.id = id;
	}

	// Property accessors

	public GameinfoId getId() {
		return this.id;
	}

	public void setId(GameinfoId id) {
		this.id = id;
	}

}