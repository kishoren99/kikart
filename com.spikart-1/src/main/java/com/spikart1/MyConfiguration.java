package com.spikart1;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class MyConfiguration {

	@Bean
	ViewResolver abc()
	{
		InternalResourceViewResolver resolver=new InternalResourceViewResolver();
		resolver.setSuffix(".jsp");
		resolver.setPrefix("frontend/");
		return resolver;

	}
}
