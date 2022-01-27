package com.myspring.trip.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.myspring.trip.mapper.MemberMapper;
import com.myspring.trip.mapper.MemberMapperTests;
import com.myspring.trip.mapper.MyPageMapper;
import com.myspring.trip.model.NmemberVO;

import jdk.internal.org.jline.utils.Log;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class memberServiceTest {
	
	private static final Logger log = LoggerFactory.getLogger(MemberMapperTests.class);
	
	@Autowired
	private MyPageService mpservice;
	

	/*
	 * @Test public void testNmemberLogin() throws Exception {
	 * 
	 * NmemberVO member = new NmemberVO(); member.setN_Id("1234");
	 * member.setN_Pw1("kkkk");
	 * 
	 * memMapper.nmemberLogin(member); System.out.println("결과 값 : " +
	 * memMapper.nmemberLogin(member)); }
	 */
	
	/*
	 * @Test public void infoGetDetailTest() throws Exception { String n_Id =
	 * "kkkk";
	 * 
	 * Log.info("infoDetail........." + mpservice.infoGetDetail(n_Id)); }
	 */
	
	

}
