package com.myspring.trip.model;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

public class AdminBoardVO {
	private int content_idx;
	
	@NotBlank
	private String board_title;
	
	@NotBlank
	private String board_content;
	
	private String n_Id;
	
	private String board_date;
	
	private MultipartFile upload_file;
	
	private String FileName; //파일 이름 담을 변수

	public int getContent_idx() {
		return content_idx;
	}

	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getN_Id() {
		return n_Id;
	}

	public void setN_Id(String n_Id) {
		this.n_Id = n_Id;
	}

	public String getBoard_date() {
		return board_date;
	}

	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}

	public String getFileName() {
		return FileName;
	}

	public void setFileName(String fileName) {
		FileName = fileName;
	}
}
