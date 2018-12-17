package fp.coffeeshopmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {
	
	@RequestMapping(value="/")
	public String showWelcome() {
		return "Admin/home";
	}
}
