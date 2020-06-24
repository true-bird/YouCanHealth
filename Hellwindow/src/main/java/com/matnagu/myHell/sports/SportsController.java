package com.matnagu.myHell.sports;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.matnagu.myHell.sports.dto.SportsDto;
import com.matnagu.myHell.sports.service.ISportsService;

@Controller
@RequestMapping(value = "/sports")
public class SportsController {

	@Autowired
	private ISportsService sportsServiceImpl;

	// 운동 화면
	@RequestMapping(value = "")
	public String sports(Model model) {
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
		model.addAttribute("chest", sportsChestList);
		model.addAttribute("back", sportsBackList);
		model.addAttribute("shoulder", sportsShoulderList);
		model.addAttribute("abs", sportsAbsList);
		model.addAttribute("lower", sportsLowerList);
		return "sports/sportsList";
	}

	// 운동 상세정보 화면
	@RequestMapping(value = "/sportsDetails")
	public String sportsDetails(@RequestParam HashMap<String, String> paramMap,
			Model model) {
		int seq = Integer.parseInt(paramMap.get("seq"));
		SportsDto SportsDto = sportsServiceImpl.selectSportsInfo(seq);
		model.addAttribute("SportsDto", SportsDto);
		if(paramMap.containsKey("msg")) model.addAttribute("msg", paramMap.get("msg"));
		return "sports/sportsDetails";
	}

}
