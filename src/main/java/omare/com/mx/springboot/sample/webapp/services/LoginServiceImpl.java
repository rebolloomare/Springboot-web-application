/**
 *
 */
package omare.com.mx.springboot.sample.webapp.services;

import org.springframework.stereotype.Service;

/**
 * @author rebol
 *
 */
@Service
public class LoginServiceImpl implements LoginService {

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * omare.com.mx.springboot.sample.webapp.services.LoginService#validateUser(
	 * java.lang.String, java.lang.String)
	 */
	@Override
	public boolean validateUser(String username, String password) {
		return username.equalsIgnoreCase("omare") && password.equalsIgnoreCase("omaree");
	}

}
