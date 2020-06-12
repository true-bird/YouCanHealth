package com.matnagu.myHell.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/community")
public class CommunityController {
	// 글쓰기
	@RequestMapping(value = "/createPost")
	public String createPost() {
		return "community/createPost";
	}
	// 글읽기
	@RequestMapping(value = "/readPost")
	public String readPost() {
		return "community/readPost";
	}
	
	// 공지사항
	@RequestMapping(value = "/Notice")
	public String notice() {
		return "community/Notice";
	}
	// 운동꿀팁
	@RequestMapping(value = "/HoneyTip")
	public String honeyTip() {
		return "community/HoneyTip";
	}
	// 잡담
	@RequestMapping(value = "/PassTime")
	public String passTime() {
		return "community/PassTime";
	}
}
