/**
 * 
 */
package com.zwustudy.webmart.business.service.impl;



import static org.slf4j.LoggerFactory.getLogger;

import org.slf4j.Logger;
import org.springframework.stereotype.Service;

import com.zwustudy.webmart.business.bo.UserBO;
import com.zwustudy.webmart.business.service.UserService;

/**
 * @author zwustudy
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	private static final Logger logger = getLogger(UserServiceImpl.class);
	
	public UserBO login(String username, String password) {
		
		logger.debug("username:{}, password:{}", username, password);
		
		if (username != null && password != null && username.equalsIgnoreCase(password)) {
			UserBO user = new UserBO();
			user.setUsername(username);
			user.setPassword(password);
			return user;
		}
		return null;
	}
}
