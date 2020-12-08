package com.jh.yogiyo.check;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/check/**")
public class checkController {
	
	@GetMapping("checkoutPage")
	public ModelAndView checkoutPage() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("check/checkoutPage");
		return mv;
	}
}
