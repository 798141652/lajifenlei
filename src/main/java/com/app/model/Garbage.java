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
 * Garbage entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "garbage", catalog = "lajifenlei")

public class Garbage implements java.io.Serializable {

	// Fields

	private Integer garbageId;
	private GarbageType garbageType;
	private String garbageName;

	// Constructors

	/** default constructor */
	public Garbage() {
	}

	/** full constructor */
	public Garbage(GarbageType garbageType, String garbageName) {
		this.garbageType = garbageType;
		this.garbageName = garbageName;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")

	@Column(name = "garbageId", unique = true, nullable = false)

	public Integer getGarbageId() {
		return this.garbageId;
	}

	public void setGarbageId(Integer garbageId) {
		this.garbageId = garbageId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "garbageType")

	public GarbageType getGarbageType() {
		return this.garbageType;
	}

	public void setGarbageType(GarbageType garbageType) {
		this.garbageType = garbageType;
	}

	@Column(name = "garbageName", length = 20)

	public String getGarbageName() {
		return this.garbageName;
	}

	public void setGarbageName(String garbageName) {
		this.garbageName = garbageName;
	}

}