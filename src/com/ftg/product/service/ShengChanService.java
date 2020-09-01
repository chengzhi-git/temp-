package com.ftg.product.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ftg.product.dao.ShengChanDao;
import com.ftg.product.pojo.PlanSc;

/**
* Date:2019年10月24日
* Functions:com.ftg.product.service.ShengChanService.java
**/

@Service("shengChanService")
public class ShengChanService {

	//注入DAO
	@Autowired
	private ShengChanDao shengChanDao;
	
	public ArrayList<PlanSc> queryPlanByIdAndStatus(PlanSc planSc) {
		// TODO Auto-generated method stub
		return shengChanDao.queryPlanByIdAndStatus(planSc);
	}

	public void insertToPlanList(PlanSc planSc) {
		// TODO Auto-generated method stub
		shengChanDao.insertToPlanList(planSc);
	}

	public void updatePlanStatusTo1(PlanSc planSc) {
		// TODO Auto-generated method stub
		shengChanDao.updatePlanStatusTo1(planSc);
	}

	public ArrayList<PlanSc> queryPlanListBySubmit(PlanSc planSc) {
		// TODO Auto-generated method stub
		return shengChanDao.queryPlanListBySubmit(planSc);
	}

	public ArrayList<PlanSc> queryPlanListByBack(PlanSc planSc) {
		// TODO Auto-generated method stub
		return shengChanDao.queryPlanListByBack(planSc);
	}

}
