package com.dietplanner.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dietplanner.dao.DietPlannerDao;
import com.dietplanner.model.Credential;
import com.dietplanner.model.DietChart;
import com.dietplanner.model.DietMeals;
import com.dietplanner.model.DietPlan;

@Service
@Transactional
public class DietPlannerServiceImpl implements DietPlannerService {

	@Autowired
	private DietPlannerDao dietplannerdao;
	
	public void setDietplannerdao(DietPlannerDao dietplannerdao) {
		this.dietplannerdao = dietplannerdao;
	}

	@Override
	public List<Credential> validateLogin(Credential credential) throws Exception {
		return dietplannerdao.validateLogin(credential);
	}

	@Override
	@Transactional
	public String addCredential(Credential credential) throws Exception {
		return dietplannerdao.addCredential(credential);
	}

	@Override
	public DietPlan NutritionCalculate(DietPlan dietPlan) {
		int height=(dietPlan.getHeightFeet()*12)+dietPlan.getHeightInch();
		double weight=dietPlan.getWeight();
		double bmi=(weight*703)/(height*height);
		int fat=0,carbs=0,protein=0,minfat=0,mincarbs=0,minprotein=0;
		int calories=0;
		
		if(dietPlan.getGender().equalsIgnoreCase("Male"))
		{
			calories=(int) ((int) (10 *(weight/2.2)) + (6.25 * (height*2.54)) - (5 * dietPlan.getAge())+5);
		}
		
		if(dietPlan.getGender().equalsIgnoreCase("Female"))
		{
			calories=(int) ((int) (10 *(weight/2.2)) + (6.25 * (height*2.54)) - (5 * dietPlan.getAge())-161);
		}
		
		calories*=getActivity(dietPlan.getActivity());
		
		
		if(dietPlan.getReason().equalsIgnoreCase("LoseWeight"))
			calories-=500;
		
		if(dietPlan.getReason().equalsIgnoreCase("Gainweight"))
			calories+=500;
		
		minfat=(int) (calories*0.15);
		mincarbs=(int) (calories*0.30);
		minprotein=(int) (calories*0.35);
		fat=(int) (calories*0.20);
		protein=(int) (calories*0.40);
		carbs=(int) (calories*0.40);
		
		
		mincarbs/=4;
		minprotein/=4;
		minfat/=9;
		protein/=4;
		carbs/=4;
		fat/=9;
		
		
		dietPlan.setCaloriesPerDay(calories);
		dietPlan.setCarbs(carbs);
		dietPlan.setProtien(protein);
		dietPlan.setFat(fat);
		dietPlan.setMincarbs(mincarbs);
		dietPlan.setMinfat(minfat);
		dietPlan.setMinprotein(minprotein);
		
		
		System.out.println(bmi);
		return dietPlan;
	}
	
	
	public double getActivity(String activity)
	{
		double value=0;
	  if(activity.equalsIgnoreCase("Sedentary"))
		value=1.2;
	  if(activity.equalsIgnoreCase("Light Active"))
		value=1.37;
	  if(activity.equalsIgnoreCase("Moderate Active"))
		value=1.5;
	  if(activity.equalsIgnoreCase("Very Active"))
		value=1.72;
	  if(activity.equalsIgnoreCase("Extremely Active"))
		value=1.9;
	
	return value;
	}

	@Override
	public List<DietMeals> GenerateDiet(String mealType,String mealCategory,int calories) throws Exception {
		
		List<DietMeals> data=dietplannerdao.GenerateDiet(mealType, mealCategory, calories);
		Collections.sort(data, new Comparator<DietMeals>() {
			
			@Override
			public int compare(DietMeals o1, DietMeals o2) {
				// TODO Auto-generated method stub
				return o1.getMeal().compareTo(o2.getMeal());
			}
		});
		
		Collections.shuffle(data);

		int sum=0;
		List<DietMeals> meal=new ArrayList<DietMeals>();
		
		for (DietMeals dietMeals : data) {
	
			if(!meal.contains(dietMeals))
			{	
				int mealcalories=dietMeals.getCalories();
				
				if((sum+mealcalories)<=calories)
				{
					meal.add(dietMeals);
					sum+=mealcalories;
				}
			}
		}
		
		
		
		for (DietMeals dietMeals : meal) {
		System.out.println(dietMeals.toString());	
		}
		
		
		
		return meal;
	}

	@Override
	public void addPlan(DietPlan dietPlan) throws Exception {
		dietplannerdao.addPlan(dietPlan);
	}

	

	@Override
	public void addDietChart(DietChart dietChart) throws Exception {
		dietplannerdao.addDietChart(dietChart);
		
	}

	@Override
	public DietPlan getPlanID(String username) throws Exception {
		return dietplannerdao.getPlanID(username);
	}

	@Override
	public List<DietChart> getDietPlan(int planID) throws Exception {
		return dietplannerdao.getDietPlan(planID);
	}

	@Override
	public void deletePlan(DietPlan dietPlan) throws Exception {
		dietplannerdao.deletePlan(dietPlan);
		
	}

	@Override
	public void deletePlanChart(DietChart dietChart) throws Exception {
		dietplannerdao.deletePlanChart(dietChart);
	}

	@Override
	public void updatePlan(DietPlan dietPlan) throws Exception {
		dietplannerdao.updatePlan(dietPlan);
		
	}

}
