package omare.com.mx.springboot.sample.webapp.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ComprobantesController {

	private static final Logger logger = LoggerFactory.getLogger(ComprobantesController.class);

	private static final String VIEW_INICIO_COMPROBANTES = "consultaComprobantes";

	@RequestMapping(value = "/redirectConsultaEmisor", method = RequestMethod.POST)
	public String getComprobantesEmisor(ModelMap model) {
		logger.info("redireccionando a " + VIEW_INICIO_COMPROBANTES);
		return VIEW_INICIO_COMPROBANTES;
	}

	@RequestMapping(value = "/redirectConsultaReceptor", method = RequestMethod.POST)
	public String getComprobantesReceptor(ModelMap model) {
		logger.info("redireccionando a " + VIEW_INICIO_COMPROBANTES);
		return VIEW_INICIO_COMPROBANTES;
	}

	@RequestMapping(value = "/redirectConsultaPeriodo", method = RequestMethod.POST)
	public String getComprobantesPeriodo(ModelMap model) {
		logger.info("redirect consulta de Comprobantes por PERIODO");
		return VIEW_INICIO_COMPROBANTES;
	}

	@RequestMapping(value = "/redirectObtieneXML/{uddi}", method = RequestMethod.GET)
	public void getArchivoXML(HttpServletResponse response, @PathVariable("uddi") String uddi) throws IOException {
		logger.info("uddi: " + uddi);
	}

	@RequestMapping(value = "/redirectObtienePDF/{uddi}", method = RequestMethod.GET)
	public ModelAndView generatePdfReport(ModelMap modelMap) {
		logger.info("generando reporte en PDF");
		return null;

	}

}