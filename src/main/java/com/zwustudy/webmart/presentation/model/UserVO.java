/**
 * 
 */
package com.zwustudy.webmart.presentation.model;

/**
 * @author zwustudy
 *
 */
public class UserVO implements java.io.Serializable {

	private static final long serialVersionUID = -806592424709168134L;
	
	private String username;
	
	private String password;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
