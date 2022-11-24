package somdoong.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class SomDoongMemberController {

	@RequestMapping("/agree")
	public void agree() {
		
	}
	
	@GetMapping("/join")
	public void join() {
		
	}
	
}
