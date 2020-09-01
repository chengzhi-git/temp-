package com.ftg.product.dao;

import java.util.ArrayList;

import com.ftg.product.pojo.CangKu;
import com.ftg.product.pojo.InStore;
import com.ftg.product.pojo.InStoreList;
import com.ftg.product.pojo.PlanList;
import com.ftg.product.pojo.Tostorelist;

public interface DaiShenHeDao {

	ArrayList<Tostorelist> queryTostorelist();

	void updatePlanToBack(Tostorelist tostorelist);

	ArrayList<PlanList> queryPlanList();

	ArrayList<InStore> queryXguan();

	void insertToInstore(Tostorelist tostorelist);

	void deletePlanToBack(Tostorelist tostorelist);

	void updatePlanTongguo(Tostorelist tostorelist);

//	InStore insertToIstore(Tostorelist tostorelist);

	ArrayList<CangKu> queryCangKu();

	void insertIntoRuKu(InStoreList inStoreList);

	ArrayList<InStoreList> queryInStorelist();

	InStore queryFromInstoreOne(Tostorelist tostorelist);

	ArrayList<InStoreList> queryBack();
}
