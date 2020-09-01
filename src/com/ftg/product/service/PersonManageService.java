package com.ftg.product.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ftg.product.dao.PersonManageDao;
import com.ftg.product.pojo.Dept;
import com.ftg.product.pojo.ZhuCe;

@Service("personManageService")
public class PersonManageService {
	@Autowired
	private PersonManageDao personManageDao;
public ArrayList<ZhuCe> query(ZhuCe zhuce) {
	// TODO Auto-generated method stub
   return  personManageDao.query(zhuce);
}
public ArrayList<Dept> queryDept() {
	// TODO Auto-generated method stub
	return personManageDao.queryDept();
}
public void bangdingcg(ZhuCe zhuce) {
	// TODO Auto-generated method stub
	 personManageDao.bangdingcg(zhuce);
}
public void scsc(ZhuCe zhuce) {
	// TODO Auto-generated method stub
	personManageDao.scsc(zhuce);
}
public ArrayList<ZhuCe> query1() {
	// TODO Auto-generated method stub
	return personManageDao.query1();
}




}
