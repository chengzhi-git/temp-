package com.ftg.product.dao;

import java.util.ArrayList;

import com.ftg.product.pojo.PlanSc;

/**
* Date:2019年10月24日
* Functions:com.ftg.product.dao.ShengChanDao.java
**/

public interface ShengChanDao {

	ArrayList<PlanSc> queryPlanByIdAndStatus(PlanSc planSc);

	void insertToPlanList(PlanSc planSc);

	void updatePlanStatusTo1(PlanSc planSc);

	ArrayList<PlanSc> queryPlanListBySubmit(PlanSc planSc);

	ArrayList<PlanSc> queryPlanListByBack(PlanSc planSc);

}
