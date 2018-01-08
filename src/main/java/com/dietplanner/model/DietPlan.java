package com.dietplanner.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dietplan")
public class DietPlan implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = -8026685068100684824L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int planID ;
	@Column
	private String UserID ;
	@Column
	private int	HeightInch ;
	@Column
	private int HeightFeet;
	@Column
	private double Weight ;
	@Column
	private int CaloriesPerDay  ;
	@Column
	private String BodyFat  ;
	@Column
	private String Activity  ;
	@Column
	private String Gender;
	@Column
	private String Reason;
	@Column
	private String MealType;
	@Column
	private int NumberOfMeals;
	@Column
	private int Protien;
	@Column
	private int Carbs;
	@Column
	private int Fat;
	@Column
	private int Age;
	@Column
	private int minprotein;
	@Column
	private int minfat;
	@Column
	private int mincarbs;
	
	
	
	public DietPlan() {
		// TODO Auto-generated constructor stub
	}


	public DietPlan(int planID, String userID, int heightInch, int heightFeet, double weight, int caloriesPerDay,
			String bodyFat, String activity, String gender, String reason, String mealType, int numberOfMeals,
			int protien, int carbs, int fat, int age, int minprotein, int minfat, int mincarbs) {
		super();
		this.planID = planID;
		UserID = userID;
		HeightInch = heightInch;
		HeightFeet = heightFeet;
		Weight = weight;
		CaloriesPerDay = caloriesPerDay;
		BodyFat = bodyFat;
		Activity = activity;
		Gender = gender;
		Reason = reason;
		MealType = mealType;
		NumberOfMeals = numberOfMeals;
		Protien = protien;
		Carbs = carbs;
		Fat = fat;
		Age = age;
		this.minprotein = minprotein;
		this.minfat = minfat;
		this.mincarbs = mincarbs;
	}


	public int getPlanID() {
		return planID;
	}


	public void setPlanID(int planID) {
		this.planID = planID;
	}


	public String getUserID() {
		return UserID;
	}


	public void setUserID(String userID) {
		UserID = userID;
	}


	public int getHeightInch() {
		return HeightInch;
	}


	public void setHeightInch(int heightInch) {
		HeightInch = heightInch;
	}


	public int getHeightFeet() {
		return HeightFeet;
	}


	public void setHeightFeet(int heightFeet) {
		HeightFeet = heightFeet;
	}


	public double getWeight() {
		return Weight;
	}


	public void setWeight(double weight) {
		Weight = weight;
	}


	public int getCaloriesPerDay() {
		return CaloriesPerDay;
	}


	public void setCaloriesPerDay(int caloriesPerDay) {
		CaloriesPerDay = caloriesPerDay;
	}


	public String getBodyFat() {
		return BodyFat;
	}


	public void setBodyFat(String bodyFat) {
		BodyFat = bodyFat;
	}


	public String getActivity() {
		return Activity;
	}


	public void setActivity(String activity) {
		Activity = activity;
	}


	public String getGender() {
		return Gender;
	}


	public void setGender(String gender) {
		Gender = gender;
	}


	public String getReason() {
		return Reason;
	}


	public void setReason(String reason) {
		Reason = reason;
	}


	public String getMealType() {
		return MealType;
	}


	public void setMealType(String mealType) {
		MealType = mealType;
	}


	public int getNumberOfMeals() {
		return NumberOfMeals;
	}


	public void setNumberOfMeals(int numberOfMeals) {
		NumberOfMeals = numberOfMeals;
	}


	public int getProtien() {
		return Protien;
	}


	public void setProtien(int protien) {
		Protien = protien;
	}


	public int getCarbs() {
		return Carbs;
	}


	public void setCarbs(int carbs) {
		Carbs = carbs;
	}


	public int getFat() {
		return Fat;
	}


	public void setFat(int fat) {
		Fat = fat;
	}


	public int getAge() {
		return Age;
	}


	public void setAge(int age) {
		Age = age;
	}


	public int getMinprotein() {
		return minprotein;
	}


	public void setMinprotein(int minprotein) {
		this.minprotein = minprotein;
	}


	public int getMinfat() {
		return minfat;
	}


	public void setMinfat(int minfat) {
		this.minfat = minfat;
	}


	public int getMincarbs() {
		return mincarbs;
	}


	public void setMincarbs(int mincarbs) {
		this.mincarbs = mincarbs;
	}


	@Override
	public String toString() {
		return "DietPlan [planID=" + planID + ", UserID=" + UserID + ", HeightInch=" + HeightInch + ", HeightFeet="
				+ HeightFeet + ", Weight=" + Weight + ", CaloriesPerDay=" + CaloriesPerDay + ", BodyFat=" + BodyFat
				+ ", Activity=" + Activity + ", Gender=" + Gender + ", Reason=" + Reason + ", MealType=" + MealType
				+ ", NumberOfMeals=" + NumberOfMeals + ", Protien=" + Protien + ", Carbs=" + Carbs + ", Fat=" + Fat
				+ ", Age=" + Age + ", minprotein=" + minprotein + ", minfat=" + minfat + ", mincarbs=" + mincarbs + "]";
	}
	
	
	
	
}
