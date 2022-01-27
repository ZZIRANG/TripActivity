package com.myspring.trip.model;

import java.util.List;

public class Le_productVO {
	private int le_ProductNum;
	private String c_Name;
	private String le_Kind;
	private String company_Name;
	private String company_Number;
	private String le_Add;
	private String le_Phone;
	private String le_Call;
	private String le_Area;
	private String le_Select;
	private String le_Review;
	private String le_ReviewAverage;
	private String le_useInfo;
	private String le_companyInfo;
	private String le_refundInfo;
	
	private List<TicketVO> ticketList;
	private List<ImageFileVO> imageList;
	private List<ImageFileVO> explanationImageList;
	
	
	
	public String getLe_Select() {
		return le_Select;
	}
	public void setLe_Select(String le_Select) {
		this.le_Select = le_Select;
	}
	public String getC_Name() {
		return c_Name;
	}
	public void setC_Name(String c_Name) {
		this.c_Name = c_Name;
	}
	public int getLe_ProductNum() {
		return le_ProductNum;
	}
	public void setLe_ProductNum(int le_ProductNum) {
		this.le_ProductNum = le_ProductNum;
	}
	public String getLe_Kind() {
		return le_Kind;
	}
	public void setLe_Kind(String le_Kind) {
		this.le_Kind = le_Kind;
	}
	
	public String getLe_Add() {
		return le_Add;
	}
	public void setLe_Add(String le_Add) {
		this.le_Add = le_Add;
	}
	public String getLe_Phone() {
		return le_Phone;
	}
	public void setLe_Phone(String le_Phone) {
		this.le_Phone = le_Phone;
	}
	public String getLe_Call() {
		return le_Call;
	}
	public void setLe_Call(String le_Call) {
		this.le_Call = le_Call;
	}
	public String getLe_Area() {
		return le_Area;
	}
	public void setLe_Area(String le_Area) {
		this.le_Area = le_Area;
	}
	public String getLe_Review() {
		return le_Review;
	}
	public void setLe_Review(String le_Review) {
		this.le_Review = le_Review;
	}
	public String getLe_ReviewAverage() {
		return le_ReviewAverage;
	}
	public void setLe_ReviewAverage(String le_ReviewAverage) {
		this.le_ReviewAverage = le_ReviewAverage;
	}
	public String getLe_useInfo() {
		return le_useInfo;
	}
	public void setLe_useInfo(String le_useInfo) {
		this.le_useInfo = le_useInfo;
	}
	public String getLe_companyInfo() {
		return le_companyInfo;
	}
	public void setLe_companyInfo(String le_companyInfo) {
		this.le_companyInfo = le_companyInfo;
	}
	public String getLe_refundInfo() {
		return le_refundInfo;
	}
	public void setLe_refundInfo(String le_refundInfo) {
		this.le_refundInfo = le_refundInfo;
	}
	public List<TicketVO> getTicketList() {
		return ticketList;
	}
	public void setTicketList(List<TicketVO> ticketList) {
		this.ticketList = ticketList;
	}
	public String getCompany_Name() {
		return company_Name;
	}
	public void setCompany_Name(String company_Name) {
		this.company_Name = company_Name;
	}
	public String getCompany_Number() {
		return company_Number;
	}
	public void setCompany_Number(String company_Number) {
		this.company_Number = company_Number;
	}
	
	public List<ImageFileVO> getImageList() {
		return imageList;
	}
	public void setImageList(List<ImageFileVO> imageList) {
		this.imageList = imageList;
	}
	public List<ImageFileVO> getExplanationImageList() {
		return explanationImageList;
	}
	public void setExplanationImageList(List<ImageFileVO> explanationImageList) {
		this.explanationImageList = explanationImageList;
	}
	@Override
	public String toString() {
		return "Le_productVO [le_ProductNum=" + le_ProductNum + ", c_Name=" + c_Name + ", le_Kind=" + le_Kind
				+ ", company_Name=" + company_Name + ", company_Number=" + company_Number + ", le_Add=" + le_Add
				+ ", le_Phone=" + le_Phone + ", le_Call=" + le_Call + ", le_Area=" + le_Area + ", le_Select="
				+ le_Select + ", le_Review=" + le_Review + ", le_ReviewAverage=" + le_ReviewAverage + ", le_useInfo="
				+ le_useInfo + ", le_companyInfo=" + le_companyInfo + ", le_refundInfo=" + le_refundInfo
				+ ", ticketList=" + ticketList + ", imageList=" + imageList + ", explanationImageList="
				+ explanationImageList + "]";
	}
	
}
