package com.eshop.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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
	 * 
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

	@RequestMapping(value = "preAddFilm")
	public ModelAndView preAddFilm() {
		return new ModelAndView("addFilm");
	}

	@RequestMapping(value = "addFilm")
	public ModelAndView addFilm(HttpServletRequest request) throws ParseException {
		Film film = new Film();
		film.setType(Integer.parseInt(request.getParameter("type")));
		film.setTitle(request.getParameter("title"));
		film.setPrice(Double.parseDouble(request.getParameter("price")));
		film.setLevel("PG-13");
		film.setTags(request.getParameter("tags"));
		film.setDuration(request.getParameter("duration"));
		film.setDate(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date")));
		film.setIntroduction(request.getParameter("introduction"));
		film.setDirectors(request.getParameter("directors"));
		film.setWriters(request.getParameter("writers"));
		film.setStars(request.getParameter("stars"));
		film.setImage("default_film.jpg");
		filmService.save(film);
		return new ModelAndView("redirect:films?type=" + request.getParameter("type"));
	}

}