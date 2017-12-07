/**
 *
 */
package omare.com.mx.springboot.sample.webapp.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import omare.com.mx.springboot.sample.webapp.model.Configuracion;

/**
 * @author rebol
 *
 */
@Service
public class ConfiguracionCorreoServiceImpl implements ConfiguracionCorreoService {

	private static final Logger logger = LoggerFactory.getLogger(ConfiguracionCorreoServiceImpl.class);

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * omare.com.mx.springboot.sample.webapp.services.ConfiguracionCorreoService
	 * #actualizaCorreo(omare.com.mx.springboot.sample.webapp.model.
	 * Configuracion)
	 */
	@Override
	public void actualizaCorreo(Configuracion correo) {
		logger.info("en metodo : actualizaCorreo");
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * omare.com.mx.springboot.sample.webapp.services.ConfiguracionCorreoService
	 * #obtenerConfiguracionPorUsuario(java.lang.String)
	 */
	@Override
	public Configuracion obtenerConfiguracionPorUsuario(String usuario) {
		logger.info("en metodo : obtenerConfiguracionPorUsuario");
		return null;
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * omare.com.mx.springboot.sample.webapp.services.ConfiguracionCorreoService
	 * #obtenerConfiguracionPorId(java.lang.Long)
	 */
	@Override
	public Configuracion obtenerConfiguracionPorId(Long id) {
		logger.info("en metodo : obtenerConfiguracionPorId ");
		return new Configuracion();
	}

}
