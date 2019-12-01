package com.app.model;

/**
 * Game entity. @author MyEclipse Persistence Tools
 */

public class Game implements java.io.Serializable {

	// Fields

	private GameId id;

	// Constructors

	/** default constructor */
	public Game() {
	}

	/** full constructor */
	public Game(GameId id) {
		this.id = id;
	}

	// Property accessors

	public GameId getId() {
		return this.id;
	}

	public void setId(GameId id) {
		this.id = id;
	}

}