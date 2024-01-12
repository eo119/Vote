package vote.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.cj.Session;

import vote.model.DAO.VoteDAO;
import vote.model.entity.User;
import vote.model.entity.VoteObj;




@Controller
@RequestMapping("/vote")
public class VoteController {

	@Autowired
	private VoteDAO voteDAO;
	
	//登入頁網址進入
	@GetMapping("/login")
	public String loginPage(HttpSession session,Model model) {
		return "login";
	}
	
	//使用者網址進入
	@GetMapping("/voting")
	public String votingPage(@ModelAttribute VoteObj vote,Model model,HttpSession session) {
		List<VoteObj> voteList=voteDAO.findAllVoteLists();
		model.addAttribute("voteList",voteList);
		return "voting";
	}
	
	//登入請求送出
	@PostMapping("/login")
	public String loginPage2(@RequestParam ("username") String username,
							@RequestParam("password") String password, HttpSession session,Model model) throws Exception {

	
	
	Optional<User> userOpt=voteDAO.findUserByUserName(username);
	if(userOpt.isPresent()){
		User checkUser =userOpt.get();
		if(checkUser.getUserName().equals("admin123")){
			if(checkUser.getPassword().equals("pass123")) {
				session.setAttribute("user", checkUser);
				return "redirect:/mvc/vote/admin";
			}
			session.invalidate();
			model.addAttribute("loginMessage","密碼錯誤登入失敗");
			return "redirect:/mvc/vote/login";
		}
		
		else if(checkUser.getPassword().equals(password)) {
			session.setAttribute("user", checkUser);
			return "redirect:/mvc/vote/voting";
		}
		session.invalidate();
		model.addAttribute("loginMessage","密碼錯誤登入失敗");
		return "redirect:/mvc/vote/login";
	}
	session.invalidate();
	model.addAttribute("loginMessage","無此使用者登入失敗");
	return "redirect:/mvc/vote/login";
	}
	
	//投票送出
	@PostMapping("/voting/update")
	public String Votingupdate(@RequestParam("id")Integer id,@RequestParam("count") Integer count,HttpSession session){
		voteDAO.updateVoteObjCountById(id);
		return "voting";
	}
	
	//新增品項送出
	@PostMapping("/admin/update")
	public String addVoting(@ModelAttribute VoteObj voteObj) {
		voteDAO.addVote(voteObj);
		return "admin";
	}
	
	//後台網址進入
	@GetMapping("/admin")
	public String adminPage(HttpSession session,Model model) {
		return "admin";
	}
	
	
	

}
