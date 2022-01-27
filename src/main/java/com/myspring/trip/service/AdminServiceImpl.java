package com.myspring.trip.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.trip.mapper.AdminMapper;
import com.myspring.trip.mapper.AttachMapper;
import com.myspring.trip.model.AdminVO;
import com.myspring.trip.model.BoardVO;
import com.myspring.trip.model.CouponVO;
import com.myspring.trip.model.Criteria;
import com.myspring.trip.model.NmemberVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{

	private static final Logger log = LoggerFactory.getLogger(AdminServiceImpl.class);	
	
	@Autowired
	AdminMapper adminMapper;
	
	@Autowired
	AttachMapper attach;
	
	@Resource(name ="loginAdminVO")
	@Lazy
	private AdminVO loginAdminVO;
	
	/*아이디 중복 조회*/
	
	@Override
	public boolean checkUserIdExist(String admin_Id) {
		String admin_id = adminMapper.checkUserIdExist(admin_Id);
		
		if(admin_id == null) {
			return true;
		}else {
			return false;
		}
	}
	/*관리자 회원 가입*/

	@Override
	public void addAdmininfo(AdminVO adminvo) {
		adminMapper.addAdmininfo(adminvo);
	}
	
	
	@Override
	public void getLoginUserInfo(AdminVO tempLoginAdminVO) {
		
		AdminVO tempLoginAdminVO2 = adminMapper.getLoginUserInfo(tempLoginAdminVO);
		
		if(tempLoginAdminVO2 != null) {
			loginAdminVO.setAdmin_name(tempLoginAdminVO2.getAdmin_name());
			loginAdminVO.setAdmin_num(tempLoginAdminVO2.getAdmin_num());
			loginAdminVO.setAdminLogin(true);
			
		}
	}
	
	public void getModifyAdminInfo(AdminVO admin_info_modify_AdminVO) {
		
		AdminVO tempmodifyAdminVO = adminMapper.getModifyAdminInfo(loginAdminVO.getAdmin_num());
		
		admin_info_modify_AdminVO.setAdmin_Id(tempmodifyAdminVO.getAdmin_Id());
		admin_info_modify_AdminVO.setAdmin_name(tempmodifyAdminVO.getAdmin_name());
		admin_info_modify_AdminVO.setAdmin_num(tempmodifyAdminVO.getAdmin_num());
		
		
	}
	
	public void modifyAdminInfo(AdminVO admin_info_modify_AdminVO) {
		
		admin_info_modify_AdminVO.setAdmin_num(loginAdminVO.getAdmin_num());
		
		adminMapper.modifyAdminInfo(admin_info_modify_AdminVO);
	}
	 
	//회원 정보 조회
	@Override
	public List<NmemberVO> selectNMember(NmemberVO nmemberVO) throws Exception{
		
		log.info("(service)selectNMember()......" + nmemberVO);
		
		return adminMapper.selectNMember(nmemberVO);
	}
	
	/*@Override
	public List<CmemberVO> updateCMember(CmemberVO cmemberVO) throws Exception{
		
		log.info("(Service)updateCmember()... " + cmemberVO);
		
		return adminMapper.updateCMember(cmemberVO);
	}
	*/
	
	@Override
	public List<CouponVO> selectCoupon(CouponVO couponvo) throws Exception{
		log.info("(service)selectCoupon)(..." + couponvo);
		
		return adminMapper.selectCoupon(couponvo);
	}
	
	@Override
	public void couponEnroll(CouponVO coupon) {
		log.info("(service)couponEnroll....");
		adminMapper.couponEnroll(coupon);
		
	
	}
	
	@Override
	public void deleteCoupon(CouponVO coupon)throws Exception{
		adminMapper.deleteCoupon(coupon);
	}
	
	/* 게시판 목록(페이징 적용) */
	@Override
	public List<BoardVO> getListPaging(Criteria cri) {
		
		return adminMapper.getListPaging(cri);
	}
	
	/* 공지사항 등록 */
	@Override
	public void notice_write(BoardVO vo) {
		
		adminMapper.notice_write(vo);
		if(vo.getImageList() == null || vo.getImageList().size() <= 0) {
			return;
		}
		vo.getImageList().forEach(attach ->{
			
			attach.setBoard_seq(vo.getBoard_seq());
			adminMapper.imageEnroll(attach);
			
		});
		  
	}  
	/* 공지사항 조회 */
	@Override
	public BoardVO getPage(int board_seq) {
		 
		return adminMapper.getPage(board_seq);
	}
	/* 공지사항 수정 */
	@Transactional
	@Override
	public int admin_modify(BoardVO board) {
		
		int result = adminMapper.admin_modify(board);
		if (result == 1 && board.getImageList() != null && board.getImageList().size() > 0) {

			adminMapper.deleteImageAll(board.getBoard_seq());

			board.getImageList().forEach(attach -> {

				attach.setBoard_seq(board.getBoard_seq());
				adminMapper.imageEnroll(attach);

			});

		}
		return result;
	}
}
