package com.ftg.product.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ftg.product.dao.ZhuCeDao;
import com.ftg.product.pojo.ZhuCe;

@Service("zhuCeSerivce")
public class ZhuCeService {
@Autowired
private ZhuCeDao zhuCeDao;

public void add(ZhuCe zhuce) {
	// TODO Auto-generated method stub
	 zhuCeDao.add(zhuce);
}

}
