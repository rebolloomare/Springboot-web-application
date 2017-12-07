/**
 *
 */
package omare.com.mx.springboot.sample.webapp.model;

import java.util.Date;

import javax.validation.constraints.Size;

/**
 * @author omare
 *
 */
public class Configuracion {

	private Long idConfiguracion;

	private String remitente;

	private String asunto;

	private Integer puerto;

	private String smtp;

	private String mensaje;

	private String direccion;

	private Boolean autenticacion;

	@Size(min = 4, message = "El nombre de usuario debe ser mayor a 4 caracteres")
	private String usuario;

	private String password;

	private Boolean ssl;

	private Date fechaAlta;

	private String userModifier;

	/**
	 * @return the idConfiguracion
	 */
	public Long getIdConfiguracion() {
		return idConfiguracion;
	}

	/**
	 * @param idConfiguracion
	 *            the idConfiguracion to set
	 */
	public void setIdConfiguracion(Long idConfiguracion) {
		this.idConfiguracion = idConfiguracion;
	}

	/**
	 * @return the remitente
	 */
	public String getRemitente() {
		return remitente;
	}

	/**
	 * @param remitente
	 *            the remitente to set
	 */
	public void setRemitente(String remitente) {
		this.remitente = remitente;
	}

	/**
	 * @return the asunto
	 */
	public String getAsunto() {
		return asunto;
	}

	/**
	 * @param asunto
	 *            the asunto to set
	 */
	public void setAsunto(String asunto) {
		this.asunto = asunto;
	}

	/**
	 * @return the puerto
	 */
	public Integer getPuerto() {
		return puerto;
	}

	/**
	 * @param puerto
	 *            the puerto to set
	 */
	public void setPuerto(Integer puerto) {
		this.puerto = puerto;
	}

	/**
	 * @return the smtp
	 */
	public String getSmtp() {
		return smtp;
	}

	/**
	 * @param smtp
	 *            the smtp to set
	 */
	public void setSmtp(String smtp) {
		this.smtp = smtp;
	}

	/**
	 * @return the mensaje
	 */
	public String getMensaje() {
		return mensaje;
	}

	/**
	 * @param mensaje
	 *            the mensaje to set
	 */
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	/**
	 * @return the direccion
	 */
	public String getDireccion() {
		return direccion;
	}

	/**
	 * @param direccion
	 *            the direccion to set
	 */
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	/**
	 * @return the autenticacion
	 */
	public Boolean getAutenticacion() {
		return autenticacion;
	}

	/**
	 * @param autenticacion
	 *            the autenticacion to set
	 */
	public void setAutenticacion(Boolean autenticacion) {
		this.autenticacion = autenticacion;
	}

	/**
	 * @return the usuario
	 */
	public String getUsuario() {
		return usuario;
	}

	/**
	 * @param usuario
	 *            the usuario to set
	 */
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the ssl
	 */
	public Boolean getSsl() {
		return ssl;
	}

	/**
	 * @param ssl
	 *            the ssl to set
	 */
	public void setSsl(Boolean ssl) {
		this.ssl = ssl;
	}

	/**
	 * @return the fechaAlta
	 */
	public Date getFechaAlta() {
		return fechaAlta;
	}

	/**
	 * @param fechaAlta
	 *            the fechaAlta to set
	 */
	public void setFechaAlta(Date fechaAlta) {
		this.fechaAlta = fechaAlta;
	}

	public String getUserModifier() {
		return userModifier;
	}

	public void setUserModifier(String userModifier) {
		this.userModifier = userModifier;
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Configuracion [idConfiguracion=").append(idConfiguracion).append(", remitente=")
				.append(remitente).append(", asunto=").append(asunto).append(", puerto=").append(puerto)
				.append(", smtp=").append(smtp).append(", mensaje=").append(mensaje).append(", direccion=")
				.append(direccion).append(", autenticacion=").append(autenticacion).append(", usuario=").append(usuario)
				.append(", password=").append(password).append(", ssl=").append(ssl).append(", fechaAlta=")
				.append(fechaAlta).append("]");
		return builder.toString();
	}

}
