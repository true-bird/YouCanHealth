package com.matnagu.myHell.sports;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.matnagu.myHell.sports.dto.SportsDto;
import com.matnagu.myHell.sports.dto.SportsLikeDto;
import com.matnagu.myHell.sports.service.ISportsService;

@Controller
@RequestMapping(value = "/sports")
public class SportsController {

	@Autowired
	private ISportsService sportsService;

	// 운동 화면
	@RequestMapping(value = "")
	public String sports(Model model) {
		// 가슴목록
		List<SportsDto> sportsChestList = sportsService.selectChestList();
		// 등목록
		List<SportsDto> sportsBackList = sportsService.selectBackList();
		// 어깨목록
		List<SportsDto> sportsShoulderList = sportsService.selectShoulderList();
		// 복부목록
		List<SportsDto> sportsAbsList = sportsService.selectAbsList();
		// 하체목록
		List<SportsDto> sportsLowerList = sportsService.selectLowerList();
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
		SportsDto SportsDto = sportsService.selectSportsInfo(seq);
		model.addAttribute("SportsDto", SportsDto);
		model.addAttribute("message", paramMap.get("message"));
		if(paramMap.containsKey("msg")) model.addAttribute("msg", paramMap.get("msg"));
		return "sports/sportsDetails";
	}

	@RequestMapping(value = "/SportsLike") // 내가 좋아하는 운동
	public String selectSportsLike(@RequestParam HashMap<String, String> sportLike,
			@RequestParam("sportsName") String sportsName, @RequestParam("seq") int seq, Model model) {
		int i = 0;
		// 내가좋아하는 운동 조회
		List<SportsLikeDto> sportsLikeList = sportsService.selectSportsLikeList(sportLike);
		while (i < sportsLikeList.size()) {
			if (sportsName.equals(sportsLikeList.get(i).getExName())) {

				String message = "hasSports";

				model.addAttribute("message", message);
				model.addAttribute("seq", seq);
				return "redirect:/sports/sportsDetails";
			}
			i++;
		}
		
		sportsService.insertSportsLike(sportLike);
		SportsLikeDto nSports =  new SportsLikeDto();
		nSports.setSeq(Integer.parseInt(sportLike.get("seq")));
		nSports.setId(sportLike.get("userId"));
		nSports.setExName(sportLike.get("sportsName"));
		sportsLikeList.add(nSports);
		model.addAttribute("sportsLike", sportsLikeList);
		return "redirect:/user/userFavoriteSports";
	}
	
	
}
