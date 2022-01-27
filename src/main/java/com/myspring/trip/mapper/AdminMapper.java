package com.myspring.trip.mapper;

import java.util.List;

import com.myspring.trip.model.AdminVO;
import com.myspring.trip.model.AttachImageVO;
import com.myspring.trip.model.BoardVO;
import com.myspring.trip.model.CouponVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.NmemberVO;

public interface AdminMapper {

	
	public List<NmemberVO> selectNMember(NmemberVO nmemberVO);
	
	//public List<CmemberVO> updateCMember(CmemberVO cmemberVO);
	
	public List<CouponVO> selectCoupon(CouponVO couponvo);

	public void couponEnroll(CouponVO coupon);
	
	public void deleteCoupon(CouponVO coupon);
	
	/* 공지사항 게시판 목록(페이징 적용) */
    public List<BoardVO> getListPaging(Criteria cri);
    
    /* 공지사항 게시판 등록 */
	public void notice_write(BoardVO board);
	
	/* 게시판 조회 */
	public BoardVO getPage(int board_seq);
	
	/* 게시판 수정 */
	public int admin_modify(BoardVO board);
	
	/* 이미지 등록 */
	public void imageEnroll(AttachImageVO vo);
	
	/* 지정 상품 이미지 전체 삭제 */
	public void deleteImageAll(int board_seq);
	
	/* 어제자 날짜 이미지 리스트 */
	public List<AttachImageVO> checkFileList();
	
	/*중복체크*/
	public String checkUserIdExist(String admin_Id);
	
	/*관리자 회원 가입*/
	public void addAdmininfo(AdminVO joinAdminVo); 
	
	public AdminVO getLoginUserInfo(AdminVO tempLoginAdminVO);
	
	

	public AdminVO getModifyAdminInfo(int admin_num);
	
	public void modifyAdminInfo(AdminVO admin_info_modify_AdminVO);
	
}
