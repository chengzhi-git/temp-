package com.ftg.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ftg.product.pojo.PlanSc;
import com.ftg.product.service.ShengChanService;

/**
* Date:2019年10月24日
* 王睿的
* Functions:com.ftg.product.controller.ShengChanController.java
**/

@Controller
@RequestMapping("sc/")
public class ShengChanController {

	@Autowired
	private ShengChanService shengChanService;
	
	//声名PlanSc的列表存储查询结果
	private ArrayList<PlanSc> planScList;
	
	//进入生产人员的主页
	@RequestMapping("jinRu")
	public ModelAndView jinRu(){
		return new ModelAndView("shengchan/index");
	}
	
	//通过员工id和审核状态从计划表中查询属于自己的生产任务
	@RequestMapping("queryPlanByIdAndStatus")
	public ModelAndView queryPlanByIdAndStatus(PlanSc planSc){
		ModelAndView mav = new ModelAndView("shengchan/list");
//		System.out.println("艾迪是"+planSc.getUID());
		planScList = shengChanService.queryPlanByIdAndStatus(planSc);
		mav.addObject("planScList", planScList);
		return mav;
	}
	
	//插入计划清单表
	@RequestMapping("insertToPlanList")
	public ModelAndView insertToPlanList(PlanSc planSc){
		ModelAndView mav = new ModelAndView("redirect:/sc/queryPlanByIdAndStatus.do?UID="+planSc.getUID());
		//插入计划清单表
		shengChanService.insertToPlanList(planSc);
		//将计划表中的该计划的状态修改未已提交审核
		shengChanService.updatePlanStatusTo1(planSc);
		return mav;
	}
	
	//查询所有的已经提交的计划，就不用重复提交的那个口了，相应的可以改变为在所有的已提交或者查询，即第一第二个位置设置一个筛选条件
	@RequestMapping("queryPlanListBySubmit")
	public ModelAndView queryPlanListBySubmit(PlanSc planSc){
		ModelAndView mav = new ModelAndView("shengchan/yitijiao");
		System.out.println("艾迪是"+planSc.getUID());
		planScList = shengChanService.queryPlanListBySubmit(planSc);
		mav.addObject("planScList", planScList);
		return mav;
	}
	
	//查询所有已经被退回的计划
	@RequestMapping("queryPlanListByBack")
	public ModelAndView queryPlanListByBack(PlanSc planSc){
		ModelAndView mav = new ModelAndView("shengchan/yituihui");
		System.out.println("艾迪是"+planSc.getUID());
		planScList = shengChanService.queryPlanListByBack(planSc);
		if(planScList!=null){
			System.out.println("buweiko");
		}
		mav.addObject("planScList", planScList);
		return mav;
	}
}
