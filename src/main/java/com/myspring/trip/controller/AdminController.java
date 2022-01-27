package com.myspring.trip.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.trip.model.AdminVO;
import com.myspring.trip.model.CouponVO;
import com.myspring.trip.model.NmemberVO;
import com.myspring.trip.service.AdminService;
import com.myspring.trip.service.BoardService;
import com.myspring.trip.validator.AdminValidator;

@Controller("adminController")
@RequestMapping(value="/admin")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private BoardService bservice;
	
	@Resource(name ="loginAdminVO")
	@Lazy
	private AdminVO loginAdminVO;	
	
	
	
	//관리자 로그인
	
	//@Resource(name="loginUserBean")
	//@Lazy
	//private AdminVO adminvo;
	
	@GetMapping("admin_main")
	public String admin_main() {
		return "admin/admin_main";
	}
	@GetMapping("admin_Common")
	public String admin_Common() {
		
		return "admin/admin_Common";
	}
	
	@GetMapping("admin_main_test")
	public String admin_main_test() {
		
		return "admin/admin_main_test";
	}
	
	
	
	
	
	
	//괸리자 회원 관리 조회
	@RequestMapping(value="/admin_see_member_info",method=RequestMethod.GET)
	public void admin_select_member(NmemberVO nmemberVO, Model model) throws Exception {
		logger.info("관리자 회원 조회 페이지" + nmemberVO);
		
		List list = adminService.selectNMember(nmemberVO);
		
		model.addAttribute("list",list);
		
		logger.info("회원 조회");
		
		
	}
	
	@RequestMapping(value="/admin_c_member_manage", method=RequestMethod.GET)
	public void admin_c_member_manage () {
		
		
		logger.info("admin_c_member_manage 조회");
		
		
	}
	

	
	
	
	@RequestMapping(value="/admin_ac_manage", method=RequestMethod.GET)
	public void admin_ac_manage(NmemberVO nmemberVO, Model model) throws Exception{
		logger.info("관리자 숙박 관리 조회 페이지");
		
		List<NmemberVO> list =adminService.selectNMember(nmemberVO);
		
		model.addAttribute("list",list);
		
		
	}
	
	
	@RequestMapping(value="/admin_coupon", method=RequestMethod.GET)
	public void admin_coupon (CouponVO couponvo, Model model) throws Exception  {
		logger.info("admin_coupon 조회");
		
		
		List list = adminService.selectCoupon(couponvo);
		
		model.addAttribute("list",list);
	}	
	
	@PostMapping("/admin_coupon_Enroll")
	public String couponEnrollPOST(CouponVO coupon, RedirectAttributes rttr) throws Exception{
		logger.info("couponEnrollPOST...." + coupon);
		
		adminService.couponEnroll(coupon);
		
		rttr.addFlashAttribute("coupon_result", coupon.getCoupon_name());
		
		return "redirect:/admin/admin_coupon";
	}
	
	@ResponseBody
	
	
	@RequestMapping(value="/admin_ono_one", method=RequestMethod.GET)
	public void admin_ono_one () {
		logger.info("admin_ono_one 조회");
	}
	
	
	
	@RequestMapping(value="/admin_lei_manage", method=RequestMethod.GET)
	public void admin_lei_manage()  {
		logger.info("admin_lei_manage 조회 ");
	}
	
	@RequestMapping(value="/admin_member_detail", method=RequestMethod.GET)
	public void admin_member_detail () {
		logger.info("admin_member_detail 조회하기");
	}
	
	@RequestMapping(value="/admin_member_see_grade", method=RequestMethod.GET)
	public void admin_member_see_grade () {
		logger.info("admin_member_see_grade 조회");
	}
	
	@RequestMapping(value="/admin_product_resv_manage", method=RequestMethod.GET)
	public void admin_product_resv_manage () {
		logger.info("admin_product_resv_manage 조회");
	}
	
	@RequestMapping(value="/admin_refund_manage", method=RequestMethod.GET)
	public void admin_refund_manage () {
		logger.info("admin_refund_manage 조회");
	}
	
	@RequestMapping(value="/admin_withdraw_manage", method=RequestMethod.GET)
	public void admin_withdraw_manage () {
		logger.info("admin_withdraw_manage  조회");
	}

	@RequestMapping(value="/admin_Grade_coupon_setting", method=RequestMethod.GET)
	public void admin_Grade_coupon_setting () {
		logger.info("등급별 쿠폰 설정 admin_Grade_coupon_setting 조회");
	}
	
	@RequestMapping(value="/admin_birth_coupon_setting", method=RequestMethod.GET)
	public void admin_birth_coupon_setting () {
		logger.info("생일 쿠폰 설정 admin_birth_coupon_setting  조회");
	}
	
	@RequestMapping(value="/admin_busi_inquiry_manage", method=RequestMethod.GET)
	public void admin_busi_inquiry_manage () {
		logger.info("기업 문의 관리 admin_busi_inquiry_manage  조회");
	}
	
	@RequestMapping(value="/admin_cus_inquiry_mange", method=RequestMethod.GET)
	public void admin_cus_inquiry_mange () {
		logger.info("고객 문의 관리 admin_cus_inquiry_mange  조회");
	}
	
	@RequestMapping(value="/admin_cus_inquiry_manage", method=RequestMethod.GET)
	public void admin_cus_inquiry_manage() {
		logger.info("고객 문의 관리 admin_cus_inquiry_manage  조회");
	
	}
	@RequestMapping(value="/admin_quick_sale_statistics", method=RequestMethod.GET)
	public void admin_quick_sale_statistics () {
		logger.info("간편 매출 통계 admin_quick_sale_statistics  조회");
	}
	
	@RequestMapping(value="/admin_frequency_product_statistics", method=RequestMethod.GET)
	public void admin_frequency_product_statistics () {
		logger.info("최다 빈도 상품 통계 admin_frequency product statistics  조회");
	}
	
	@RequestMapping(value="/admin_busi_cal_reg", method=RequestMethod.GET)
	public void admin_busi_cal_reg () {
		logger.info("입점 업체 정산 등록 admin_busi_cal_reg  조회");
	}
	@RequestMapping(value="/admin_busi_cal_refund", method=RequestMethod.GET)
	public void admin_busi_cal_refund () {
		logger.info("입점업체 정산 환불 admin_busi_cal_refund 조회");
	}
	
	@RequestMapping(value="/admin_busi_cal_manage", method=RequestMethod.GET)
	public void admin_busi_cal_manage () {
		logger.info("입점 업체 정산 관리 admin_busi_cal_manage 조회");
	}
	
	
	
	
	/*관리자 페이지 완료된거 */ 
	@GetMapping("/admin_join")
	public String join(@ModelAttribute("joinAdminVo") AdminVO adminvo) {
		return "admin/admin_join";
	}
	
	@PostMapping("/admin_join_pro")
	public String join_pro(@Valid @ModelAttribute("joinAdminVo") AdminVO adminvo, BindingResult result) {
		if(result.hasErrors()) {
			return "admin/admin_join";
		}
		
		adminService.addAdmininfo(adminvo);
		return "admin/success/admin_join_success";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		
		AdminValidator validator1 = new AdminValidator();
		
		
		
		binder.addValidators(validator1);
		
		
	}
	
	/*관리자 로그인*/
	@GetMapping("admin_login")
	public String admin_login(@ModelAttribute("tempLoginAdminVO") AdminVO adminvo,
				@RequestParam(value="fail", defaultValue="false") boolean fail, Model model
			) {
		
		model.addAttribute("fail", fail);
		logger.info("관리자 로그인 페이지");
		//System.out.println(adminvo);
		
		return "admin/admin_login";
	}
	
	@PostMapping("admin_login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginAdminVO") AdminVO adminvo, BindingResult result) {
		
		if(result.hasErrors()) {
			return "admin/admin_login";
		}
		
		adminService.getLoginUserInfo(adminvo);
		
		if(loginAdminVO.isAdminLogin() == true) {
			return "admin/success/login_success";
		}else {
		
		return "admin/login_fail";
	}
	}
	
	/*관리자 로그아웃*/
	@GetMapping("admin_logout")
	public String logout() {
		
		loginAdminVO.setAdminLogin(false);
		
		return "admin/admin_main";
	}
	
	@GetMapping("not_login")
	public String not_login() {
		
		return "admin/fail/admin_not_login";
	}
	
	@GetMapping("admin_inf_modify")
	public String admin_inf_modify(@ModelAttribute("admin_info_modify_AdminVO") AdminVO admin_info_modify_AdminVO) {
		
		adminService.getModifyAdminInfo(admin_info_modify_AdminVO);
		return "admin/admin_inf_modify";
	}
	
	@PostMapping("admin_info_modify_pro")
	public String admin_inf_modify_pro(@Valid @ModelAttribute("admin_info_modify_AdminVO") AdminVO admin_info_modify_AdminVO, BindingResult result) {
		
		if(result.hasErrors()) {
			return "admin/admin_inf_modify";
		}
		
		adminService.modifyAdminInfo(admin_info_modify_AdminVO);
		
		return "admin/success/admin_modify_success";
	}


	}

