package com.app.model;

/**
 * BuninforId entity. @author MyEclipse Persistence Tools
 */

public class BuninforId implements java.io.Serializable {

	// Fields

	private Integer id;
	private String sname;
	private Integer errorScore;

	// Constructors

	/** default constructor */
	public BuninforId() {
	}

	/** full constructor */
	public BuninforId(Integer id, String sname, Integer errorScore) {
		this.id = id;
		this.sname = sname;
		this.errorScore = errorScore;
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

	public Integer getErrorScore() {
		return this.errorScore;
	}

	public void setErrorScore(Integer errorScore) {
		this.errorScore = errorScore;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof BuninforId))
			return false;
		BuninforId castOther = (BuninforId) other;

		return ((this.getId() == castOther.getId())
				|| (this.getId() != null && castOther.getId() != null && this.getId().equals(castOther.getId())))
				&& ((this.getSname() == castOther.getSname()) || (this.getSname() != null
						&& castOther.getSname() != null && this.getSname().equals(castOther.getSname())))
				&& ((this.getErrorScore() == castOther.getErrorScore())
						|| (this.getErrorScore() != null && castOther.getErrorScore() != null
								&& this.getErrorScore().equals(castOther.getErrorScore())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getId() == null ? 0 : this.getId().hashCode());
		result = 37 * result + (getSname() == null ? 0 : this.getSname().hashCode());
		result = 37 * result + (getErrorScore() == null ? 0 : this.getErrorScore().hashCode());
		return result;
	}

}