package com.myspring.trip.mapper;

import com.myspring.trip.model.CmemberVO;
import com.myspring.trip.model.NmemberVO;

public interface MemberMapper {
	
	//개인회원가입
	public void insertNMember(NmemberVO nmemberVO);
	//기업회원가입
	public void insertCMember(CmemberVO cmemberVO);
	//개인회원 아이디 중복검사
	public int nidCheck(String n_Id);
	//기업회원 아이디 중복검사
	public int cidCheck(String c_Id);
	//개인회원 로그인
	public NmemberVO nmemberLogin(NmemberVO nmemberVO);
	//기업회원 로그인
	public CmemberVO cmemberLogin(CmemberVO cmemberVO);
}
