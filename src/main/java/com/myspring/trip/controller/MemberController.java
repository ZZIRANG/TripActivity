package com.myspring.trip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.trip.model.CmemberVO;
import com.myspring.trip.model.NmemberVO;
import com.myspring.trip.service.MemberService;

@Controller("memberController")
@RequestMapping(value="/member")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	//회원가입 기업 개인 선택 페이지
	@RequestMapping(value="selectJoin", method=RequestMethod.GET)
	public void selectJoinGET() {
		logger.info("회원가입 선택페이지 진입");
	}
	//개인회원가입 페이지
	@RequestMapping(value="/n_join",method=RequestMethod.GET)
	public void n_joinGET() {
		logger.info("개인 회원가입 페이지 진입");
	}
	
	//개인 회원 가입
	@RequestMapping(value="/n_join",method=RequestMethod.POST)
	public String n_joinPOST(NmemberVO nmemberVO) throws Exception {
		logger.info("개인회원가입진입");
		
		//회원가입 서비스 실행
		memberService.insertNMember(nmemberVO);
		logger.info("개인회원가입 성공");
		
		return "redirect:/main/main";
	}
	
	//개인 아이디 중복 검사
	@RequestMapping(value="/nmemberIdChk",method=RequestMethod.POST)
	@ResponseBody
	public String nmemberIdChkPOST(String n_Id) throws Exception{
		//logger.info("nmemberIdChk() 진입");
		
		int result = memberService.nidCheck(n_Id);
		
		//logger.info("결과값 = " +result);
		
		if(result != 0) {
			return "fail"; // 중복 아이디가 존재
		} else {
			return "success"; // 중복 아이디 X
		}
	}//nmemberIdChkPOST() 종료
	
	//기업회원가입 페이지
	@RequestMapping(value="/c_join",method=RequestMethod.GET)
	public void c_joinGET() {
		logger.info("기업 회원가입 페이지 진입");
	}
	
	//기업 회원 가입
	@RequestMapping(value="/c_join",method=RequestMethod.POST)
	public String c_joinPOST(CmemberVO cmemberVO) throws Exception {
		logger.info("기업회원가입진입");
		
		//회원가입 서비스 실행
		memberService.insertCMember(cmemberVO);
		logger.info("기업회원가입 성공");
		
		return "redirect:/main/main";
	}
	
	//기업 아이디 중복 검사
	@RequestMapping(value="/cmemberIdChk",method=RequestMethod.POST)
	@ResponseBody
	public String cmemberIdChkPOST(String c_Id) throws Exception{
		//logger.info("nmemberIdChk() 진입");
		
		int result = memberService.cidCheck(c_Id);
				
		//logger.info("결과값 = " +result);
				
		if(result != 0) {
			return "fail"; // 중복 아이디가 존재
		} else {
			return "success"; // 중복 아이디 X
		}
	}//cmemberIdChkPOST() 종료
	
	//로그인 페이지
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String loginGET(HttpServletRequest request) {
		logger.info("로그인 페이지 진입");
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);
		//logger.info("referer = " + request.getHeader("referer"));
		return "/member/login";
	}
	//로그인 페이지
		@RequestMapping(value="login2",method=RequestMethod.GET)
		public String login2GET(HttpServletRequest request) {
			logger.info("로그인 페이지 진입");
			String referer = request.getHeader("Referer");
			request.getSession().setAttribute("redirectURI", referer);
			//logger.info("referer = " + request.getHeader("referer"));
			return "/member/login2";
		}
	
	//개인로그인
	@RequestMapping(value="n_login.do",method=RequestMethod.POST)
	public String n_loginPOST(HttpServletRequest request, NmemberVO nmemberVO, RedirectAttributes rttr) throws Exception {
		
		//System.out.println("login 메서드 진입");
		//System.out.println("전달된 데이터 : " + nmemberVO);
		
		//System.out.println("login 메서드 진입");
		//System.out.println("전달된 데이터 : " + cmemberVO);
		
		HttpSession session = request.getSession();
		NmemberVO nvo = memberService.nmemberLogin(nmemberVO);

		if(nvo == null) {
			int result = 0;
			rttr.addFlashAttribute("result",result);
			
			return "redirect:/member/login";
		}
		session.setAttribute("nmemberVO", nvo);
		session.setAttribute("isLogOn", true);
		
		return "redirect:/main/main";
		
	}
	
	//개인로그인
		@RequestMapping(value="n_ilogin.do",method=RequestMethod.POST)
		public String n_loginiPOST(HttpServletRequest request, NmemberVO nmemberVO, RedirectAttributes rttr) throws Exception {
			
			//System.out.println("login 메서드 진입");
			//System.out.println("전달된 데이터 : " + nmemberVO);
			
			//System.out.println("login 메서드 진입");
			//System.out.println("전달된 데이터 : " + cmemberVO);
			
			HttpSession session = request.getSession();
			NmemberVO nvo = memberService.nmemberLogin(nmemberVO);

			if(nvo == null) {
				int result = 0;
				rttr.addFlashAttribute("result",result);
				
				return "redirect:/member/login2";
			}
			session.setAttribute("nmemberVO", nvo);
			session.setAttribute("isLogOn", true);
			
			return "redirect:/board/inquiry_write";
			
		}
	
	//개인로그인
	@RequestMapping(value="c_login.do",method=RequestMethod.POST)
	public String c_loginPOST(HttpServletRequest request, CmemberVO cmemberVO, RedirectAttributes rttr) throws Exception {
			
		//System.out.println("login 메서드 진입");
		//System.out.println("전달된 데이터 : " + nmemberVO);
			
		//System.out.println("login 메서드 진입");
		//System.out.println("전달된 데이터 : " + cmemberVO);
			
		HttpSession session = request.getSession();
		CmemberVO cvo = memberService.cmemberLogin(cmemberVO);
			
		if(cvo == null) {
			int result = 0;
			rttr.addFlashAttribute("result",result);
			return "redirect:/member/login";
		}
			
		session.setAttribute("cmemberVO", cvo);
			
		return "redirect:/main/main";
		}
	
	//메인페이지 로그아웃
	@RequestMapping(value="/logout.do",method=RequestMethod.GET)
	public String logoutGET(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return "redirect:/main/main";
	}
	
	//아이디 찾기
		@RequestMapping(value="/Find_Id",method=RequestMethod.GET)
		public void findNidGET() {
			logger.info("아이디 찾기 페이지 진입");
		}
		
	//비밀번호찾기
		@RequestMapping(value="/Find_Pw",method=RequestMethod.GET)
		public void findNpwGET() {
			logger.info("아이디 찾기 페이지 진입");
		}
}
