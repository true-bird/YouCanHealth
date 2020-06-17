package com.matnagu.myHell.routine;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.routine.service.RoutineService;

@Controller
@RequestMapping(value = "/routine")
public class RoutineController {
	
	@Autowired
	private RoutineService routineService;
	// 루틴 상세 화면
	@RequestMapping(value = "/routineDetails")
	public String routineDetails(Model model,
			@RequestParam(value="routineId", required=false) String routineId) {
		int id = Integer.parseInt(routineId);
		List<RoutineDetailDto> routineList = routineService.selectRoutineDetail(id);
		List<RoutineDetailDto>[] routineInfo = new ArrayList[7];
		for(int i=0;i<7;i++) {
			routineInfo[i] = new ArrayList<RoutineDetailDto>();
		}
		
		//Map<String, List<RoutineDetailDto>> routineInfo = new LinkedHashMap<String, List<RoutineDetailDto>>();
		for(RoutineDetailDto dto : routineList) {
			routineInfo[dto.getSportsDay()].add(dto);
		}
		
		model.addAttribute("routineInfo",routineInfo);
		model.addAttribute("routineId", routineId);
		return "routines/routineDetails";
	}	
	
	// 나만의 루틴 만들기
	@RequestMapping(value = "/createCustomRoutine")
	public String createCustomRoutine() {
			return "routines/createCustomRoutine";
	}
	// 나만의 루틴 확인
	@RequestMapping(value = "/checkCustomRoutine")
	public String checkCustomRoutine() {
		return "routines/checkCustomRoutine";
	}
}
