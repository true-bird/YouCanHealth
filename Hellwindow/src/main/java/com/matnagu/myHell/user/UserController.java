package com.matnagu.myHell.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	// 내정보수정화면
	@RequestMapping(value = "/updateUserInfo")
	public String updateUserInfo() {
		return "users/updateUserInfo";
	}
	// 내운동목록화면
	@RequestMapping(value = "/userFavoriteSports")
	public String userFavoriteSports() {
		return "users/userFavoriteSports";
	}
	// 내루틴목록화면
	@RequestMapping(value = "/userRoutineList")
	public String userRoutineList() {
		return "users/userRoutineList";
	}
	// 루틴상세화면
	@RequestMapping(value = "/userRoutineDetails")
	public String userRoutineDetails() {
		return "users/userRoutineDetails";
	}
}
