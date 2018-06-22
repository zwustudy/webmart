/**
 * 
 */
package com.zwustudy.webmart.presentation.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zwustudy.webmart.business.bo.UserBO;
import com.zwustudy.webmart.business.service.UserService;

/**
 * @author zwustudy
 *
 */
@Controller
@RequestMapping("/user")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Resource
	private UserService userService;
	
	@ResponseBody
	@RequestMapping("/login.do")
	public Map<String, Object> login(String username, String password) {
		
		logger.debug("username:{}, password:{}", username, password);
		Map<String, Object> resultMap = new HashMap<>();
		UserBO user = userService.login(username, password);
		if (user != null) {
			resultMap.put("resultCode", 1);
			resultMap.put("resultMsg", "success");
			return resultMap;
		}
		resultMap.put("resultCode", 0);
		resultMap.put("resultMsg", "error");
		return resultMap;
	}
}
