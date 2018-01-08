package com.dietplanner.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dietplanner.model.Credential;
import com.dietplanner.model.DietChart;
import com.dietplanner.model.DietMeals;
import com.dietplanner.model.DietPlan;
import com.dietplanner.service.DietPlannerService;

@Controller
public class DietPlannerController {

	@Autowired
	private DietPlannerService dietplannerservice;
	
	@RequestMapping(value = "/")
	public ModelAndView welcome(ModelAndView model)
	{
		try
		{
		Credential credential=new Credential();
		model.addObject("credential", credential);
		model.setViewName("index");
		}catch (Exception e) {
			model.addObject("exception", e);
			model.setViewName("Error");
		}
		return model;
		
	}
	
	@RequestMapping(value = "/validate",params="signin",method=RequestMethod.POST)
	public ModelAndView validateLogin(@ModelAttribute Credential credential,BindingResult result,ModelAndView model)
	{
		try
		{
		List<Credential> data=dietplannerservice.validateLogin(credential);
		
		if(!data.isEmpty())
		{
			credential=data.iterator().next();
			model.addObject("username", credential.getUserName());
			DietPlan dietPlan=new DietPlan();
			dietPlan.setUserID(credential.getLoginId());
			DietPlan dietPlan2=dietplannerservice.getPlanID(dietPlan.getUserID());
			System.out.println(dietPlan2);
			if(dietPlan2!=null)
			{
				model.addObject("dietchart", dietplannerservice.getDietPlan(dietPlan2.getPlanID()));
				model.addObject("dietPlan", dietPlan2);
			}else
			{
				model.addObject("dietPlan", dietPlan);
			}
			
			
			
			model.setViewName("Welcome");
		}
		else
		{
			model.addObject("error", "User Id Password Not matched");
			model.setViewName("index");
		}
		
		}catch (Exception e) {
			model.addObject("exception", e);
			model.setViewName("Error");
		}
		
		return model;
	}
	
	@RequestMapping(value = "/validate",params="signup",method=RequestMethod.POST)
	public ModelAndView registration(ModelAndView model)
	{
		Credential credential=new Credential();
		model.addObject("credential", credential);
		model.setViewName("Registration");
		return model;
	}
	
	
	
	@RequestMapping(value = "/register",method=RequestMethod.POST)
	public ModelAndView register(@ModelAttribute Credential credential,BindingResult result,ModelAndView model)
	{
		try{
		String username=dietplannerservice.addCredential(credential);
		
		model.addObject("username",username);
		DietPlan dietPlan=new DietPlan();
		dietPlan.setUserID(credential.getLoginId());
		DietPlan dietPlan2=dietplannerservice.getPlanID(dietPlan.getUserID());
		if(dietPlan2!=null)
		{
			model.addObject("dietchart", dietplannerservice.getDietPlan(dietPlan2.getPlanID()));
			model.addObject("dietPlan", dietPlan2);
		}else
		{
			model.addObject("dietPlan", dietPlan);
		}
		model.setViewName("Welcome");
		
		}catch (Exception e) {
			model.addObject("exception", e);
			model.setViewName("Error");
		}
		return model;
	}
	
	@RequestMapping(value = "/GenerateDiet",params="NotSure",method=RequestMethod.POST)
	public ModelAndView DietPlan(@ModelAttribute DietPlan dietPlan ,BindingResult result,ModelAndView model)
	{
		List<String> activity=Arrays.asList("Select Activity Level","Sedentary","Light Active","Moderate Active","Very Active","Extremely Active");
		model.addObject(dietPlan);
		model.addObject("listactivity", activity);
		model.setViewName("NutritionCalculator");
		return model;
	}
	
	@RequestMapping(value = "/GenerateDiet",params="UpdateDetails",method=RequestMethod.POST)
	public ModelAndView UpdateDetails(@ModelAttribute DietPlan dietPlan ,BindingResult result,ModelAndView model)
	{
		model.addObject(dietPlan);
		model.setViewName("UpdateDetail");
		return model;
	}
	
