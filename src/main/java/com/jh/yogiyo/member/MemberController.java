package com.jh.yogiyo.member;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.json.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;


@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Autowired
	public MemberService memberService;
	
	@GetMapping("memberLogin")
	public ModelAndView memberLogin() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberLoginForm");
		return mv;
	}
	
	@PostMapping("memberLogin")
	public ModelAndView memberLogin(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO member = memberService.getOne(memberVO);
		session.setAttribute("member", member);
		String msg = "";
		String path = "";
		if(member != null) {
			msg = member.getName()+"님 환영합니다!";
			path = "../";
		}else{
			msg = "아이디 또는 비밀번호가 일치하지 않습니다";
			path = "./memberLogin";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", path);
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("memberLogout")
	public ModelAndView memberLogout(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		String msg = "로그아웃 되었습니다";
		String path = "home";
		mv.addObject("msg", msg);
		mv.addObject("path", path);
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("memberJoin")
	public ModelAndView memberJoin() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberJoin");
		return mv;
	}
	
	@PostMapping("memberJoin")
	public ModelAndView memberJoin(MemberVO memberVO, String detailAddress) throws Exception{
		ModelAndView mv = new ModelAndView();
		String address = memberVO.getAddress() + " " + detailAddress;
		memberVO.setAddress(address);
		int result = memberService.setInsert(memberVO);
		String msg = "";
		if(result == 1) {
			msg = "회원가입이 완료되었습니다.";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/result");
		return mv;
	}
	
	@PostMapping("memberIdCheck")
	public ModelAndView memberIdCheck(MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO member = memberService.getIdCheck(memberVO);
		String msg = "중복된 아이디입니다";
		if(member == null) {
			msg = "사용가능한 아이디입니다";
		}
		mv.addObject("msg", msg);
		mv.setViewName("member/memberIdCheck");
		return mv;
	}
	
	@PostMapping("kakaoLogin")
	public ModelAndView kakaoLogin(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		session.setAttribute("member", memberVO);
		return mv;
	}
	
	@GetMapping("loginMsg")
	public ModelAndView loginMsg(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		String msg =memberVO.getName()+"님 환영합니다!";
		mv.addObject("msg", msg);
		mv.addObject("path","../");
		mv.setViewName("common/result");
		
		return mv;
	}
}
