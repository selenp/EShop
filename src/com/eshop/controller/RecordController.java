package com.eshop.controller;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.eshop.entity.Item;
import com.eshop.entity.Page;
import com.eshop.entity.Record;
import com.eshop.entity.User;
import com.eshop.service.impl.RecordServiceImpl;
import com.eshop.service.impl.UserServiceImpl;

@Controller
public class RecordController {
	@Autowired
	private RecordServiceImpl recordService;
	@Autowired
	private UserServiceImpl userService;

	/**
	 * 添加到购物车
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "addCart", method = RequestMethod.GET)
	public ModelAndView addCart(HttpServletRequest request) {
		String preUrl = request.getHeader("Referer");
		long uid = Long.parseLong(request.getSession().getAttribute("uid").toString());
		long fid = Long.parseLong(request.getParameter("fid"));
		Record cart = new Record(uid, fid, "0", new Date().getTime());
		recordService.save(cart);
		return new ModelAndView("redirect:" + preUrl.substring(preUrl.lastIndexOf("/"), preUrl.length()));
	}

	/**
	 * 移出购物车
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "remove", method = RequestMethod.GET)
	public ModelAndView remove(HttpServletRequest request) {
		String preUrl = request.getHeader("Referer");
		long id = Long.parseLong(request.getParameter("rid"));
		System.out.println(id);
		recordService.deleteById(id);
		return new ModelAndView("redirect:" + preUrl.substring(preUrl.lastIndexOf("/"), preUrl.length()));
	}

	/**
	 * 支付
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "pay", method = RequestMethod.GET)
	public ModelAndView pay(HttpServletRequest request) {
		long uid = Long.parseLong(request.getSession().getAttribute("uid").toString());
		Record record = new Record();
		record.setUid(uid);
		recordService.update(record);
		return new ModelAndView("redirect:record?type=0&status=0");
	}

	/**
	 * 查询记录，根据parameter type区别购物车和历史纪录
	 * 
	 * @param request
	 * @return
	 * @throws ParseException
	 * @throws NumberFormatException
	 */
	@RequestMapping(value = "record", method = RequestMethod.GET)
	public ModelAndView getRecord(HttpServletRequest request) throws NumberFormatException, ParseException {
		ModelAndView mv = new ModelAndView();
		String username = (String) request.getSession().getAttribute("username");
		String type = request.getParameter("type");
		String pageNoStr = request.getParameter("pageNo");
		int pageNo = pageNoStr == null || pageNoStr.equals("") ? 1 : Integer.parseInt(pageNoStr);
		User user = userService.findByKey(username);
		Page<Item> page = recordService.findInfoByKey(pageNo, user.getId(), type); // 查询用户的购物车
		mv.addObject("page", page);
		if (type.equals("0")) {
			String status = request.getParameter("status");
			   if (status != null && status.equals("0")) {
			    mv.addObject("message", "Checkout success");
			   }// 购物车
			mv.setViewName("cart");
		} else if (type.equals("1")) { // 历史纪录
			mv.setViewName("history");
		} else {
			mv.setViewName("index");
		}
		return mv;
	}

}
