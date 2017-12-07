package omare.com.mx.springboot.sample.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import omare.com.mx.springboot.sample.webapp.services.LoginService;

@Controller
@SessionAttributes("name")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		logger.info("ingresando a la aplicacion");
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password) {
		boolean isValidUser = loginService.validateUser(name, password);
		if (!isValidUser) {
			model.put("errorMessage", "Invalid credentials");
			return "login";
		}
		model.put("name", name);
		model.put("password", password);
		return "welcome";
	}

}
