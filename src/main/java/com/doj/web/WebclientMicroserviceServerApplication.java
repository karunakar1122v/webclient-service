package com.doj.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
//@EnableDiscoveryClient
public class WebclientMicroserviceServerApplication {
	
	public static final String ACCOUNTS_SERVICE_URL = "http://172.16.6.4:30780";
	public static final String EMPLOYEE_SERVICE_URL = "http://172.16.6.4:30090";
	
	public static void main(String[] args) {
		SpringApplication.run(WebclientMicroserviceServerApplication.class, args);
	}
	
	@Bean
	//@LoadBalanced
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
	@Bean
	public AccountRepository accountRepository(){
		return new RemoteAccountRepository(ACCOUNTS_SERVICE_URL);
	}
	@Bean
	public EmployeeRepository employeeRepository(){
		return  new RemoteEmployeeRepository(EMPLOYEE_SERVICE_URL);
	}
}
