package com.naresh.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.naresh.springmvc.model.Student;

@Controller
@RequestMapping("/")
public class AppController {
	
	
	/*
	 * This method will serve as default GET handler
	 * */
	@RequestMapping(method=RequestMethod.GET)
    public String RegisterPage(ModelMap model){
		model.addAttribute("student", new Student());
		return "registration";
	}
	
	/*
	 * This method will be called on form register, handling POST request
	 * */
	@RequestMapping(method=RequestMethod.POST)
	public String saveRegration(@Valid Student student, BindingResult result, ModelMap model){
		
		if(result.hasErrors()){
			return "registration";
		}
		
		 model.addAttribute("success", "Dear "+ student.getFirstName()+" , your Registration completed successfully");
	        return "success";
	}
	
	/*
	 * Method used to populate the Section list into view.
	 * */
	@ModelAttribute("sections")
	public List<String> initializeSections(){
		List<String> sections=new ArrayList<String>();
		sections.add("Graduate");
		sections.add("Post Graduate");
		sections.add("Diploma");
		return sections;
	}
	
	/*
	 * Method used to populate the Country list into view.
	 * */
	@ModelAttribute("countries")
	public List<String> initializeCountry(){
		List<String> countries=new ArrayList<String>();
		countries.add("USA");
        countries.add("CANADA");
        countries.add("FRANCE");
        countries.add("INDIA");
        countries.add("GERMANY");
        countries.add("ITALY");
        countries.add("OTHER");
        return countries;
	}
	
	/*
	 * Method used to populate the Subjects list into view.
	 * */
	@ModelAttribute("subjects")
	public List<String> initializeSubjects(){
		List<String> subjects=new ArrayList<String>();
		subjects.add("Physics");
        subjects.add("Chemistry");
        subjects.add("Life Science");
        subjects.add("Political Science");
        subjects.add("Computer Science");
        subjects.add("Mathmatics");
        return subjects;
	}
}
