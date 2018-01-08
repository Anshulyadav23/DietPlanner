package com.dietplanner.dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dietplanner.model.Credential;
import com.dietplanner.model.DietChart;
import com.dietplanner.model.DietMeals;
import com.dietplanner.model.DietPlan;

@Repository
public class DietPlannerDaoImpl implements DietPlannerDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public List<Credential> validateLogin(Credential credential) {
		
		Session session=sessionFactory.openSession();
		String hql="from Credential as c where c.LoginId=:loginid and c.LoginPassword=:password";
		Query query=session.createQuery(hql);
		query.setString("loginid", credential.getLoginId());
		query.setString("password", credential.getLoginPassword());
		@SuppressWarnings("unchecked")
		List<Credential> data=query.list();
		return data;
	}

	

	@Override
	public String addCredential(Credential credential) {
		//System.out.println(credential.toString());
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(credential);
		tx.commit();
		session.close();
		return credential.getUserName();
	}

	@Override
	public List<DietMeals> GenerateDiet(String mealType, String mealCategory, int calories) {
		
		Session session=sessionFactory.openSession();
		String hql="from DietMeals as meal where meal.mealtype=:type and meal.mealcategory=:category and meal.calories<=:maxcalories";
		Query query=session.createQuery(hql);
		query.setString("type", mealType);
		query.setString("category", mealCategory);
		query.setInteger("maxcalories", calories);
		
		@SuppressWarnings("unchecked")
		List<DietMeals> meals=query.list();
		
		return meals;
	}

	@Override
	public void addPlan(DietPlan dietPlan) {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(dietPlan);
		tx.commit();
		session.close();
		System.out.println("Add plan");
	}

	

	@Override
	public void addDietChart(DietChart dietChart) {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.saveOrUpdate(dietChart);
		tx.commit();
		session.close();
		System.out.println("Add plan chart");
	}

	@Override
	public DietPlan getPlanID(String username) {
		int planid=0;
		
		Session session=sessionFactory.openSession();
		String hql="from DietPlan as plan where plan.UserID=:user";
		Query query=session.createQuery(hql);
		query.setString("user", username);
		@SuppressWarnings("unchecked")
		List<DietPlan> plan=query.list();
		
		if(!plan.isEmpty())
			return plan.iterator().next();
		
	
		return null;
	}

	@Override
	public List<DietChart> getDietPlan(int planID) {
		Session session=sessionFactory.openSession();
		String hql="from DietChart as chart where chart.planID=:plan";
		Query query=session.createQuery(hql);
		query.setInteger("plan", planID);
		@SuppressWarnings("unchecked")
		List<DietChart> data=query.list();
		return data;
	}

	@Override
	public void deletePlan(DietPlan dietPlan) {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.delete(dietPlan);
		tx.commit();
		session.close();
		System.out.println("Deleted plan");
	}

	@Override
	public void deletePlanChart(DietChart dietChart) {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.delete(dietChart);
		tx.commit();
		session.close();
		System.out.println("Deleted chart");
	}

	@Override
	public void updatePlan(DietPlan dietPlan) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println(dietPlan.toString());
		session.update(dietPlan);
		tx.commit();
		session.close();
	}

}
