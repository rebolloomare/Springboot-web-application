package omare.com.mx.springboot.sample.webapp.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import omare.com.mx.springboot.sample.webapp.model.Configuracion;
import omare.com.mx.springboot.sample.webapp.services.ConfiguracionCorreoService;

@Controller
@SessionAttributes("name")
public class ConfiguracionController {

	private static final Logger logger = LoggerFactory.getLogger(ConfiguracionController.class);

	private static final String VIEW_CORREO_INICIO = "configuracionCorreo";

	@Autowired
	private ConfiguracionCorreoService configuracionCorreoService;

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, false));
	}

	@RequestMapping(value = "/loadInitialConfiguracion", method = RequestMethod.GET)
	public String loadInitialConfiguracion(ModelMap model) {
		logger.info("redirect pantalla configuracion");
		String name = (String) model.get("name");
		model.put("name", name);
		String sinDatos = null;
		Configuracion configuracion = configuracionCorreoService.obtenerConfiguracionPorId(1L);
		if (configuracion == null) {
			sinDatos = "sinDatos";
			model.addAttribute("sinDatos", sinDatos);
			return VIEW_CORREO_INICIO;
		}
		logger.info("valores en controller: " + configuracion.toString());
		model.addAttribute("configuracion", configuracion);
		model.addAttribute("idConfiguracion", configuracion.getIdConfiguracion());
		logger.info("redirect pagina inicio correo");
		return VIEW_CORREO_INICIO;
	}

	@RequestMapping(value = "/redirectConfiguracionCorreo", method = RequestMethod.POST)
	public String actualizarConfiguracion(@Valid Configuracion configuracion, BindingResult result, ModelMap model) {
		String name = (String) model.get("name");
		model.addAttribute("name", name);
		if (result.hasErrors()) {
			logger.info("error en la validación del formulario: " + result);
			return VIEW_CORREO_INICIO;
		}
		logger.info("sin errores en la validación");
		configuracion.setUserModifier(name);
		configuracionCorreoService.actualizaCorreo(configuracion);
		configuracion = configuracionCorreoService.obtenerConfiguracionPorId(1L);
		model.addAttribute("configuracion", configuracion);
		model.addAttribute("ok", "ok");
		return VIEW_CORREO_INICIO;
	}

}