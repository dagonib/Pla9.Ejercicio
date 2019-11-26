package com.david.company.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SeguridadConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private DataSource securityDataSource;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		auth.jdbcAuthentication().dataSource(securityDataSource);
		
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/").hasRole("COLABORADOR")
		.antMatchers("/admin/**").hasRole("ADMIN")
		.antMatchers("/editor/**").hasRole("EDITOR")
		.and().formLogin().loginPage("/formLogin").loginProcessingUrl("/authenticateTheUser").permitAll()
		.and().logout().permitAll()
		.and().exceptionHandling().accessDeniedPage("/prohibido");
		
	}

	
}
