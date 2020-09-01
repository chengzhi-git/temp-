package com.ftg.product.dao;

import java.util.ArrayList;

import com.ftg.product.pojo.Dept;
import com.ftg.product.pojo.ZhuCe;

public interface PersonManageDao {

	ArrayList<ZhuCe> query(ZhuCe zhuce);

	ArrayList<Dept> queryDept();

	void bangdingcg(ZhuCe zhuce);

	void scsc(ZhuCe zhuce);

	ArrayList<ZhuCe> query1();










}
