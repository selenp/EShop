package com.eshop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.eshop.entity.Film;
import com.eshop.service.impl.FilmServiceImpl;

@Controller
public class FilmController {
	@Autowired
	private FilmServiceImpl filmService;

	/**
	 * 根据类别查询电影（0：漫威；1：DC；2：其他）
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "films", method = RequestMethod.GET)
	public ModelAndView getFilms(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int type = Integer.parseInt(request.getParameter("type"));
		switch (type) {
		case 0:
			mv.addObject("typeStr", "Marvel");
			break;
		case 1:
			mv.addObject("typeStr", "DC");
			break;
		case 2:
			mv.addObject("typeStr", "Others");
			break;
		default:
			break;
		}
		List<Film> films = filmService.findListByKey(String.valueOf(type));
		mv.addObject("films", films);
		mv.setViewName("films");
		return mv;
	}

}
