package com.jh.yogiyo.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jh.yogiyo.member.MemberVO;

@Controller
@RequestMapping("/mypage/**")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
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
}
