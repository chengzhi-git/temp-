package com.ftg.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ftg.product.pojo.CangKu;
import com.ftg.product.pojo.InStore;
import com.ftg.product.pojo.InStoreList;
import com.ftg.product.pojo.PlanList;
import com.ftg.product.pojo.Tostorelist;
import com.ftg.product.service.DaiShenHeService;

@Controller
@RequestMapping("cangku/daiShenHe/")
public class DaiShenHeController {

	@Autowired
	private DaiShenHeService daiShenHeService;
	//private Tostorelist tostorelist;
	

	//存储交库清单的数据
	private ArrayList<Tostorelist> tostorelistList; 
	//存储计划清单的数据
	private ArrayList<PlanList> planListList; 
	//存储交库单的数据
	//声名一个入库表对象，通过查询结果是否大于0，大于0表示已经入库了，提示已经入库，等于0
	//表示未生成入库单，进行入库单的插入
	private InStore inStore;
	//连表查询商品清单（交库）中的数据，对里面的数据进行审核并提交规格，其实规格那边其实可以在商品中声名单个的规格，在下拉中根据数量计算出总规格进行选择
	
	//仓库的对象
	private ArrayList<CangKu> cangKuList;
	
	
	//jinRu进入交库人员主界面
	@RequestMapping("jinRu")
	public ModelAndView jinRu(){
		return new ModelAndView("cangku/index");
	}
	
	//第一个菜单一：首先进入的时候查询所要审核的订单
	@RequestMapping("queryTostorelist")
	public ModelAndView queryTostorelist(){
		ModelAndView mav = new ModelAndView("/cangku/home");

		tostorelistList = daiShenHeService.queryTostorelist();

		mav.addObject("tostorelistList", tostorelistList);
		
		return mav;
	}
	
	//审核失败退回处理
	//生产人员的生产列表是根据审核状态从计划表里拿的
	//审核失败驳回到生产计划，并把审核状态置为未审核，把退回次数+1
	//更新并删除
	@RequestMapping("updatePlanToBack")
	public ModelAndView updatePlanToBack(Tostorelist tostorelist){
		//ModelAndView mav = new ModelAndView("/cangku/tbpl");//退回后本身可以查看退回的结果
		ModelAndView mav = new ModelAndView("redirect:/cangku/daiShenHe/queryTostorelist.do");
		//修改审核状态和退回状态
		
		daiShenHeService.updatePlanToBack(tostorelist);	
		
		//同时删除审核人员提交的数据，删除交库列表中的被退回的
		
		daiShenHeService.deletePlanToBack(tostorelist);		
		
		return mav;
	}
	
	//第二个菜单：审核失败的话要能查看当前已被驳回的计划，驳回之后查询计划表看自己的计划是否驳回成功
	//但是实际是要在审核的时候有标记审核人员的ID 在获取驳回记录的时候要通过这个session中的ID 进行
	//所以可以查询所有驳回状态大于0且审核状态为未审核的
	//暂时没用到
	@RequestMapping("insertToIstore222")
	public ModelAndView insertToIstore22(Tostorelist tostorelist){
		ModelAndView mav = new ModelAndView("/cangku/tbpl");

		planListList = daiShenHeService.queryPlanList();

		mav.addObject("planListList", planListList);
		
		return mav;
	}
	
	
	//审核通过需要存入入库表，同时展示到要入库的信息到待选货位表，不这样写的话就要建一个表存生成入库表的数据
	//先这么写
	//，然后进行货位的选择，选好货位后创建入库表，然后入库
	@RequestMapping("insertToInstore")
	public ModelAndView insertToInstore(Tostorelist tostorelist){

		System.out.println("审核通过了,实际数量是"+tostorelist.getTSLCOUNT());
		//判断是否生成了入库单，其实也可以通过这个判定来决定是否显示交库按钮
		/*inStore = daiShenHeService.queryFromInstoreOne(tostorelist);
		if(null!=inStore){
			System.out.println("instore是有值的");
			return new ModelAndView("redirect:/cangku/daiShenHe/queryTostorelist.do");
		}else{*/
			ModelAndView mav = new ModelAndView("cangku/ruKu");
			
			//查询仓库的信息
			cangKuList = daiShenHeService.queryCangKu();
			
			//先删除当前行
			daiShenHeService.deletePlanToBack(tostorelist);	
			
			//插入入库表
			

			
			daiShenHeService.insertToInstore(tostorelist);	
			//插入之后接着查询，通过计划ID，获取入库单ID
			inStore =  daiShenHeService.queryFromInstoreOne(tostorelist);	
			//修改计划中的plan状态为2
			System.out.println("进修改");
			daiShenHeService.updatePlanTongguo(tostorelist);
			//把参数放入到mav中
			System.out.println("都完事");
			mav.addObject("tostorelistTshu", tostorelist);
			//入库单ID和名称
			mav.addObject("inStore", inStore);
			mav.addObject("cangKuList", cangKuList);
			//跳转到jsp进行选择仓库
			return mav;
		/*}*/
	}
	
	
	@RequestMapping("insertIntoRuKu")
	public ModelAndView insertIntoRuKu(InStoreList inStoreList){
		ModelAndView mav = new ModelAndView("redirect:/cangku/daiShenHe/queryInStorelist.do");

		System.out.println("计划名是："+inStoreList.getPNAME());
		System.out.println("计划ID是："+inStoreList.getPID());
		System.out.println("入库单ID是："+inStoreList.getISID());
		System.out.println("货位ID是："+inStoreList.getGPID());
		System.out.println("规格是："+inStoreList.getISLGUI());
		System.out.println("入库商品数量是："+inStoreList.getISLCOUNT());
	
		
		daiShenHeService.insertIntoRuKu(inStoreList);
		
		return mav;
	}
	
