package com.ftg.product.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ftg.product.pojo.Menus;
import com.ftg.product.pojo.ZhuCe;
import com.ftg.product.service.LoginService;


@Controller
@RequestMapping("login/")
public class LoginController {
	@Autowired
	private LoginService loginService;

	@RequestMapping("login")
	public ModelAndView   login(){
		return new ModelAndView("login");
	}
	
	//session  请求时直接 可以获取 对象信息 当作一个参数
	@RequestMapping(value="loginin",method=RequestMethod.POST)
	public ModelAndView   loginin(ZhuCe  login,HttpSession  session){
		//验证 用户名与密码 是否 对应用户		l

		if(null!=login &&   null!=login.getUNAME() && !"".equals(login.getUNAME())&&   null!=login.getUPASSWORD() && !"".equals(login.getUPASSWORD())){
			//存在  查询用户的相应  权限  并  保存用户的信息  
			 ArrayList<ZhuCe> loginList=(loginService.queryLogin(login));
	 //为什么返回一个对象 因为  注册时 一个用户名 只能对应一个 信息  用户名不能重复
			if(null!=loginList&&loginList.size()>0){
				login=(loginService.queryLogin(login)).get(0);
				//保存到 session  
				session.setAttribute("users", login);
				//查询权限 ?  对应的 菜单信息
				ArrayList<Menus>   menusList=loginService.queryQx1(login);
				session.setAttribute("mList", menusList);
				ArrayList<Menus>   menusList2=loginService.queryQx2(login);
				session.setAttribute("mList2", menusList2);
				return new ModelAndView("qx");
			}
			//根据 用户信息  ID  查询相应的  权限菜单信息
					//如果有登录权限 那么 保存 菜单信息 到 Session中进行  后期 展示
		
					//如果没有权限  进行提示  并  让管理员分配权限 菜单信息
			else{
				//不存在 直接 返回  登陆页面  
				return new ModelAndView("login");
			}
		}
		else{
			return new ModelAndView("login");
		}
		
	}

}
