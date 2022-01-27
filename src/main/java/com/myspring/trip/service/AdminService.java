package com.myspring.trip.service;

import java.util.List;

import com.myspring.trip.model.AdminVO;
import com.myspring.trip.model.BoardVO;
import com.myspring.trip.model.CouponVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.NmemberVO;

public interface AdminService {
	
	public List<NmemberVO> selectNMember(NmemberVO nmemberVO) throws Exception;
	
	//public List<CmemberVO> updateCMember(CmemberVO cmemberVO) throws Exception;
	
	public List<CouponVO> selectCoupon(CouponVO couponvo) throws Exception;
	
	public void couponEnroll(CouponVO coupon)throws Exception;
	
	public void deleteCoupon(CouponVO coupon)throws Exception;
	
	public List<BoardVO> getListPaging(Criteria cri);
	
	public void notice_write(BoardVO board);
	
	public BoardVO getPage(int board_seq);
	
	public int admin_modify(BoardVO board);
	
public boolean checkUserIdExist(String admin_Id);
	


	public void addAdmininfo(AdminVO adminvo);

	public void getLoginUserInfo(AdminVO tempLoginAdminVO);
	
	public void getModifyAdminInfo(AdminVO admin_info_modify_AdminVO);
	
	public void modifyAdminInfo(AdminVO admin_info_modify_AdminVO);
}
