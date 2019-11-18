package com.app.model;

/**
 * SearchnumId entity. @author MyEclipse Persistence Tools
 */

public class SearchnumId implements java.io.Serializable {

	// Fields

	private String sname;
	private Integer count;

	// Constructors

	/** default constructor */
	public SearchnumId() {
	}

	/** full constructor */
	public SearchnumId(String sname, Integer count) {
		this.sname = sname;
		this.count = count;
	}

	// Property accessors

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof SearchnumId))
			return false;
		SearchnumId castOther = (SearchnumId) other;

		return ((this.getSname() == castOther.getSname()) || (this.getSname() != null && castOther.getSname() != null
				&& this.getSname().equals(castOther.getSname())))
				&& ((this.getCount() == castOther.getCount()) || (this.getCount() != null
						&& castOther.getCount() != null && this.getCount().equals(castOther.getCount())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getSname() == null ? 0 : this.getSname().hashCode());
		result = 37 * result + (getCount() == null ? 0 : this.getCount().hashCode());
		return result;
	}

}