	private ArrayList<InStoreList> inStoreListList;
	@RequestMapping("queryInStorelist")
	public ModelAndView queryInStorelist(){
		ModelAndView mav = new ModelAndView("cangku/rukuResult");

		inStoreListList = daiShenHeService.queryInStorelist();
		mav.addObject("inStoreListList", inStoreListList);
		return mav;
	}
	
	
	@RequestMapping("queryBack")
	public ModelAndView queryBack(){
		ModelAndView mav = new ModelAndView("cangku/rukuResult");

		inStoreListList = daiShenHeService.queryBack();
		mav.addObject("inStoreListList", inStoreListList);
		return mav;
	}
	
	
	//审核通过，连表查询所有的创建新的入库单的数据进行创建新的入库单
//	@RequestMapping("queryXguan")
//	public ModelAndView queryXguan(){
//		ModelAndView mav = new ModelAndView("/cangku/tbpl");
//
//		inStoreList = daiShenHeService.queryXguan();
//
//		//上面的存成交库单的对象，好像直接接下来把这个插入就ok不需要进行返回前台页面展示
//		daiShenHeService.createNewRkd(inStoreList);
//		return mav;
//	}
	
	//通过上面的查询进行创建新的入库单
//	@RequestMapping("createNewRkd")
//	public ModelAndView createNewRkd(){
//		ModelAndView mav = new ModelAndView("/cangku/tbpl");
//
//		InStoreList = daiShenHeService.queryPlanList();
//
//		mav.addObject("planListList", planListList);
//		
//		return mav;
//	}
	
//	@RequestMapping("toAddMenus")
//	public ModelAndView toAddMenus(){
//		ModelAndView mav = new ModelAndView("/menus/add");
//		//这里涉及一个父ID的问题，这个对用户是否是可见的还是不可以见的这个有待商榷
//		//暂时先把他做成一个下拉吧
//		menusList = menusService.query();
//		mav.addObject("menusList", menusList);
//		return mav;
//	}
//	
//	
//	@RequestMapping("addMenus")
//	public ModelAndView addMenus(Menus menus){
//		ModelAndView mav = new ModelAndView("redirect:/menus/queryMenus.do");
//		menusService.insertMenus(menus);
//		return mav;
//	}
//	
//	//修改的时候通过id查询
//	@RequestMapping("queryById")
//	public ModelAndView 	queryById(Menus menus){
//		ModelAndView mav = new ModelAndView("menus/edit");
//		menusOne  = menusService.queryById(menus);
//		menusList = menusService.query();
//		mav.addObject("menusList", menusList);
//		mav.addObject("menusOne", menusOne);
//		return mav;
//	}
//	
//	//修改菜单表
//	@RequestMapping("editMenus")
//	public ModelAndView 	editMenus(Menus menus){
//		ModelAndView mav = new ModelAndView("redirect:/menus/queryMenus.do");
//		menusService.editMenus(menus);
//		return mav;
//	}
//	
//	
//	//删除菜单表
//	@RequestMapping("deleteMenus")
//	public ModelAndView 	deleteMenus(Menus menus){
//		ModelAndView mav = new ModelAndView("redirect:/menus/queryMenus.do");
//		menusService.deleteMenus(menus);
//		return mav;
//	}
//	
//	
//	@RequestMapping("findByPart")
//	public ModelAndView 	findByPart(Menus part){
//		ModelAndView mav = new ModelAndView("menus/list");
//		menusList = menusService.findByPart(part);
//		mav.addObject("menusList", menusList);
//		return mav;
//	}
}
