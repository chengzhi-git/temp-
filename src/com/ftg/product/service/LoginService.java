package com.ftg.product.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ftg.product.dao.LoginDao;
import com.ftg.product.pojo.Menus;
import com.ftg.product.pojo.ZhuCe;

@Service("loginService")
public class LoginService {

	@Autowired
	private LoginDao loginDao;
	public ArrayList<ZhuCe> queryLogin(ZhuCe login){
		return loginDao.queryLogin(login);
	}
	public ArrayList<Menus> queryQx1(ZhuCe login) {
		// TODO Auto-generated method stub
		return loginDao.queryQx1(login);
	}
	public ArrayList<Menus> queryQx2(ZhuCe login) {
		return loginDao.queryQx2(login);
	}

}
