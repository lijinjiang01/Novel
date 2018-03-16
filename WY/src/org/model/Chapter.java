package org.model;

/**
 * Chapter entity. @author MyEclipse Persistence Tools
 */

public class Chapter implements java.io.Serializable {

	// Fields

	private Integer chapterId;
	private Integer novelId;
	private Integer juan;
	private String chapterName;
	private String content;

	// Constructors

	/** default constructor */
	public Chapter() {
	}

	/** full constructor */
	public Chapter(Integer novelId, Integer juan, String chapterName,
			String content) {
		this.novelId = novelId;
		this.juan = juan;
		this.chapterName = chapterName;
		this.content = content;
	}

	// Property accessors

	public Integer getChapterId() {
		return this.chapterId;
	}

	public void setChapterId(Integer chapterId) {
		this.chapterId = chapterId;
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

	public String getChapterName() {
		return this.chapterName;
	}

	public void setChapterName(String chapterName) {
		this.chapterName = chapterName;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}