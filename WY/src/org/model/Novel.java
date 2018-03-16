package org.model;

/**
 * Novel entity. @author MyEclipse Persistence Tools
 */

public class Novel implements java.io.Serializable {

	// Fields

	private Integer novelId;
	private String novelName;
	private String author;
	private String state;
	private String tstart;
	private String tend;
	private String first;
	private String link;
	private Integer wnum;
	private Integer recom;
	private String photo;
	private String intro;

	// Constructors

	/** default constructor */
	public Novel() {
	}

	/** full constructor */
	public Novel(Integer novelId, String novelName, String author,
			String state, String tstart, String tend, String first,
			String link, Integer wnum, Integer recom, String photo, String intro) {
		this.novelId = novelId;
		this.novelName = novelName;
		this.author = author;
		this.state = state;
		this.tstart = tstart;
		this.tend = tend;
		this.first = first;
		this.link = link;
		this.wnum = wnum;
		this.recom = recom;
		this.photo = photo;
		this.intro = intro;
	}

	// Property accessors

	public Integer getNovelId() {
		return this.novelId;
	}

	public void setNovelId(Integer novelId) {
		this.novelId = novelId;
	}

	public String getNovelName() {
		return this.novelName;
	}

	public void setNovelName(String novelName) {
		this.novelName = novelName;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getTstart() {
		return this.tstart;
	}

	public void setTstart(String tstart) {
		this.tstart = tstart;
	}

	public String getTend() {
		return this.tend;
	}

	public void setTend(String tend) {
		this.tend = tend;
	}

	public String getFirst() {
		return this.first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getLink() {
		return this.link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public Integer getWnum() {
		return this.wnum;
	}

	public void setWnum(Integer wnum) {
		this.wnum = wnum;
	}

	public Integer getRecom() {
		return this.recom;
	}

	public void setRecom(Integer recom) {
		this.recom = recom;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getIntro() {
		return this.intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

}