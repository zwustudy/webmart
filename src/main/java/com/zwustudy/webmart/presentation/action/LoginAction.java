/**
 * 
 */
package com.zwustudy.webmart.presentation.action;

import javax.annotation.Resource;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;
import com.zwustudy.webmart.business.bo.UserBO;
import com.zwustudy.webmart.business.service.UserService;

/**
 * @author zwustudy
 *
 */
public class LoginAction extends ActionSupport {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginAction.class);

	private static final long serialVersionUID = -5798526686865438113L;

	private String username;
	private String password;
	
	@Resource
	private UserService userService;
	
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
	
	@Override
	public String execute() throws Exception {
		logger.debug("username:" + username + ", password:" + password);
		
		UserBO user = userService.login(username, password);
		if (user != null) {
			return SUCCESS;
		}
		return ERROR;
	}
}
