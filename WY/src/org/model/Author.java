package org.model;

/**
 * Author entity. @author MyEclipse Persistence Tools
 */

public class Author implements java.io.Serializable {

	// Fields

	private Integer authorId;
	private Integer finished;
	private String authorName;
	private String sex;
	private String address;
	private String web;
	private String intro;
	private String photo;

	// Constructors

	/** default constructor */
	public Author() {
	}

	/** full constructor */
	public Author(Integer authorId, Integer finished, String authorName,
			String sex, String address, String web, String intro, String photo) {
		this.authorId = authorId;
		this.finished = finished;
		this.authorName = authorName;
		this.sex = sex;
		this.address = address;
		this.web = web;
		this.intro = intro;
		this.photo = photo;
	}

	// Property accessors

	public Integer getAuthorId() {
		return this.authorId;
	}

	public void setAuthorId(Integer authorId) {
		this.authorId = authorId;
	}

	public Integer getFinished() {
		return this.finished;
	}

	public void setFinished(Integer finished) {
		this.finished = finished;
	}

	public String getAuthorName() {
		return this.authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getWeb() {
		return this.web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public String getIntro() {
		return this.intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

}