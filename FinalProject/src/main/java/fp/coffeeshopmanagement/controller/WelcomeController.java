package fp.coffeeshopmanagement.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class WelcomeController {

//	@RequestMapping(value="/")
//	public String showWelcome() {
//		return "login";
//	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/afterlogout", method = RequestMethod.GET)
	public String logout() {
		return "afterlogout";
	}
}
