package com.matnagu.myHell.routine;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/routine")
public class RoutineController {
	// 루틴상세화면
	@RequestMapping(value = "/routineDetails")
	public String routineDetails() {
		return "routines/routineDetails";
	}
	// 나만의루틴만들기화면
	@RequestMapping(value = "/createCustomRoutine")
	public String createCustomRoutine() {
			return "routines/createCustomRoutine";
	}
	// 나만의루틴확인화면
	@RequestMapping(value = "/checkCustomRoutine")
	public String checkCustomRoutine() {
		return "routines/checkCustomRoutine";
	}
}
