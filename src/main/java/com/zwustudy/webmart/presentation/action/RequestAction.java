/**
 * 
 */
package com.zwustudy.webmart.presentation.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author zwustudy
 *
 */
public class RequestAction extends ActionSupport {

	private static final long serialVersionUID = 3348445891617736271L;
	
	private static final Logger logger = LoggerFactory.getLogger(RequestAction.class);
	
	private Map<String, Object> resultMap;

	public Map<String, Object> getResultMap() {
		return resultMap;
	}
	public void setResultMap(Map<String, Object> resultMap) {
		this.resultMap = resultMap;
	}
	
	public String execute() throws Exception {

		HttpServletRequest request = ServletActionContext.getRequest();
		String remoteAddr = request.getRemoteAddr();
		String remoteHost = request.getRemoteHost();
		String remoteUser = request.getRemoteUser();
		logger.info("came a request{remoteAddr:{},remoteHost:{},remoteUser:{}}",remoteAddr,remoteHost,remoteUser);
		
		Map<String, Object> map = new HashMap<String, Object>();
		setResultMap(map);
		
		map.put("remoteAddr", remoteAddr);
		map.put("remoteHost", remoteHost);
		map.put("remoteUser", remoteUser);
		map.put("result", "success");
		return SUCCESS;
	}
}
