/**
 * 
 */
package com.zwustudy.webmart.business.service.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.zwustudy.webmart.business.bo.UserBO;
import com.zwustudy.webmart.business.service.UserService;

/**
 * @author zwustudy
 */
public class UserServiceImpl implements UserService {

	private static final Log log = LogFactory.getLog(UserServiceImpl.class);
	
	public UserBO login(String username, String password) {
		
		log.debug("username:" + username + ", password:" + password);
		
		if (username != null && password != null && username.equalsIgnoreCase(password)) {
			UserBO user = new UserBO();
			user.setUsername(username);
			user.setPassword(password);
			return user;
		}
		return null;
	}
}
