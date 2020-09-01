package com.ftg.product.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ftg.product.pojo.Dept;
import com.ftg.product.pojo.ZhuCe;
import com.ftg.product.service.PersonManageService;

@Controller
@RequestMapping("pm/")
public class PersonManageController {
@Autowired
private PersonManageService personManageService;
@RequestMapping("pm")
public ModelAndView pm(){
	return new ModelAndView("pm");
}
@RequestMapping("sc")
public ModelAndView sc(ZhuCe zhuce,HttpSession  session){
	ArrayList<ZhuCe> zList=personManageService.query1();
	session.setAttribute("zList",zList);
	System.out.println("zList");
	 ArrayList<Dept> dList=personManageService.queryDept();
	 session.setAttribute("dList", dList);
	 System.out.println("dList");
 ArrayList<ZhuCe> scList=personManageService.query(zhuce);
 session.setAttribute("scList", scList);
 System.out.println("scList");
return new ModelAndView("sc");
}
@RequestMapping(value="bangdingcg1")
public ModelAndView bangdingcg1(ZhuCe zhuce){
personManageService.bangdingcg(zhuce);

return new ModelAndView("redirect:/pm/sc.do?DEPTID=1");
}
@RequestMapping(value="scsc")
public ModelAndView scsc(ZhuCe zhuce){
personManageService.scsc(zhuce);
return new ModelAndView("redirect:/pm/sc.do?DEPTID=1");
}

@RequestMapping("jk")
public ModelAndView jk(ZhuCe zhuce,HttpSession  session){
	ArrayList<ZhuCe> zList=personManageService.query1();
	session.setAttribute("zList",zList);
 ArrayList<ZhuCe> jkList=personManageService.query(zhuce);
 session.setAttribute("jkList", jkList);
 System.out.println(jkList);
return new ModelAndView("jk");
}
@RequestMapping(value="bangdingcg2")
public ModelAndView bangdingcg2(ZhuCe zhuce){
personManageService.bangdingcg(zhuce);

return new ModelAndView("redirect:/pm/jk.do?DEPTID=2");
}
@RequestMapping(value="jksc")
public ModelAndView jksc(ZhuCe zhuce){
personManageService.scsc(zhuce);
return new ModelAndView("redirect:/pm/jk.do?DEPTID=2");

}



@RequestMapping("rk")
public ModelAndView rk(ZhuCe zhuce,HttpSession  session){
	ArrayList<ZhuCe> zList=personManageService.query1();
	session.setAttribute("zList",zList);
 ArrayList<ZhuCe> rkList=personManageService.query(zhuce);
 session.setAttribute("rkList", rkList);
return new ModelAndView("rk");
}
@RequestMapping(value="bangdingcg3")
public ModelAndView bangdingcg3(ZhuCe zhuce){
personManageService.bangdingcg(zhuce);
return new ModelAndView("redirect:/pm/rk.do?DEPTID=3");
}
@RequestMapping(value="rksc")
public ModelAndView rksc(ZhuCe zhuce){
personManageService.scsc(zhuce);
return new ModelAndView("redirect:/pm/rk.do?DEPTID=3");

}
@RequestMapping("jh")
public ModelAndView jh(ZhuCe zhuce,HttpSession  session){
	ArrayList<ZhuCe> zList=personManageService.query1();
	session.setAttribute("zList",zList);
 ArrayList<ZhuCe> jhList=personManageService.query(zhuce);
 session.setAttribute("jhList", jhList);
return new ModelAndView("jh");
}
@RequestMapping(value="bangdingcg4")
public ModelAndView bangdingcg4(ZhuCe zhuce){
personManageService.bangdingcg(zhuce);
return new ModelAndView("redirect:/pm/jh.do?DEPTID=5");
}
@RequestMapping(value="jhsc")
public ModelAndView jhsc(ZhuCe zhuce){
personManageService.scsc(zhuce);
return new ModelAndView("redirect:/pm/jh.do?DEPTID=5");

}
/*
@RequestMapping("n")
public ModelAndView n(ZhuCe zhuce,HttpSession  session){
ArrayList<ZhuCe> zList=personManageService.query(zhuce);
session.setAttribute("zList",zList);
 ArrayList<Dept> dList=personManageService.queryDept();
 session.setAttribute("dList", dList);
return new ModelAndView("n");
}
@RequestMapping(value="bangdingcg")
public ModelAndView bangdingcg(ZhuCe zhuce){
personManageService.bangdingcg(zhuce);

return new ModelAndView("redirect:/pm/n.do?DEPTID=");
}*/


}