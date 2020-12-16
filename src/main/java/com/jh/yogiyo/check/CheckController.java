package com.jh.yogiyo.check;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jh.yogiyo.member.MemberService;
import com.jh.yogiyo.member.MemberVO;
import com.jh.yogiyo.mypage.CouponVO;
import com.jh.yogiyo.store.CartVO;

@Controller
@RequestMapping("/check/**")
public class CheckController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("checkoutPage")
	public ModelAndView checkoutPage(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO member = (MemberVO)session.getAttribute("member");
		List<CartVO> ar = orderService.getList2(member);
		long totalPrice = 0;
		String orderContents = "";
		for(CartVO vo : ar) {
			totalPrice += vo.getPrice();
			orderContents += vo.getMenuName();
			orderContents += " X ";
			orderContents += vo.getCount()+"개";
			orderContents += ", ";
		}
		List<CouponVO> couponAr = orderService.getCouponList(member);
		mv.addObject("list", ar);
		mv.addObject("totalPrice", totalPrice);
		mv.addObject("orderContents", orderContents);
		mv.addObject("couponList", couponAr);
		mv.setViewName("check/checkoutPage");
		System.out.println("CheckoutPage");
		return mv;
	}
	
	@PostMapping("checkOut")
	public ModelAndView checkOut(OrderListVO orderListVO, String detailAddress, long usepoint, long couponNum) throws Exception{
		ModelAndView mv = new ModelAndView();
		String address = orderListVO.getAddress();
		address = address + " " + detailAddress; //상세 주소와 주소 합쳐서 다시 입력
		orderListVO.setAddress(address);
		
		CouponVO couponVO = new CouponVO();
		couponVO.setCouponNum(couponNum);
		couponVO = orderService.getCoupon(couponVO); // 사용할 쿠폰을 가져옴
		if(couponVO == null) {
			couponVO = new CouponVO();
			couponVO.setPrice(0);
		}
		long totalPrice = orderListVO.getTotalPrice() - usepoint - couponVO.getPrice(); // 총 가격에서 사용point와 쿠폰가격을 마이너스
		
		orderListVO.setTotalPrice(totalPrice);
		
		mv.addObject("usepoint", usepoint);
		mv.addObject("couponNum", couponNum);
		mv.addObject("dto", orderListVO);
		mv.setViewName("check/checkOut");//아임포트 결제 페이지로 이동
		return mv;
	}
	
	@PostMapping("insertOrderList")//결제가 완료될경우 ajax를 통해 넘어옴
	public ModelAndView insertOrderList(OrderListVO orderListVO, HttpSession session, long usepoint, long couponNum) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = orderService.insertOrderList(orderListVO);
		
		CouponVO couponVO = new CouponVO();
		couponVO.setCouponNum(couponNum);
		result = orderService.setUseCoupon(couponVO);//사용된 쿠폰을 사용된 것으로 처리함
		
		MemberVO memberVO = new MemberVO();
		memberVO.setId(orderListVO.getId());
		memberVO.setPoint(usepoint);
		result = orderService.setUsePoint(memberVO);//결제한 아이디에서 사용point만큼 차감함
		
		
		memberVO.setPoint(orderListVO.getTotalPrice()/1000*5);//결제 가격에서 0.5%만큼 적립함
		result = orderService.setPoint(memberVO);
		
		
		long point = orderService.getPoint(memberVO);
		memberVO = (MemberVO)session.getAttribute("member");
		memberVO.setPoint(point);//session에 point를 반영함
		session.setAttribute("member", memberVO);
		
		return mv;
	}
}
