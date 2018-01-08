package com.dietplanner.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DietMeals")
public class DietMeals implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6545137708141884330L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int ID ;
	@Column(name = "mealtype")
	private String mealtype;
	
	@Column(name = "mealcategory")
	private String mealcategory ;
	
	@Column(name = "meal")
	private String meal;
	
	@Column(name = "calories")
	private int calories;
	
	public DietMeals() {
		// TODO Auto-generated constructor stub
	}

	public DietMeals(int iD, String mealtype, String mealcategory, String meal, int calories) {
		super();
		ID = iD;
		this.mealtype = mealtype;
		this.mealcategory = mealcategory;
		this.meal = meal;
		this.calories = calories;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getMealtype() {
		return mealtype;
	}

	public void setMealtype(String mealtype) {
		this.mealtype = mealtype;
	}

	public String getMealcategory() {
		return mealcategory;
	}

	public void setMealcategory(String mealcategory) {
		this.mealcategory = mealcategory;
	}

	public String getMeal() {
		return meal;
	}

	public void setMeal(String meal) {
		this.meal = meal;
	}

	public int getCalories() {
		return calories;
	}

	public void setCalories(int calories) {
		this.calories = calories;
	}

	@Override
	public String toString() {
		return "DietMeals [ID=" + ID + ", mealtype=" + mealtype + ", mealcategory=" + mealcategory + ", meal=" + meal
				+ ", calories=" + calories + "]";
	}
	
	
	
	
}
