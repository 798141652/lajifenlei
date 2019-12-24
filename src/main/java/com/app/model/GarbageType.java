package com.app.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * GarbageType entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "garbagetype", catalog = "lajifenlei")

public class GarbageType implements java.io.Serializable {

	// Fields

	private Integer garbagetypeId;
	private String garbagetypeName;
	private String introduce;
	private String requirement;
	private Set<Garbage> garbages = new HashSet<Garbage>(0);

	// Constructors

	/** default constructor */
	public GarbageType() {
	}

	/** full constructor */
	public GarbageType(String garbagetypeName, String introduce, String requirement, Set<Garbage> garbages) {
		this.garbagetypeName = garbagetypeName;
		this.introduce = introduce;
		this.requirement = requirement;
		this.garbages = garbages;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")

	@Column(name = "garbagetypeId", unique = true, nullable = false)

	public Integer getGarbagetypeId() {
		return this.garbagetypeId;
	}

	public void setGarbagetypeId(Integer garbagetypeId) {
		this.garbagetypeId = garbagetypeId;
	}

	@Column(name = "garbagetypeName", length = 5)

	public String getGarbagetypeName() {
		return this.garbagetypeName;
	}

	public void setGarbagetypeName(String garbagetypeName) {
		this.garbagetypeName = garbagetypeName;
	}

	@Column(name = "introduce")

	public String getIntroduce() {
		return this.introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	@Column(name = "requirement", length = 65535)

	public String getRequirement() {
		return this.requirement;
	}

	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "garbageType")

	public Set<Garbage> getGarbages() {
		return this.garbages;
	}

	public void setGarbages(Set<Garbage> garbages) {
		this.garbages = garbages;
	}

}