package com.matnagu.myHell.user;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.matnagu.myHell.user.dto.UserDto;
import com.matnagu.myHell.user.service.IUserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private IUserService userServiceImpl;
	
	/*---------- 구현 예정 ----------*/
	// 내 정보 수정 화면
	@RequestMapping(value = "/updateUserInfo")
	public String updateUserInfo() {
		return "users/updateUserInfo";
	}
	// 내가 좋아하는 운동 화면
	@RequestMapping(value = "/userFavoriteSports")
	public String userFavoriteSports() {
		return "users/userFavoriteSports";
	}
	// 내 루틴 목록 화면
	@RequestMapping(value = "/userRoutineList")
	public String userRoutineList() {
		return "users/userRoutineList";
	}
	// 내 루틴 상세 화면
	@RequestMapping(value = "/userRoutineDetails")
	public String userRoutineDetails() {
		return "users/userRoutineDetails";
	}
	
	
	
	/*---------- 동훈 ----------*/
	// 내 정보 화면
	@RequestMapping(value = "/userInfo")
	public ModelAndView selectUserInfo(HttpServletRequest request, Model model) {
		HttpSession session=request.getSession();
	    String id = ((Map<String,String>)session.getAttribute("userInfo")).get("userId");
	    System.out.println("idd!!"+id);
	    UserDto userinitDto = userServiceImpl.selectUserId(id);
	    model.addAttribute("userinitDto",userinitDto);
	    ModelAndView mv = new ModelAndView("users/userInfo");
	    return mv;
	}
	/*------------------------*/
}
