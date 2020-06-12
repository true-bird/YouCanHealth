package com.matnagu.myHell;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	// 홈
	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}
	// 로그인
	@RequestMapping(value = "/signIn")
	public String signIn() {
		return "signIn";
	}
	// 커뮤니티
	@RequestMapping(value = "/community")
	public String community() {
		return "community/postList";
	}
	
	
	// ***** 진희
	// 로그인 확인
	@RequestMapping(value = "/loginCheck")
	public String doIoginCheck(HttpServletRequest request, Model model) {
		String myId = (String) request.getParameter("myId"); // 아이디 값
		String myPassword = (String) request.getParameter("myPassword");// 페스워드 값
		model.addAttribute("myId", myId); // 아이디 추가
		model.addAttribute("myPassword", myPassword); // 페스워드 추가
		return "signInCheck";
	}
	@RequestMapping(value = "/logout") // 로그아웃
	public ModelAndView doLogout() {
		ModelAndView mv = new ModelAndView("signOut");
		return mv;
	}
	// *****
	
	
	
	// 회원가입
	@RequestMapping(value = "/signUp")
	public String signUp() {
		return "signUp";
	}
	// 회원가입 축하화면
	@RequestMapping(value = "/signUpResult")
	public String signUpResult(HttpServletRequest request,Model model) {
		
		String id = request.getParameter("myId");
		String password = request.getParameter("myPassword");
		String name = request.getParameter("MyName");
		String exerdateArray[] = request.getParameterValues("exerdate");
		
		model.addAttribute("myId", id);
		model.addAttribute("myPassword", password);
		model.addAttribute("myName", name);
		model.addAttribute("exerdate", exerdateArray);
		System.out.println(id);
		System.out.println(password);
		System.out.println(name);
		System.out.println(exerdateArray);
		return "signUpResult";
	}
	// 운동방법
	@RequestMapping(value = "/sports")
	public String sports() {
		return "sports/sportsList";
	}
	// 루틴
	@RequestMapping(value = "/routines")
	public String routines() {
		return "routines/routineList";
	}
	// 내정보
	@RequestMapping(value = "/userInfo")
	public String userInfo() {
		return "users/userInfo";
	}
	
}
