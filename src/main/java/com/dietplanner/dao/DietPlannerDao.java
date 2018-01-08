package com.dietplanner.dao;

import java.util.List;

import com.dietplanner.model.Credential;
import com.dietplanner.model.DietChart;
import com.dietplanner.model.DietMeals;
import com.dietplanner.model.DietPlan;

public interface DietPlannerDao {

	public List<Credential> validateLogin(Credential credential)throws Exception;
	
	public String addCredential(Credential credential)throws Exception;
	
	public void addPlan(DietPlan dietPlan)throws Exception;
	
	public void updatePlan(DietPlan dietPlan)throws Exception;
	
	
	public void addDietChart(DietChart dietChart)throws Exception;
	
	public DietPlan getPlanID(String username)throws Exception;
	
	public void deletePlan(DietPlan dietPlan)throws Exception;
	
	public void deletePlanChart(DietChart dietChart)throws Exception;
	
	
	public List<DietChart> getDietPlan(int planID)throws Exception;
	
	public List<DietMeals> GenerateDiet(String mealType,String mealCategory,int calories)throws Exception;
	
}
