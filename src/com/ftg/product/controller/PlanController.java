package com.ftg.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.ftg.product.pojo.P;
import com.ftg.product.service.PS;



/**
 *Author:唐丹丹
 *Date: 2019年10月17日
 *Functions：com.ftg.product.controller.PlanController.java
 **/
@Controller
@RequestMapping("p/")
public class PlanController {
	@Autowired
	private PS planService;
	
	private ArrayList<P> planList;
	private P p;
	private P p2;
	private ArrayList<P> planList1;
	private ArrayList<P> planList2;
	@RequestMapping(value="query")
	public ModelAndView  query (){
		ModelAndView mav=new ModelAndView("p/list");
		planList=planService.query();
		mav.addObject("planList", planList);
		return mav;
	}
	@RequestMapping(value="toAdd")
    public ModelAndView toAdd() {
		ModelAndView mav=new ModelAndView("p/add");
		planList=planService.query();
		planList1=planService.queryGname();
		planList2=planService.queryNname();
		mav.addObject("planList", planList);
		mav.addObject("planList1", planList1);
		mav.addObject("planList2", planList2);
		return mav;
    }
	
	@RequestMapping(value="add",method=RequestMethod.POST)
	public ModelAndView  add (P p){
		planService.add(p);
		return new ModelAndView("redirect:/p/query.do");
		}
	
	
	@RequestMapping(value="toEdit")
	public ModelAndView  toEdit (P p){
		ModelAndView mav=new ModelAndView("p/edit");
		
		System.out.println("修改之前拿到得pid是"+p.getPNAME());
		p2=planService.queryByPID(p);
		System.out.println("修改之后拿到得pid是"+p2.getPNAME());
		planList2=planService.queryNname();
		mav.addObject("p2", p2);
		mav.addObject("planList2", planList2);
		return mav;
	}
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public ModelAndView  edit (P p){
		planService.edit(p);
		return new ModelAndView("redirect:/p/query.do");
		}
	@RequestMapping(value="delete")
	public ModelAndView  delete (P p){
		planService.delete(p);
		return new ModelAndView("redirect:/p/query.do");
	}
	
	//查询所有的未生产的计划，即状态为0的
	@RequestMapping(value="queryByWeiSc")
	public ModelAndView  queryByWeiSc (){
		ModelAndView mav=new ModelAndView("p/listWeiSc");
		planList=planService.queryByWeiSc();
		mav.addObject("planList", planList);
		return mav;
	}
	
	//查询所有的正在生产的计划，即状态为1的
	@RequestMapping(value="queryByZhengSc")
	public ModelAndView  queryByZhengSc (){
		ModelAndView mav=new ModelAndView("p/listZhengSc");
		planList=planService.queryByZhengSc();
		mav.addObject("planList", planList);
		return mav;
	}
	
	//查询所有的已经完成的生产的计划，即状态为2的
	@RequestMapping(value="queryByYiSc")
	public ModelAndView  queryByYiSc (){
		ModelAndView mav=new ModelAndView("p/listYiSc");
		planList=planService.queryByYiSc();
		mav.addObject("planList", planList);
		return mav;
	}
}

