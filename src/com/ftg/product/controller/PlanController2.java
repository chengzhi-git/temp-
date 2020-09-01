package com.ftg.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ftg.product.pojo.Plan;
import com.ftg.product.pojo.Tostorelist;
import com.ftg.product.service.PlanService;

/**
 *Author:唐丹丹
 *Date: 2019年10月21日
 *Functions：com.ftg.product.controller.ListController.java
 **/
@Controller
@RequestMapping("plan/")

//这个是交库的控制器
public class PlanController2 {
	
	@Autowired
	private PlanService planservice;
	private ArrayList<Plan> planList;
	//private Plan plan;
	
	@RequestMapping(value="Ru")
	public ModelAndView  Ru (){
		return new ModelAndView("plan/index");
	}
	@RequestMapping(value="queryPlan")
	public ModelAndView  queryPlan (){
		ModelAndView mav=new ModelAndView("plan/list");
		planList=planservice.query();
//		System.out.println(planList.get(0).getPID());
		mav.addObject("planList", planList);
		return mav;
	}
	@RequestMapping(value="toAddPlan")
    public ModelAndView toAddPlan() {
		ModelAndView mav=new ModelAndView("plan/add");
		planList=planservice.query();
		mav.addObject("planList", planList);
		return mav;
    }
	@RequestMapping(value="addPlan",method=RequestMethod.POST)
	public ModelAndView  addPlan (Plan plan){
		planservice.add(plan);
		return new ModelAndView("redirect:/plan/queryPlan.do");
		}
	
	
	private ArrayList<Plan> planList2;
	@RequestMapping(value="queryTostore")
	public ModelAndView  queryTostore (){
		ModelAndView mav=new ModelAndView("plan/jklist");
		
		//查询一变交库表，找到里面的所有的入库单id，有的就把入库按钮删掉
		planList2 = planservice.queryYiShengDan();
		
		//查询所有的交库表
		planList=planservice.queryTostore();
		mav.addObject("planList", planList);
		mav.addObject("planList2", planList2);
		return mav;
	}
/*	@RequestMapping(value="toAddTostore")
    public ModelAndView toAddTostore() {
		ModelAndView mav=new ModelAndView("plan/addTostore.do");
		planList=planservice.queryTostore();
		mav.addObject("planList", planList);
		return mav;
    }*/

	@RequestMapping(value="addTostore")
	public ModelAndView  addTostore (Plan plan){
//		System.out.println("用户是"+plan.getUID());
//		System.out.println("计划名是"+plan.getPNAME());
//		System.out.println("计划ID是"+plan.getPID());
		planservice.addTostore(plan);
		
		//在列表中删掉，实际不是删掉，而是对状态从提交审核的1编程正在审核的3
		//先更新状态
		planservice.updatePlan(plan);
		
		//不不不，这边实际要删除的
		//再删除
		planservice.deletePlanList(plan);
		
		return new ModelAndView("redirect:/plan/queryTostore.do");
		}
	
	
	@RequestMapping(value="queryTostorelist")
	public ModelAndView  queryTostorelist (){
		ModelAndView mav=new ModelAndView("plan/tolist");
		planList=planservice.queryTostorelist();
		mav.addObject("planList", planList);
		return mav;
	}
/*	@RequestMapping(value="toAddTostorelist")
    public ModelAndView toAddTostorelist() {
		ModelAndView mav=new ModelAndView("plan/addTostorelist");
		planList=planservice.queryTostore();
		mav.addObject("planList", planList);
		return mav;
    }
*/
	@RequestMapping(value="addTostorelist")
	public ModelAndView  addTostorelist (Plan plan){
		
		System.out.println("在addTostorelist传进来的id"+plan.getPID());
		System.out.println("在addTostorelist传进来的pname"+plan.getPNAME());
		System.out.println("在addTostorelist传进来的GNAME"+plan.getGNAME());
		System.out.println("在addTostorelist传进来的TSLCOUNT"+plan.getTSLCOUNT());
		System.out.println("在addTostorelist传进来的TSID"+plan.getTSID());
		
		planservice.addTostorelist(plan);
		return new ModelAndView("redirect:/plan/queryTostorelist.do");
		}

}
