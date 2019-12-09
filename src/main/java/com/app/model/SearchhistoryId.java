package com.app.model;

/**
 * SearchHistoryId entity. @author MyEclipse Persistence Tools
 */

public class SearchHistoryId implements java.io.Serializable {

	// Fields

	private String userId;
	private String sname;

	// Constructors

	/** default constructor */
	public SearchHistoryId() {
	}

	/** full constructor */
	public SearchHistoryId(String userId, String sname) {
		this.userId = userId;
		this.sname = sname;
	}

	// Property accessors

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof SearchHistoryId))
			return false;
		SearchHistoryId castOther = (SearchHistoryId) other;

		return ((this.getUserId() == castOther.getUserId()) || (this.getUserId() != null
				&& castOther.getUserId() != null && this.getUserId().equals(castOther.getUserId())))
				&& ((this.getSname() == castOther.getSname()) || (this.getSname() != null
						&& castOther.getSname() != null && this.getSname().equals(castOther.getSname())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getUserId() == null ? 0 : this.getUserId().hashCode());
		result = 37 * result + (getSname() == null ? 0 : this.getSname().hashCode());
		return result;
	}

}