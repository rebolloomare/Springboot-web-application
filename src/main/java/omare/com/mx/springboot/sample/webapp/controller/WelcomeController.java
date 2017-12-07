/**
 *
 */
package omare.com.mx.springboot.sample.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class WelcomeController {

	private static final Logger logger = LoggerFactory.getLogger(WelcomeController.class);

	private static final String VIEW_INICIO_UPLOAD = "redirect:/uploadFile";

	private static final String VIEW_INICIO_USUARIOS = "redirect:/gestionUsuarios";

	private static final String VIEW_INICIO_COMPROBANTES = "redirect:/consultaComprobantes";

	@RequestMapping(value = "/viewUploadPage", method = RequestMethod.GET)
	public String showUploadArchivo(ModelMap model) {
		logger.info("redirect pantalla upload");
		String name = (String) model.get("name");
		model.put("name", name);
		logger.info("redirect pagina upload archivo");
		return VIEW_INICIO_UPLOAD;
	}

	@RequestMapping(value = "/viewUsuarios", method = RequestMethod.GET)
	public String showUsuariosInicio(ModelMap model) {
		logger.info("redirect pantalla usuarios");
		String name = (String) model.get("name");
		model.put("name", name);
		logger.info("redirect pagina inicio Usuarios");
		return VIEW_INICIO_USUARIOS;
	}

	@RequestMapping(value = "/viewComprobantes", method = RequestMethod.GET)
	public String showComprobantesInicio(ModelMap model) {
		logger.info("redirect pantalla Comprobantes");
		String name = (String) model.get("name");
		model.put("name", name);
		logger.info("redirect pagina inicio Comprobantes");
		return VIEW_INICIO_COMPROBANTES;
	}

}
