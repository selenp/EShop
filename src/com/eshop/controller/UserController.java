package com.eshop.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.util.List;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.eshop.entity.Item;
import com.eshop.entity.User;
import com.eshop.service.impl.RecordServiceImpl;
import com.eshop.service.impl.UserServiceImpl;
import com.eshop.utils.Md5Utils;

@Controller
public class UserController {
	@Autowired
	private UserServiceImpl userService;
	@Autowired
	private RecordServiceImpl recordService;

	/**
	 * 登录控制器
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "signin", method = RequestMethod.POST)
	public ModelAndView signIn(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		String username = request.getParameter("username");
		String password = Md5Utils.getMd5(request.getParameter("password"));
		User user = userService.findByKey(username);
		if (user != null) {
			if (user.getPassword().equals(password)) {
				mv.addObject("message", "Success, redirect in 2 seconds...");
				response.setHeader("refresh", "2;url=index.jsp"); // 两秒后跳转至index
				request.getSession().setAttribute("username", user.getUsername()); // 在本次请求session中保存用户信息
				request.getSession().setAttribute("uid", user.getId());
				request.getSession().setAttribute("flag", true); // flag用于记录是否处于登录状态，更新导航栏
			} else {
				mv.addObject("message", "Wrong password");
			}
		} else {
			mv.addObject("message", "User doesn't exist");
		}
		return mv;
	}

	/**
	 * 注册控制器
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "signup", method = RequestMethod.POST)
	public ModelAndView signUp(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String username = request.getParameter("username");
		String password = Md5Utils.getMd5(request.getParameter("password"));
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String street = request.getParameter("street");
		String apartment = request.getParameter("apartment");
		User user = new User(username, password, phone, email, city, street, apartment);
		userService.save(user);
		mv.setViewName("signin");
		return mv;
	}

	/**
	 * 检查username是否已存在，用于注册模块ajax方式判断
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "checkUsername", method = RequestMethod.POST)
	public ModelAndView checkUserName(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String username = request.getParameter("username");
		User user = userService.findByKey(username);
		if (null != user && user.getPassword() != null) {
			response.getWriter().write("true");
		} else {
			response.getWriter().write("false");
		}
		return null;
	}

	/**
	 * 退出登录
	 * 
	 * @param request
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "logout")
	public ModelAndView logout(HttpServletRequest request) throws IOException {
		ModelAndView mv = new ModelAndView();
		request.getSession().removeAttribute("username");
		request.getSession().removeAttribute("flag");
		request.getSession().removeAttribute("uid");
		mv.setViewName("index");
		return mv;
	}

	/**
	 * 查询用户信息
	 * 
	 * @param request
	 * @return
	 * @throws IOException
	 * @throws ParseException
	 * @throws NumberFormatException
	 */
	@RequestMapping(value = "userinfo")
	public ModelAndView getUserInfo(HttpServletRequest request)
			throws IOException, NumberFormatException, ParseException {
		ModelAndView mv = new ModelAndView();
		String username = (String) request.getSession().getAttribute("username");
		User user = userService.findByKey(username);
		mv.addObject("user", user);
		mv.setViewName("userinfo");
		return mv;
	}

}
