package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.NguyenLieu;
import fp.coffeeshopmanagement.service.NguyenLieuService;

@Controller
@RequestMapping(value="/nguyenlieu")
public class NguyenLieuController {
	@Autowired
	NguyenLieuService nguyenlieuService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("nguyenlieu_list");
		
		NguyenLieu nguyenlieu = new NguyenLieu();
		model.addObject("nguyenlieuForm",nguyenlieu);
		
		List<NguyenLieu> nguyenlieuList = nguyenlieuService.getAllNguyenLieu();
		model.addObject("nguyenlieuList", nguyenlieuList);

		return model;
	}
	
	@RequestMapping(value="/addnguyenlieu", method=RequestMethod.GET)
	public ModelAndView addNguyenLieu() {
		ModelAndView model = new ModelAndView();

		NguyenLieu nguyenlieu = new NguyenLieu();	
		model.addObject("nguyenlieuForm", nguyenlieu);
		model.setViewName("nguyenlieu_form");

		return model;
	}
	
	@RequestMapping(value="/updatenguyenlieu/{id}", method=RequestMethod.GET)
	public ModelAndView editNguyenLieu(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		NguyenLieu nguyenlieu = nguyenlieuService.getNguyenLieuById(id);
		model.addObject("nguyenlieuForm", nguyenlieu);
		model.setViewName("nguyenlieu_form");

		return model;
	}
	
	@RequestMapping(value="/deletenguyenlieu/{id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		nguyenlieuService.deleteNguyenLieu(id);

		return new ModelAndView("redirect:/nguyenlieu/");
	}
	
	@RequestMapping(value="/savenguyenlieu", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("nguyenlieuForm") NguyenLieu nguyenlieu) {
		nguyenlieuService.saveOrUpdate(nguyenlieu);

		return new ModelAndView("redirect:/nguyenlieu/");
	}
}
