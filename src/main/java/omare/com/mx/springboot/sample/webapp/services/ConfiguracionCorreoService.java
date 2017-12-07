/**
 *
 */
package omare.com.mx.springboot.sample.webapp.services;

import omare.com.mx.springboot.sample.webapp.model.Configuracion;

/**
 * @author omare
 *
 */
public interface ConfiguracionCorreoService {

	void actualizaCorreo(Configuracion correo);

	Configuracion obtenerConfiguracionPorUsuario(String usuario);

	Configuracion obtenerConfiguracionPorId(Long id);

}
