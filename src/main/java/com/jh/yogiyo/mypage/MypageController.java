package com.jh.yogiyo.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jh.yogiyo.check.OrderListVO;
import com.jh.yogiyo.check.OrderService;
import com.jh.yogiyo.member.MemberVO;
import com.jh.yogiyo.store.StoreService;
import com.jh.yogiyo.store.detail.ReviewFileVO;
import com.jh.yogiyo.store.detail.StoreDetailService;
import com.jh.yogiyo.store.detail.StoreReviewVO;

@Controller
@RequestMapping("/mypage/**")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private StoreDetailService storeDetailService;
	
	@GetMapping("")
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/mypage");
		return mv;
	}
	
	@PostMapping("setUpdate")
	public ModelAndView setUpdate(MemberVO memberVO ,String detailAddress ,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		String address = memberVO.getAddress();
		address = address + " " + detailAddress;
		memberVO.setAddress(address);
		int result = mypageService.setUpdate(memberVO, session);
		String msg ="회원정보를 수정하였습니다";
		mv.addObject("msg", msg);
		mv.addObject("path","../mypage");
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("mypagePoint")
	public ModelAndView mypagePoint() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/mypagePoint");
		return mv;
	}
	
	@GetMapping("mypageLevel")
	public ModelAndView mypageLevel() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/mypageLevel");
		return mv;
	}
	
	@GetMapping("mypageOrder")
	public ModelAndView mypageOrder(HttpSession httpSession) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO member = (MemberVO)httpSession.getAttribute("member");
		List<OrderListVO> ar = orderService.getList(member);
		mv.addObject("list", ar);
		mv.setViewName("mypage/mypageOrder");
		return mv;
	}
	
	@GetMapping("setReviewInsert")
	public ModelAndView setReviewInsert(OrderListVO orderListVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		OrderListVO vo = orderService.getOne(orderListVO);
		mv.addObject("vo", vo);
		mv.setViewName("mypage/mypageReview");
		return mv;
	}
	
	@PostMapping("setReviewInsert")
	public ModelAndView setReviewInsert(StoreReviewVO storeReviewVO, MultipartFile file) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = storeDetailService.setReviewInsert(storeReviewVO, file);
		String msg = "리뷰 입력이 완료되었습니다";
		mv.addObject("msg", msg);
		mv.setViewName("mypage/mypageClose");
		return mv;
	}
	
}
