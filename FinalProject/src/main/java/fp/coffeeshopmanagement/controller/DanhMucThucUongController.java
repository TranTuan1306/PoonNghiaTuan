package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.DanhMucThucUong;
import fp.coffeeshopmanagement.service.DanhMucThucUongService;

@Controller
@RequestMapping(value="/danhmucthucuong")
public class DanhMucThucUongController {
	@Autowired
	DanhMucThucUongService dmtuService;

	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("dmtu_list");
		List<DanhMucThucUong> dmtuList = dmtuService.getAllDanhMucThucUong();
		model.addObject("dmtuList", dmtuList);

		return model;
	}

	@RequestMapping(value="/adddmtu", method=RequestMethod.GET)
	public ModelAndView addDanhMucThucUong() {
		ModelAndView model = new ModelAndView();

		DanhMucThucUong dmtu = new DanhMucThucUong();	
		model.addObject("dmtuForm", dmtu);
		model.setViewName("dmtu_form");

		return model;
	}


	@RequestMapping(value="/updatedmtu/{id}", method=RequestMethod.GET)
	public ModelAndView editDanhMucThucUong(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		DanhMucThucUong dmtu = dmtuService.getDanhMucThucUongById(id);
		model.addObject("dmtuForm", dmtu);
		model.setViewName("dmtu_form");

		return model;
	}

	@RequestMapping(value="/savedmtu", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("dmtuForm") DanhMucThucUong dmtu) {
		dmtuService.saveOrUpdate(dmtu);

		return new ModelAndView("redirect:/danhmucthucuong/list");
	}
	
	 @RequestMapping(value="/deletedmtu/{id}", method=RequestMethod.GET)
	 public ModelAndView delete(@PathVariable("id") int id) {
	  dmtuService.deleteDanhMucThucUong(id);
	  
	  return new ModelAndView("redirect:/danhmucthucuong/list");
	 }

}
