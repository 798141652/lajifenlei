package com.app.model;

/**
 * SearchId entity. @author MyEclipse Persistence Tools
 */

public class SearchId implements java.io.Serializable {

	// Fields

	private String sname;
	private String classsify;
	private Integer id;

	// Constructors

	/** default constructor */
	public SearchId() {
	}

	/** full constructor */
	public SearchId(String sname, String classsify, Integer id) {
		this.sname = sname;
		this.classsify = classsify;
		this.id = id;
	}

	// Property accessors

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getClasssify() {
		return this.classsify;
	}

	public void setClasssify(String classsify) {
		this.classsify = classsify;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof SearchId))
			return false;
		SearchId castOther = (SearchId) other;

		return ((this.getSname() == castOther.getSname()) || (this.getSname() != null && castOther.getSname() != null
				&& this.getSname().equals(castOther.getSname())))
				&& ((this.getClasssify() == castOther.getClasssify()) || (this.getClasssify() != null
						&& castOther.getClasssify() != null && this.getClasssify().equals(castOther.getClasssify())))
				&& ((this.getId() == castOther.getId()) || (this.getId() != null && castOther.getId() != null
						&& this.getId().equals(castOther.getId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getSname() == null ? 0 : this.getSname().hashCode());
		result = 37 * result + (getClasssify() == null ? 0 : this.getClasssify().hashCode());
		result = 37 * result + (getId() == null ? 0 : this.getId().hashCode());
		return result;
	}

}