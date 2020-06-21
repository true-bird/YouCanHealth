package com.matnagu.myHell.routine;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.routine.service.IRoutineService;

@Controller
@RequestMapping(value = "/routine")
public class RoutineController {
	
	@Autowired
	private IRoutineService routineService;
	
	// 루틴 화면
	@RequestMapping(value = "")
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
	
	// 루틴 상세 화면
	@RequestMapping(value = "/routineDetails")
	public String routineDetails(Model model,
		@RequestParam HashMap<String, String> paramMap) {
		int id = Integer.parseInt(paramMap.get("routineId"));
		List<RoutineDetailDto> routineList = routineService.selectRoutineDetail(id);
		List<List<RoutineDetailDto>> routineInfo = new ArrayList<List<RoutineDetailDto>>();
		for(int i=0;i<7;i++) routineInfo.add(new ArrayList<RoutineDetailDto>());
		for(RoutineDetailDto dto : routineList) routineInfo.get(dto.getSportsDay()).add(dto);
		Map<String, String> routine = new HashMap<String, String>();
		routine.put("category",paramMap.get("routineCategory"));
		routine.put("id",paramMap.get("routineId"));
		routine.put("name",paramMap.get("routineName"));
		routine.put("difficulty",paramMap.get("routineDifficulty"));
		model.addAttribute("url",paramMap.get("url"));
		model.addAttribute("routineInfo",routineInfo);
		model.addAttribute("routine",routine); 
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
