package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import fp.coffeeshopmanagement.model.ThucUong;

import fp.coffeeshopmanagement.service.ThucUongService;

@Controller
@RequestMapping(value="/thucuong")
public class ThucUongController {
	@Autowired
	ThucUongService thucuongService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("thucuong_list");
		List<ThucUong> thucuongList = thucuongService.getAllThucUong();
		model.addObject("thucuongList", thucuongList);

		return model;
	}
	
	@RequestMapping(value="/addthucuong", method=RequestMethod.GET)
	public ModelAndView addThucUong() {
		ModelAndView model = new ModelAndView();

		ThucUong thucuong = new ThucUong();	
		model.addObject("thucuongForm", thucuong);
		model.setViewName("thucuong_form");

		return model;
	}
	
	@RequestMapping(value="/updatethucuong/{id}", method=RequestMethod.GET)
	public ModelAndView editThucUong(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		ThucUong thucuong = thucuongService.getThucUongById(id);
		model.addObject("thucuongForm", thucuong);
		model.setViewName("thucuong_form");

		return model;
	}
	
	@RequestMapping(value="/deletethucuong/{id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		thucuongService.deleteThucUong(id);

		return new ModelAndView("redirect:/thucuong/list");
	}
	
	@RequestMapping(value="/savethucuong", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("thucuongForm") ThucUong thucuong) {
		thucuongService.saveOrUpdate(thucuong);

		return new ModelAndView("redirect:/thucuong/list");
	}
}
