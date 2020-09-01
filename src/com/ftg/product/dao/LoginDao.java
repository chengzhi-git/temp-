package com.ftg.product.dao;

import java.util.ArrayList;

import com.ftg.product.pojo.Menus;
import com.ftg.product.pojo.ZhuCe;

public interface LoginDao {

	ArrayList<ZhuCe> queryLogin(ZhuCe login);

	ArrayList<Menus> queryQx1(ZhuCe login);

	ArrayList<Menus> queryQx2(ZhuCe login);
	
}
