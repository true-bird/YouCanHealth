package com.matnagu.myHell.community.comment;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.matnagu.myHell.community.comment.dto.CommentDto;
import com.matnagu.myHell.community.comment.service.ICommentService;
import com.matnagu.myHell.community.dto.CommunityDto;
import com.matnagu.myHell.community.service.ICommunityService;
import com.matnagu.myHell.user.dto.UserDto;
import com.matnagu.myHell.user.service.IUserService;

@Controller
public class CommentController {

	@Autowired
	private ICommentService commentServiceImpl;
	@Autowired
	private ICommunityService communityServiceImpl;
	@Autowired
	private IUserService userServiceImpl;
	
	// 댓글 추가
	@RequestMapping(value = "/community/createComment")
	public ModelAndView insertCommentset(@RequestParam HashMap<String,String> paramMap, RedirectAttributes redirectAttributes) {
		commentServiceImpl.insertComment(paramMap);
		redirectAttributes.addAttribute("seq", paramMap.get("communitySeq"));
		ModelAndView mv = new ModelAndView("redirect:/community/readPost");
		return mv;
	}
	
	// 댓글 삭제
	@RequestMapping(value = "/community/deleteComment")
	public ModelAndView doCommentDelet(@RequestParam("seq") int seq,@RequestParam("userseq") int userseq ,Model model,HttpServletRequest request) {
		commentServiceImpl.deleteComment(userseq);
		CommunityDto communityDto = communityServiceImpl.selectCommunity(seq); // 해당 글 내용 담기
		communityServiceImpl.updateHit(seq);
		model.addAttribute("communityDto", communityDto);
		HttpSession session=request.getSession();
		UserDto userDto = userServiceImpl.selectUserId((String)session.getAttribute("userId")); //세션 정보를 받아서 같은 아이디 정보 가져오기
		model.addAttribute("userDto", userDto);
		List<CommentDto> commentList = commentServiceImpl.selectCommentAllList(seq);// 글에 해당하는 댓글 담기
		if (commentList.size() > 0) model.addAttribute("list", commentList);
		ModelAndView mv = new ModelAndView("community/readPost");
		return mv;
	}

}
