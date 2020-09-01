package com.ftg.product.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ftg.product.pojo.ZhuCe;
import com.ftg.product.service.ZhuCeService;

@Controller
@RequestMapping("zhuce/")
public class ZhuCeController {
@Autowired
private ZhuCeService zhuCeService;
@RequestMapping(value="zhucejsp")
public  ModelAndView zhucejsp(){
	return new ModelAndView("zhuce");
}
@RequestMapping(value="zhuce",method=RequestMethod.POST)
public ModelAndView zhuce(ZhuCe zhuce){
	if(null!=zhuce && null!=zhuce.getUNAME() &&! "".equals(zhuce.getUNAME())
			&& null!=zhuce.getUAGE() &&! "".equals(zhuce.getUAGE())
			&& null!=zhuce.getUSEX() &&! "".equals(zhuce.getUSEX())
			&& null!=zhuce.getUTEL() &&! "".equals(zhuce.getUTEL())
			&& null!=zhuce.getUNAME() &&! "".equals(zhuce.getUNAME())
			&& null!=zhuce.getUADDRESS() &&! "".equals(zhuce.getUADDRESS())
			&& null!=zhuce.getUPASSWORD() &&! "".equals(zhuce.getUPASSWORD())){
		zhuCeService.add(zhuce);
		return new ModelAndView("login");
	}else{return new ModelAndView("zhucefailed");}
}
}
