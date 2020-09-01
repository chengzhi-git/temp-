package com.ftg.product.dao;

import java.util.ArrayList;

import com.ftg.product.pojo.Plan;

/**
 *Author:唐丹丹
 *Date: 2019年10月21日
 *Functions：com.ftg.product.dao.PlanDao.java
 **/
public interface PlanDao {

	ArrayList<Plan> query();

	void add(Plan plan);

	ArrayList<Plan> queryTostore();

	void addTostore(Plan plan);

	ArrayList<Plan> queryTostorelist();

	void addTostorelist(Plan plan);

	void updatePlan(Plan plan);

	void deletePlanList(Plan plan);

	ArrayList<Plan> queryYiShengDan();


}
