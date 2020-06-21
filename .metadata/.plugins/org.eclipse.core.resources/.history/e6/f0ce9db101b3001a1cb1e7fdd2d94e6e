package com.matnagu.myHell.sports;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.matnagu.myHell.sports.dto.SportsDto;
import com.matnagu.myHell.sports.service.SportsServiceImpl;

@Controller
@RequestMapping(value = "/sports")
public class SportsController {
	

	@Autowired
	private SportsServiceImpl sportsServiceImpl;
	
	// 운동상세정보 페이지
	@RequestMapping(value = "/sportsDetails")
	public String sportsDetails(@RequestParam("seq") int seq, Model model) {
		System.out.println("seq=" + seq);

		SportsDto SportsDto = sportsServiceImpl.selectSportsInfo(seq);
		model.addAttribute("SportsDto", SportsDto);

		return "sports/sportsDetails";
	}
}
