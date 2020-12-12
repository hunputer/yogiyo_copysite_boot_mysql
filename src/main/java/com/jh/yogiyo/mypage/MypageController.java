package com.jh.yogiyo.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mypage/**")
public class MypageController {
	
	@GetMapping("")
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage/mypage");
		return mv;
	}
}
