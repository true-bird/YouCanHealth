package com.matnagu.myHell.sports;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/sports")
public class SportsController {
	
	// ���
	@RequestMapping(value = "/sportsDetails")
	public String sportsDetails() {
		return "sports/sportsDetails";
	}
}
