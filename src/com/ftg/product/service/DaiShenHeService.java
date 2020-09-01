package com.ftg.product.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ftg.product.dao.DaiShenHeDao;
import com.ftg.product.pojo.CangKu;
import com.ftg.product.pojo.InStore;
import com.ftg.product.pojo.InStoreList;
import com.ftg.product.pojo.PlanList;
import com.ftg.product.pojo.Tostorelist;

@Service("daiShenHeService")
public class DaiShenHeService {

	@Autowired
	private DaiShenHeDao daiShenHeDao;
	
	public ArrayList<Tostorelist> queryTostorelist() {
		// TODO Auto-generated method stub
		return daiShenHeDao.queryTostorelist();
	}


	public void updatePlanToBack(Tostorelist tostorelist) {
		// TODO Auto-generated method stub
		daiShenHeDao.updatePlanToBack(tostorelist);
	}



	public ArrayList<PlanList> queryPlanList() {
		// TODO Auto-generated method stub
		return daiShenHeDao.queryPlanList();
	}



	public ArrayList<InStore> queryXguan() {
		// TODO Auto-generated method stub
		return daiShenHeDao.queryXguan();
	}



	public void insertToInstore(Tostorelist tostorelist) {
		// TODO Auto-generated method stub
		daiShenHeDao.insertToInstore(tostorelist);
	}


	public void deletePlanToBack(Tostorelist tostorelist) {
		// TODO Auto-generated method stub
		daiShenHeDao.deletePlanToBack(tostorelist);
	}


	public void updatePlanTongguo(Tostorelist tostorelist) {
		// TODO Auto-generated method stub
		daiShenHeDao.updatePlanTongguo(tostorelist);
	}


	/*public InStore insertToInstore(Tostorelist tostorelist) {
		// TODO Auto-generated method stub
		
		return daiShenHeDao.insertToInstore(tostorelist);
	}*/


	public ArrayList<CangKu> queryCangKu() {
		// TODO Auto-generated method stub
		return daiShenHeDao.queryCangKu();
	}


	public void insertIntoRuKu(InStoreList inStoreList) {
		// TODO Auto-generated method stub
		daiShenHeDao.insertIntoRuKu(inStoreList);
	}


	public ArrayList<InStoreList> queryInStorelist() {
		// TODO Auto-generated method stub
		return daiShenHeDao.queryInStorelist();
	}


	public InStore queryFromInstoreOne(Tostorelist tostorelist) {
		// TODO Auto-generated method stub
		return daiShenHeDao.queryFromInstoreOne(tostorelist);
	}


	public ArrayList<InStoreList> queryBack() {
		// TODO Auto-generated method stub
		return daiShenHeDao.queryBack();
	}

}
