package com.doj.web;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

/**
 * @author Karunakar
 *
 */
public class RemoteEmployeeRepository implements EmployeeRepository {
	
	@Autowired
	protected RestTemplate restTemplate;
	
	protected String serviceUrl;
	
	public RemoteEmployeeRepository(String serviceUrl) {
		this.serviceUrl = serviceUrl.startsWith("http") ? serviceUrl
				: "http://" + serviceUrl;
	}
	
	
	@Override
	public List<Employee> getAllEmployees(){
		
		
		ResponseEntity<List> employees =
		        restTemplate.exchange(serviceUrl+"/employees.php",
		                    HttpMethod.GET, null, new ParameterizedTypeReference<List>() {
		            });
		
		
		List<Employee> empList = employees.getBody();
		
		return empList;
	}
	

}
