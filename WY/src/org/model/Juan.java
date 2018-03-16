package org.model;

/**
 * Juan entity. @author MyEclipse Persistence Tools
 */

public class Juan implements java.io.Serializable {

	// Fields

	private Integer juanId;
	private Integer novelId;
	private Integer juan;
	private String juanName;

	// Constructors

	/** default constructor */
	public Juan() {
	}

	/** full constructor */
	public Juan(Integer juanId, Integer novelId, Integer juan, String juanName) {
		this.juanId = juanId;
		this.novelId = novelId;
		this.juan = juan;
		this.juanName = juanName;
	}

	// Property accessors

	public Integer getJuanId() {
		return this.juanId;
	}

	public void setJuanId(Integer juanId) {
		this.juanId = juanId;
	}

	public Integer getNovelId() {
		return this.novelId;
	}

	public void setNovelId(Integer novelId) {
		this.novelId = novelId;
	}

	public Integer getJuan() {
		return this.juan;
	}

	public void setJuan(Integer juan) {
		this.juan = juan;
	}

	public String getJuanName() {
		return this.juanName;
	}

	public void setJuanName(String juanName) {
		this.juanName = juanName;
	}

}