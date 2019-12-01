package com.app.model;

/**
 * GameId entity. @author MyEclipse Persistence Tools
 */

public class GameId implements java.io.Serializable {

	// Fields

	private Integer id;
	private String sname;
	private Integer rightScore;

	// Constructors

	/** default constructor */
	public GameId() {
	}

	/** full constructor */
	public GameId(Integer id, String sname, Integer rightScore) {
		this.id = id;
		this.sname = sname;
		this.rightScore = rightScore;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Integer getRightScore() {
		return this.rightScore;
	}

	public void setRightScore(Integer rightScore) {
		this.rightScore = rightScore;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof GameId))
			return false;
		GameId castOther = (GameId) other;

		return ((this.getId() == castOther.getId())
				|| (this.getId() != null && castOther.getId() != null && this.getId().equals(castOther.getId())))
				&& ((this.getSname() == castOther.getSname()) || (this.getSname() != null
						&& castOther.getSname() != null && this.getSname().equals(castOther.getSname())))
				&& ((this.getRightScore() == castOther.getRightScore())
						|| (this.getRightScore() != null && castOther.getRightScore() != null
								&& this.getRightScore().equals(castOther.getRightScore())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getId() == null ? 0 : this.getId().hashCode());
		result = 37 * result + (getSname() == null ? 0 : this.getSname().hashCode());
		result = 37 * result + (getRightScore() == null ? 0 : this.getRightScore().hashCode());
		return result;
	}

}