package fp.coffeeshopmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/*import org.springframework.web.bind.annotation.RestController;
*/
@Controller
public class WelcomeController {
	
	@RequestMapping(value="/")
	public String showWelcome() {
		return "admin/trangchu";
	}
}
