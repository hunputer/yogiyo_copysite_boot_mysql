package com.jh.yogiyo.check;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/check/**")
public class CheckController {
	
	@GetMapping("checkoutPage")
	public ModelAndView checkoutPage() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("check/checkoutPage");
		System.out.println("CheckoutPage");
		return mv;
	}
	
	@PostMapping("checkOut")
	public ModelAndView checkOut(OrderListVO orderListVO, String detailAddress, String phone, int payMethod, String[] productName, String[] productCount, String comments) throws Exception{
		ModelAndView mv = new ModelAndView();
		String address = orderListVO.getAddress();
		address = address + " " + detailAddress;
		String orderContents = "";
		for(int i = 0; i < productName.length; i++) {
			orderContents += productName[i];
			orderContents += " X ";
			orderContents += productCount[i]+"개";
			if(i != productName.length-1) {
				orderContents += ", ";
			}
		}
		System.out.println(orderContents);
		orderListVO.setOrderContents(orderContents);
		return mv;
	}
}
