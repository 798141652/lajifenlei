package com.app.model;

import java.sql.Time;

/**
 * AdviceId entity. @author MyEclipse Persistence Tools
 */

public class AdviceId implements java.io.Serializable {

	// Fields

	private String id;
	private String msg;
	private Time subTime;

	// Constructors

	/** default constructor */
	public AdviceId() {
	}

	/** full constructor */
	public AdviceId(String id, String msg, Time subTime) {
		this.id = id;
		this.msg = msg;
		this.subTime = subTime;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMsg() {
		return this.msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Time getSubTime() {
		return this.subTime;
	}

	public void setSubTime(Time subTime) {
		this.subTime = subTime;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AdviceId))
			return false;
		AdviceId castOther = (AdviceId) other;

		return ((this.getId() == castOther.getId())
				|| (this.getId() != null && castOther.getId() != null && this.getId().equals(castOther.getId())))
				&& ((this.getMsg() == castOther.getMsg()) || (this.getMsg() != null && castOther.getMsg() != null
						&& this.getMsg().equals(castOther.getMsg())))
				&& ((this.getSubTime() == castOther.getSubTime()) || (this.getSubTime() != null
						&& castOther.getSubTime() != null && this.getSubTime().equals(castOther.getSubTime())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + (getId() == null ? 0 : this.getId().hashCode());
		result = 37 * result + (getMsg() == null ? 0 : this.getMsg().hashCode());
		result = 37 * result + (getSubTime() == null ? 0 : this.getSubTime().hashCode());
		return result;
	}

}