package com.medince;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication()
@MapperScan(basePackages = "com.medince.mapper")
	public class MedinceResfulApplication {

	public static void main(String[] args) {
		SpringApplication.run(MedinceResfulApplication.class, args);
	}

}
