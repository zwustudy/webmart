/**
 * 
 */
package com.zwustudy.webmart.presentation.controller;

import static org.slf4j.LoggerFactory.getLogger;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * @author zwustudy
 *
 */
@Controller
@RequestMapping("/request")
public class RequestController {
	
	private static final Logger logger = getLogger(RequestController.class);
	
	@ResponseBody
	@RequestMapping("/detail.do")
	public Map<String, Object> detail(HttpServletRequest request) {

		String remoteAddr = request.getRemoteAddr();
		String remoteHost = request.getRemoteHost();
		String remoteUser = request.getRemoteUser();
		logger.info("came a request{remoteAddr:{},remoteHost:{},remoteUser:{}}",remoteAddr,remoteHost,remoteUser);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("remoteAddr", remoteAddr);
		map.put("remoteHost", remoteHost);
		map.put("remoteUser", remoteUser);
		map.put("result", "success");
		return map;
	}
}
