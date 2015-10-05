/**
 * 
 */
package com.zwustudy.webmart.business.service;

import com.zwustudy.webmart.business.bo.UserBO;


/**
 * @author zwustudy
 *
 */
public interface UserService {
	
	public UserBO login(String username, String password);
	
}
