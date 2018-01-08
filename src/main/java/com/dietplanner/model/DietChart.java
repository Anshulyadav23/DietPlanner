package com.dietplanner.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dietchart")
public class DietChart implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int ID ;
	@Column
	private int	planID ;
	@Column
	private String mealcategory;
	@Column
	private String meal ;
			
	public DietChart() {
		// TODO Auto-generated constructor stub
	}

	public DietChart(int iD, int planID, String mealcategory, String meal) {
		super();
		ID = iD;
		this.planID = planID;
		this.mealcategory = mealcategory;
		this.meal = meal;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getPlanID() {
		return planID;
	}

	public void setPlanID(int planID) {
		this.planID = planID;
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
	
	
	
	
	
}
