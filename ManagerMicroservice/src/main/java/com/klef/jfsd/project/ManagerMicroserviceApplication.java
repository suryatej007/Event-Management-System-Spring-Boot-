package com.klef.jfsd.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@ComponentScan(basePackages = {"com.klef.jfsd.project"} )
public class ManagerMicroserviceApplication {

	public static void main(String[] args) {
		SpringApplication.run(ManagerMicroserviceApplication.class, args);
		System.out.println("Manager Microservice.");
	}
	
	@Bean
	public RestTemplate restTemplate()
	{
		return new RestTemplate();
	}


}
