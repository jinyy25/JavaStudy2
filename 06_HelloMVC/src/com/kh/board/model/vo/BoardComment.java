package com.kh.board.model.vo;

import java.util.Date;

public class BoardComment {

	private int boardCommentNo;
	private int boardCommentLevel;
	private String boardCommentWriter;
	private String boardCommentContent;
	private int boardRef;
	private Date boardCommentDate;
	private int boardCommentRef;
	
	public BoardComment() {
		// TODO Auto-generated constructor stub
	}

	public BoardComment(int boardCommentNo, int boardCommentLevel, String boardCommentWriter,
			String boardCommentContent, int boardRef, Date boardCommentDate, int boardCommentRef) {
		super();
		this.boardCommentNo = boardCommentNo;
		this.boardCommentLevel = boardCommentLevel;
		this.boardCommentWriter = boardCommentWriter;
		this.boardCommentContent = boardCommentContent;
		this.boardRef = boardRef;
		this.boardCommentDate = boardCommentDate;
		this.boardCommentRef = boardCommentRef;
	}	
	
	public BoardComment(int boardCommentLevel, String boardCommentWriter, 
			String boardCommentContent, int boardRef,
			int boardCommentRef) {
		super();
		this.boardCommentLevel = boardCommentLevel;
		this.boardCommentWriter = boardCommentWriter;
		this.boardCommentContent = boardCommentContent;
		this.boardRef = boardRef;
		this.boardCommentRef = boardCommentRef;
	}

	public int getBoardCommentNo() {
		return boardCommentNo;
	}

	public void setBoardCommentNo(int boardCommentNo) {
		this.boardCommentNo = boardCommentNo;
	}

	public int getBoardCommentLevel() {
		return boardCommentLevel;
	}

	public void setBoardCommentLevel(int boardCommentLevel) {
		this.boardCommentLevel = boardCommentLevel;
	}

	public String getBoardCommentWriter() {
		return boardCommentWriter;
	}

	public void setBoardCommentWriter(String boardCommentWriter) {
		this.boardCommentWriter = boardCommentWriter;
	}

	public String getBoardCommentContent() {
		return boardCommentContent;
	}

	public void setBoardCommentContent(String boardCommentContent) {
		this.boardCommentContent = boardCommentContent;
	}

	public int getBoardRef() {
		return boardRef;
	}

	public void setBoardRef(int boardRef) {
		this.boardRef = boardRef;
	}

	public Date getBoardCommentDate() {
		return boardCommentDate;
	}

	public void setBoardCommentDate(Date boardCommentDate) {
		this.boardCommentDate = boardCommentDate;
	}

	public int getBoardCommentRef() {
		return boardCommentRef;
	}

	public void setBoardCommentRef(int boardCommentRef) {
		this.boardCommentRef = boardCommentRef;
	}

	@Override
	public String toString() {
		return "BoardComment [boardCommentNo=" + boardCommentNo + ", boardCommentLevel=" + boardCommentLevel
				+ ", boardCommentWriter=" + boardCommentWriter + ", boardCommentContent=" + boardCommentContent
				+ ", boardRef=" + boardRef + ", boardCommentDate=" + boardCommentDate + ", boardCommentRef="
				+ boardCommentRef + "]";
	}
	
	
	
	
}
