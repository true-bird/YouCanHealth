package com.matnagu.myHell;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.routine.service.IRoutineService;
import com.matnagu.myHell.routine.service.RoutineService;

@Controller
public class HomeController {
	

	@Autowired
	private IRoutineService routineService;
	
	// 홈 화면
	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}
	// 로그인 화면
	@RequestMapping(value = "/signIn")
	public String signIn() {
		return "signIn";
	}
	// 커뮤니티 화면
	@RequestMapping(value = "/community")
	public String community() {
		return "community/postList";
	}
	
	
	// ***** 진희
	// 로그인 체크
	@RequestMapping(value = "/loginCheck")
	public String doIoginCheck(HttpServletRequest request, Model model) {
		String myId = (String) request.getParameter("myId"); // ���̵� ��
		String myPassword = (String) request.getParameter("myPassword");// �佺���� ��
		model.addAttribute("myId", myId); // ���̵� �߰�
		model.addAttribute("myPassword", myPassword); // �佺���� �߰�
		return "signInCheck";
	}
	// 로그아웃
	@RequestMapping(value = "/logout")
	public ModelAndView doLogout() {
		ModelAndView mv = new ModelAndView("signOut");
		return mv;
	}
	// *****
	
	
	
	// 회원 가입 화면
	@RequestMapping(value = "/signUp")
	public String signUp() {
		return "signUp";
	}
	
	// 회원 가입 결과 화면
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
	
	// 운동 화면
	@RequestMapping(value = "/sports")
	public String sports() {
		return "sports/sportsList";
	}
	
	// 루틴 화면
	@RequestMapping(value = "/routines")
	public String routines(Model model) {
		List<RoutineDto> routineList = routineService.selectRoutineList("인기");
		model.addAttribute("routineList",routineList);
		model.addAttribute("category","인기");
		return "routines/routineList";
	}
	
	// 루틴 리스트	
	@RequestMapping(value = "/routineList")
	public String routinesAj(Model model,
			@RequestParam(value="category", required=true) String category) {
		List<RoutineDto> routineList = routineService.selectRoutineList(category.split(" ")[0]);
		model.addAttribute("routineList",routineList);
		model.addAttribute("category",category);
		return "routines/routineListContent";
	}
	
	// 내정보
	@RequestMapping(value = "/userInfo")
	public String userInfo() {
		return "users/userInfo";
	}
	
}
