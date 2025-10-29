package com.mycompany.myapp.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class DBConfig {
	
//	@Value("${DB_URL}")
//    private String dbUrl;
//
//    @Value("${DB_USER}")
//    private String dbUsername;
//
//    @Value("${DB_PASS}")
//    private String dbPassword;
	
	String dbUrl = System.getenv("DB_URL");
    String dbUsername = System.getenv("DB_USER");
    String dbPassword = System.getenv("DB_PASS");
    
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.mariadb.jdbc.Driver");
		dataSource.setUrl(dbUrl);
		dataSource.setUsername(dbUsername);
		dataSource.setPassword(dbPassword);
		
		return dataSource;
	}
}
