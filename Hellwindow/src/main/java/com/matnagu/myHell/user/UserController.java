package com.matnagu.myHell.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.matnagu.myHell.user.dto.UserDto;
import com.matnagu.myHell.user.service.UserServiceImpl;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	
	// ����������ȭ��
	@RequestMapping(value = "/updateUserInfo")
	public String updateUserInfo() {
		return "users/updateUserInfo";
	}
	// ������ȭ��
	@RequestMapping(value = "/userFavoriteSports")
	public String userFavoriteSports() {
		return "users/userFavoriteSports";
	}
	// ����ƾ���ȭ��
	@RequestMapping(value = "/userRoutineList")
	public String userRoutineList() {
		return "users/userRoutineList";
	}
	// ��ƾ��ȭ��
	@RequestMapping(value = "/userRoutineDetails")
	public String userRoutineDetails() {
		return "users/userRoutineDetails";
	}
	
	/* 신동훈 */
	@RequestMapping(value = "/userInfo")
	public ModelAndView selectUserInfo(HttpServletRequest request, Model model) {
		HttpSession session=request.getSession();
	    String id=(String)session.getAttribute("myId2");
	    System.out.println(id);
	    UserDto userinitDto=userServiceImpl.selectUserInfo(id);
	    System.out.println(userinitDto);
	    model.addAttribute("userinitDto",userinitDto);
	    ModelAndView mv = new ModelAndView("users/userInfo");
	    return mv;
	}
}
