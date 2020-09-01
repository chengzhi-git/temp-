package com.ftg.product.dao;

import java.util.ArrayList;

import com.ftg.product.pojo.P;

/**
 *Author:唐丹丹
 *Date: 2019年10月17日
 *Functions：com.ftg.product.dao.PlanDao.java
 **/
public interface PD {

	ArrayList<P> query();

	void add(P p);

	
	P queryByPID(P p);

	void edit(P p);

	void delete(P p);

	ArrayList<P> queryGname();

	ArrayList<P> queryNname();

	ArrayList<P> queryByWeiSc();

	ArrayList<P> queryByZhengSc();

	ArrayList<P> queryByYiSc();


}
