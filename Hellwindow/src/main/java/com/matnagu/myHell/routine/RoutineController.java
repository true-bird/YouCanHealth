package com.matnagu.myHell.routine;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.matnagu.myHell.routine.dto.RoutineDetailDto;
import com.matnagu.myHell.routine.dto.RoutineDto;
import com.matnagu.myHell.routine.service.IRoutineService;
import com.matnagu.myHell.sports.dto.SportsDto;
import com.matnagu.myHell.sports.service.ISportsService;

@Controller
@RequestMapping(value = "/routine")
public class RoutineController {

	@Autowired
	private IRoutineService routineService;

	@Autowired
	private ISportsService sportsServiceImpl;

	// 루틴 화면
	@RequestMapping(value = "")
	public String routines(Model model) {
		List<RoutineDto> routineList = routineService.selectRoutineList("인기");
		model.addAttribute("routineList", routineList);
		model.addAttribute("category", "인기");
		return "routines/routineList";
	}

	// 루틴 리스트
	@RequestMapping(value = "/routineList")
	public String routinesAj(Model model, @RequestParam(value = "category", required = true) String category) {
		List<RoutineDto> routineList = routineService.selectRoutineList(category.split(" ")[0]);
		model.addAttribute("routineList", routineList);
		model.addAttribute("category", category);
		return "routines/routineListContent";
	}

	// 루틴 상세 화면
	@RequestMapping(value = "/routineDetails")
	public String routineDetails(Model model, @RequestParam HashMap<String, String> paramMap) {
		int id = Integer.parseInt(paramMap.get("routineId"));
		List<RoutineDetailDto> routineList = routineService.selectRoutineDetail(id);
		List<List<RoutineDetailDto>> routineInfo = new ArrayList<List<RoutineDetailDto>>();
		for (int i = 0; i < 7; i++)
			routineInfo.add(new ArrayList<RoutineDetailDto>());
		for (RoutineDetailDto dto : routineList)
			routineInfo.get(dto.getSportsDay()).add(dto);
		Map<String, String> routine = new HashMap<String, String>();
		routine.put("category", paramMap.get("routineCategory"));
		routine.put("id", paramMap.get("routineId"));
		routine.put("name", paramMap.get("routineName"));
		routine.put("difficulty", paramMap.get("routineDifficulty"));
		model.addAttribute("url", paramMap.get("url"));
		if (paramMap.containsKey("url"))
			model.addAttribute("url", paramMap.get("url"));
		if (paramMap.containsKey("msg"))
			model.addAttribute("msg", paramMap.get("msg"));
		model.addAttribute("routineInfo", routineInfo);
		model.addAttribute("routine", routine);
		return "routines/routineDetails";
	}

	// 커스텀 루틴 상세 화면
	@RequestMapping(value = "/customRoutineDetails")
	public String customRoutineDetails(Model model, @RequestParam HashMap<String, String> paramMap) {
		int id = Integer.parseInt(paramMap.get("routineId"));
		List<RoutineDetailDto> routineList = routineService.selectCustomRoutineDetail(id);
		List<List<RoutineDetailDto>> routineInfo = new ArrayList<List<RoutineDetailDto>>();
		for (int i = 0; i < 7; i++)
			routineInfo.add(new ArrayList<RoutineDetailDto>());
		for (RoutineDetailDto dto : routineList) routineInfo.get(dto.getSportsDay()).add(dto);
		Map<String, String> routine = new HashMap<String, String>();
		routine.put("id", paramMap.get("routineId"));
		routine.put("name", paramMap.get("routineName"));
		model.addAttribute("routineInfo", routineInfo);
		model.addAttribute("routine", routine);
		return "users/userRoutineDetails";
	}

	// 나만의 루틴 만들기
	@RequestMapping(value = "/createCustomRoutine")
	public String createCustomRoutine(Model model) {
		// 가슴목록
		List<SportsDto> sportsChestList = sportsServiceImpl.selectChestList();
		// 등목록
		List<SportsDto> sportsBackList = sportsServiceImpl.selectBackList();
		// 어깨목록
		List<SportsDto> sportsShoulderList = sportsServiceImpl.selectShoulderList();
		// 복부목록
		List<SportsDto> sportsAbsList = sportsServiceImpl.selectAbsList();
		// 하체목록
		List<SportsDto> sportsLowerList = sportsServiceImpl.selectLowerList();
		char[] week = { '월', '화', '수', '목', '금', '토', '일' };
		model.addAttribute("chest", sportsChestList);
		model.addAttribute("back", sportsBackList);
		model.addAttribute("shoulder", sportsShoulderList);
		model.addAttribute("abs", sportsAbsList);
		model.addAttribute("lower", sportsLowerList);
		model.addAttribute("week", week);

		return "routines/createCustomRoutine";
	}

	// 나만의 루틴 확인
	@RequestMapping(value = "/checkCustomRoutine")
	public String checkCustomRoutine(@RequestParam HashMap<String, String> param, HttpSession session, Model model)
			throws JsonParseException, JsonMappingException, IOException {
		String rountineStr = param.get("target");
		ObjectMapper obm = new ObjectMapper();
		List<List<List<String>>> routine = obm.readValue(rountineStr, new TypeReference<List>() {
		});
		String userSeq = ((Map<String, String>) session.getAttribute("userInfo")).get("userSeq");

		Map<String, String> map = new HashMap<String, String>();
		map.put("userSeq", userSeq);
		map.put("routineName", param.get("routineName"));
		System.out.println(map.get("userSeq"));
		System.out.println(map.get("routineName"));

		routineService.createCustomRoutine(map);
		String routineId = routineService.selectCustomRoutine(map);
		routineService.insertCustomRoutineDetail(routine, routineId);

		return "redirect:/user/userRoutineList";
	}

}
