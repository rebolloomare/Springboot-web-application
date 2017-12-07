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

/**
 * @author omare
 *
 */
@Controller
public class UploadController {

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);

	private static final String VIEW_INICIO_UPLOAD = "uploadArchivo";

	@RequestMapping(value = "/realizaUpload", method = RequestMethod.POST)
	public Object realizaUpload(ModelMap model) {
		logger.info("Iniciando el Upload del archivo");
		return VIEW_INICIO_UPLOAD;
	}

}
