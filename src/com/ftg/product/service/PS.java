package com.ftg.product.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ftg.product.dao.PD;
import com.ftg.product.pojo.P;

/**
 *Author:唐丹丹
 *Date: 2019年10月17日
 *Functions：com.ftg.product.service.PS.java
 **/
@Service("planservice")
public class PS {
	@Autowired
	private PD plandao;
	
	public ArrayList<P> query() {
		
		return plandao.query();
	}

	public void add(P p) {
		plandao.add(p);
		
	}


	public P queryByPID(P p) {
	
		return plandao.queryByPID(p);
	}

	public void edit(P p) {
		plandao.edit(p);
		
	}

	public void delete(P p) {
		plandao.delete(p);
		
	}

	public ArrayList<P> queryGname() {
		// TODO Auto-generated method stub
		return plandao.queryGname();
	}

	public ArrayList<P> queryNname() {
		// TODO Auto-generated method stub
		return plandao.queryNname();
	}

	public ArrayList<P> queryByWeiSc() {
		// TODO Auto-generated method stub
		return  plandao.queryByWeiSc();
	}

	public ArrayList<P> queryByZhengSc() {
		// TODO Auto-generated method stub
		return  plandao.queryByZhengSc();
	}

	public ArrayList<P> queryByYiSc() {
		// TODO Auto-generated method stub
		return plandao.queryByYiSc();
	}

}
