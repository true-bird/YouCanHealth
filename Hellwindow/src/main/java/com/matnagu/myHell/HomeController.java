package com.matnagu.myHell;

import java.util.HashMap;
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
import com.matnagu.myHell.user.dto.UserInitDto;
import com.matnagu.myHell.user.service.UserInitServiceImpl;

@Controller
public class HomeController {
	

	@Autowired
	private IRoutineService routineService;
	
	@Autowired
	private UserInitServiceImpl userInitServiceImpl;
	
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
	
	// 회원가입 축하화면
	@RequestMapping(value = "/signUpResult")
	public ModelAndView signUpResult(@RequestParam HashMap<String,Object> paramMap,
	      @RequestParam("id") String id, Model model) {
		System.out.println("paramMap="+paramMap);
		userInitServiceImpl.insertUserinit(paramMap); //db에 넣을겁니다.
	    UserInitDto userinitDto=userInitServiceImpl.selectUserInit(id);
	    System.out.println(userinitDto);
	    model.addAttribute("userinitDto",userinitDto);
	    ModelAndView mv = new ModelAndView("signUpResult");
	    
	    return mv;
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
