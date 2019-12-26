package com.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Advice entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "advice", catalog = "lajifenlei")

public class Advice implements java.io.Serializable {

	// Fields

	private Integer adviceid;
	private User user;
	private String msg;
	private String type;

	// Constructors

	/** default constructor */
	public Advice() {
	}

	/** full constructor */
	public Advice(User user, String msg, String type) {
		this.user = user;
		this.msg = msg;
		this.type = type;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")

	@Column(name = "adviceid", unique = true, nullable = false)

	public Integer getAdviceid() {
		return this.adviceid;
	}

	public void setAdviceid(Integer adviceid) {
		this.adviceid = adviceid;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userid", nullable = false)

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "msg", nullable = false, length = 200)

	public String getMsg() {
		return this.msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	@Column(name = "type", nullable = false, length = 50)

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}