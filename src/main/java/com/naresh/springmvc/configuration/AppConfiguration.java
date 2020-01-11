package com.naresh.springmvc.configuration;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.naresh.springmvc")
public class AppConfiguration extends WebMvcConfigurerAdapter{
	
	/*
	 * Configure View Resolver
	 * */
	@Bean
	public ViewResolver getViewResolver(){
		InternalResourceViewResolver resolver=new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
   /*
    * Configure ResourceHandlers to serve static resource like CSS/JavaScript etc...
    * */
	public void addResourceHandlers(ResourceHandlerRegistry registry){
		registry.addResourceHandler("/static/**").addResourceLocations("/static/");
	}
	
	/*
	 * Configure MessageSource to provide internationalized messages
	 * */
	@Bean
	public MessageSource messageSource(){
		ResourceBundleMessageSource messageSource=new ResourceBundleMessageSource();
		messageSource.setBasename("messages");
		return messageSource;
	}
}
