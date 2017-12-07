package omare.com.mx.springboot.sample.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UsuariosController {

	private static final Logger logger = LoggerFactory.getLogger(UsuariosController.class);

	private static final String VIEW_INICIO_USUARIOS = "gestionUsuarios";

	@RequestMapping(value = "/redirectSaveUsuarios", method = RequestMethod.POST)
	public String insertaUsuario(ModelMap model) {
		logger.info("redirect pantalla usuarios");
		return VIEW_INICIO_USUARIOS;
	}

}