/**
 * 
 */
package com.zwustudy.webmart.presentation.action;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author zwustudy
 *
 */
public class JsonAction extends ActionSupport {

	private static final Logger logger = LoggerFactory.getLogger(JsonAction.class);
	
	private static final long serialVersionUID = -6125657927238696008L;
	
	private String site;
	
	private String orderId;
	
	private Map<String, Object> responseJson;
	
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}

	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Map<String, Object> getResponseJson() {
		return responseJson;
	}
	public void setResponseJson(Map<String, Object> responseJson) {
		this.responseJson = responseJson;
	}


	@Override
	public String execute() throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();		
		map.put("result", "success");
		map.put("site", site);
		map.put("orderId", orderId);
		List<String> list = new ArrayList<String>();
		list.addAll(Arrays.asList("a","b","c"));
		map.put("content", list);
		setResponseJson(map);
		return SUCCESS;
	}
}
