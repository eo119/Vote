package vote.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import vote.model.DAO.VoteDAO;
import vote.model.entity.VoteObj;




@Controller
@RequestMapping("/vote")
public class VoteController {

	@Autowired
	private VoteDAO voteDAO;
	
	//登入頁網址進入
	@GetMapping("/login")
	public String loginPage(HttpSession session) {
		return "login";
	}
	
	//使用者介面
	@GetMapping("/voting")
	public String votingPage(HttpSession session,Model model) {
		List<VoteObj> voteList=voteDAO.findAllVoteLists();
		model.addAttribute("voteList",voteList);
		return "voting";
	}
	
	
	
	
	//登入請求送出
	@PostMapping(value = {"/login", "/", "/login/"})
	public String loginPage2(HttpSession session) {
		return "group_buy/login";
	}


}
