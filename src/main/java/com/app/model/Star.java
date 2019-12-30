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
 * Star entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "star", catalog = "lajifenlei")

public class Star implements java.io.Serializable {

	// Fields

	private Integer starId;
	private User user;
	private String starNum;

	// Constructors

	/** default constructor */
	public Star() {
	}

	/** full constructor */
	public Star(User user, String starNum) {
		this.user = user;
		this.starNum = starNum;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")

	@Column(name = "starID", unique = true, nullable = false)

	public Integer getStarId() {
		return this.starId;
	}

	public void setStarId(Integer starId) {
		this.starId = starId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userID", nullable = false)

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "starNum", nullable = false, length = 10)

	public String getStarNum() {
		return this.starNum;
	}

	public void setStarNum(String starNum) {
		this.starNum = starNum;
	}

}