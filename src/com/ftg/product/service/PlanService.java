package com.ftg.product.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ftg.product.dao.PlanDao;
import com.ftg.product.pojo.Plan;

/**
 *Author:唐丹丹
 *Date: 2019年10月22日
 *Functions：com.ftg.product.service.PlanService.java
 **/@Service("service")

public class PlanService {

	@Autowired
	private PlanDao planDao;
	
	public ArrayList<Plan> query() {
		
		return planDao.query();
	}

	public void add(Plan plan) {
		planDao.add(plan);
		
	}

	public ArrayList<Plan> queryTostore() {
		return planDao.queryTostore();
	}

	public void addTostore(Plan plan) {
		planDao.addTostore(plan);

	}

	public ArrayList<Plan> queryTostorelist() {
		
		return planDao.queryTostorelist();
	}

	public void addTostorelist(Plan plan) {
		planDao.addTostorelist(plan);
		
	}

	public void updatePlan(Plan plan) {
		// TODO Auto-generated method stub
		planDao.updatePlan(plan);
	}

	public void deletePlanList(Plan plan) {
		// TODO Auto-generated method stub
		planDao.deletePlanList(plan);
	}

	public ArrayList<Plan> queryYiShengDan() {
		// TODO Auto-generated method stub
		return planDao.queryYiShengDan();
	}


}
