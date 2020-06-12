package com.matnagu.myHell.routine;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/routine")
public class RoutineController {
	// ��ƾ��ȭ��
	@RequestMapping(value = "/routineDetails")
	public String routineDetails() {
		return "routines/routineDetails";
	}
	// �����Ƿ�ƾ�����ȭ��
	@RequestMapping(value = "/createCustomRoutine")
	public String createCustomRoutine() {
			return "routines/createCustomRoutine";
	}
	// �����Ƿ�ƾȮ��ȭ��
	@RequestMapping(value = "/checkCustomRoutine")
	public String checkCustomRoutine() {
		return "routines/checkCustomRoutine";
	}
}
