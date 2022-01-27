package com.myspring.trip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.trip.mapper.MemberMapper;
import com.myspring.trip.model.CmemberVO;
import com.myspring.trip.model.NmemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
		
	@Autowired
	MemberMapper memberMapper;
	
	//개인회원 가입
	@Override
	public void insertNMember(NmemberVO nmemberVO) throws Exception{
		
		memberMapper.insertNMember(nmemberVO);
	}
	//기업회원 가입
	@Override
	public void insertCMember(CmemberVO cmemberVO) throws Exception{
		
		memberMapper.insertCMember(cmemberVO);
	}
	//개인회원 아이디 중복체크
	@Override
	public int nidCheck(String n_Id) throws Exception {
		
		return memberMapper.nidCheck(n_Id);
	}
	//기업회원 아이디 중복체크
	@Override
	public int cidCheck(String c_Id) throws Exception {
		
		return memberMapper.cidCheck(c_Id);
	}
	//개인회원 로그인
	@Override
	public NmemberVO nmemberLogin(NmemberVO nmemberVO) throws Exception {
		
		return memberMapper.nmemberLogin(nmemberVO);
	}
	//기업회원 로그인
	@Override
	public CmemberVO cmemberLogin(CmemberVO cmemberVO) throws Exception {
		
		return memberMapper.cmemberLogin(cmemberVO);
	}
	
}
