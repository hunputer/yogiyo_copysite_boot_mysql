package com.jh.yogiyo.check;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jh.yogiyo.member.MemberVO;
import com.jh.yogiyo.store.CartVO;

@Controller
@RequestMapping("/check/**")
public class CheckController {
	
	@Autowired
	private OrderService orderService;
	
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
		mv.addObject("list", ar);
		mv.addObject("totalPrice", totalPrice);
		mv.addObject("orderContents", orderContents);
		mv.setViewName("check/checkoutPage");
		System.out.println("CheckoutPage");
		return mv;
	}
	
	@PostMapping("checkOut")
	public ModelAndView checkOut(OrderListVO orderListVO, String detailAddress) throws Exception{
		ModelAndView mv = new ModelAndView();
		String address = orderListVO.getAddress();
		address = address + " " + detailAddress;
		orderListVO.setAddress(address);
		mv.addObject("dto", orderListVO);
		mv.setViewName("check/checkOut");
		return mv;
	}
	
	@PostMapping("insertOrderList")
	public ModelAndView insertOrderList(OrderListVO orderListVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = orderService.insertOrderList(orderListVO);
		return mv;
	}
}