	@RequestMapping(value = "/GenerateDiet",params="Generate",method=RequestMethod.POST)
	public ModelAndView GenerateDiet(@ModelAttribute DietPlan dietPlan ,BindingResult result,ModelAndView model)
	{
		try{
		System.out.println(dietPlan.toString());
		DietPlan dietPlan2=dietplannerservice.getPlanID(dietPlan.getUserID());
		if(dietPlan2!=null)
		{		
			List<DietChart> charts=dietplannerservice.getDietPlan(dietPlan2.getPlanID());
			
			for (DietChart dietChart : charts) {
				dietplannerservice.deletePlanChart(dietChart);
				}
			
			dietplannerservice.deletePlan(dietPlan2);
			
			System.out.println("Data deleted");
		}
		
		
				
		dietplannerservice.addPlan(dietPlan);
		
		List<List<DietMeals>> snacklist=new ArrayList<List<DietMeals>>();
		
		List<DietMeals> breakfast=null;
		List<DietMeals> lunch=null;
		List<DietMeals> dinner=null;
		
		int calories=dietPlan.getCaloriesPerDay()/dietPlan.getNumberOfMeals();
		for (int i = 1; i <=dietPlan.getNumberOfMeals(); i++) {
			
			if(i==1)
				breakfast= dietplannerservice.GenerateDiet(dietPlan.getMealType(), "Breakfast", calories);
			else if(i==2)
				lunch= dietplannerservice.GenerateDiet(dietPlan.getMealType(), "Lunch", calories);
			else if(i==3)
				dinner= dietplannerservice.GenerateDiet(dietPlan.getMealType(), "Dinner", calories);
			else
				snacklist.add(dietplannerservice.GenerateDiet(dietPlan.getMealType(), "Snack", calories));
				
		}
		
		int planID=dietplannerservice.getPlanID(dietPlan.getUserID()).getPlanID();
		
		if(planID!=0)
		{
			for (DietMeals dietMeals : breakfast) {
				DietChart chart=new DietChart();
				chart.setPlanID(planID);
				chart.setMealcategory(dietMeals.getMealcategory());
				chart.setMeal(dietMeals.getMeal());
				
				dietplannerservice.addDietChart(chart);	
			}
			
			for (DietMeals dietMeals : lunch) {
				DietChart chart=new DietChart();
				chart.setPlanID(planID);
				chart.setMealcategory(dietMeals.getMealcategory());
				chart.setMeal(dietMeals.getMeal());
				
				dietplannerservice.addDietChart(chart);	
			}
			
			for (DietMeals dietMeals : dinner) {
				DietChart chart=new DietChart();
				chart.setPlanID(planID);
				chart.setMealcategory(dietMeals.getMealcategory());
				chart.setMeal(dietMeals.getMeal());
				
				dietplannerservice.addDietChart(chart);	
			}
			
			for (List<DietMeals> listdata : snacklist) {
				for (DietMeals dietMeals : listdata) {
					DietChart chart=new DietChart();
					chart.setPlanID(planID);
					chart.setMealcategory(dietMeals.getMealcategory());
					chart.setMeal(dietMeals.getMeal());
					
					dietplannerservice.addDietChart(chart);	
				}	
			}
		}
		
		
		model.addObject("breakfast",breakfast);
		model.addObject("lunch", lunch);
		model.addObject("dinner", dinner);
			
		model.addObject("snacklist",snacklist);
		model.addObject(dietPlan);
		model.setViewName("dietChart");
		}catch (Exception e) {
			model.addObject("exception", e);
			model.setViewName("Error");
		}
		return model;
	}
	
	@RequestMapping(value = "/NutritionCalculator",params="Generate",method=RequestMethod.POST)
	public ModelAndView NutritionCalculate(@ModelAttribute DietPlan dietPlan ,BindingResult result,ModelAndView model)
	{
		try{
		dietPlan=dietplannerservice.NutritionCalculate(dietPlan);
		model.addObject(dietPlan);
		model.addObject("calories", dietPlan.getCaloriesPerDay()+" kcal");
		model.addObject("carbs", dietPlan.getMincarbs()+"-"+dietPlan.getCarbs()+" gms");
		model.addObject("fat", dietPlan.getMinfat()+"-"+dietPlan.getFat()+" gms");
		model.addObject("protein", dietPlan.getMinprotein()+"-"+dietPlan.getProtien()+" gms");
		model.setViewName("NutritionCalculator");
		}catch (Exception e) {
			model.addObject("exception", e);
			model.setViewName("Error");
		}
		return model;
	}
	
	
	@RequestMapping(value = "/NutritionCalculator",params="UseSetting",method=RequestMethod.POST)
	public ModelAndView UseCalories(@ModelAttribute DietPlan dietPlan ,BindingResult result,ModelAndView model)
	{
		try{
		System.out.println(dietPlan.toString());
		model.addObject(dietPlan);
		DietPlan dietPlan2=dietplannerservice.getPlanID(dietPlan.getUserID());
		if(dietPlan2!=null)
			model.addObject("dietchart", dietplannerservice.getDietPlan(dietPlan2.getPlanID()));
		model.setViewName("Welcome");
	}catch (Exception e) {
		model.addObject("exception", e);
		model.setViewName("Error");
	}
		
		return model;
	}
	
	@RequestMapping(value = "/Logout",method=RequestMethod.POST)
	public ModelAndView Logout(@ModelAttribute DietPlan dietPlan ,BindingResult result,ModelAndView model)
	{
		try{
			Credential credential=new Credential();
			model.addObject("credential", credential);
			model.setViewName("index");
		}catch (Exception e) {
			model.addObject("exception", e);
			model.setViewName("Error");
		}
		
		return model;
	}
	
	@RequestMapping(value = "/UpdateUserDetail",method=RequestMethod.POST)
	public ModelAndView UpdateUserDetail(@ModelAttribute DietPlan dietPlan ,BindingResult result,ModelAndView model)
	{
		try{
			dietPlan=dietplannerservice.NutritionCalculate(dietPlan);
			dietplannerservice.updatePlan(dietPlan);
			List<DietChart> charts=dietplannerservice.getDietPlan(dietPlan.getPlanID());
			
			for (DietChart dietChart : charts) {
				dietplannerservice.deletePlanChart(dietChart);
				}

			model.addObject("dietPlan", dietPlan);
			model.setViewName("Welcome");
		}catch (Exception e) {
			model.addObject("exception", e);
			model.setViewName("Error");
		}
		
		return model;
	}
	
}
