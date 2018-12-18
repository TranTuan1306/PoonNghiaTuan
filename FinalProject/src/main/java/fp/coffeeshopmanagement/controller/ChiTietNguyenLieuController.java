package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.ChiTietNguyenLieu;
import fp.coffeeshopmanagement.service.ChiTietNguyenLieuService;

@Controller
@RequestMapping(value="/chitietnguyenlieu")
public class ChiTietNguyenLieuController {
	@Autowired
	ChiTietNguyenLieuService ctnlService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView list(@PathVariable int idThucUong) {
		ModelAndView model = new ModelAndView("ctnl_list");
		List<ChiTietNguyenLieu> ctnlList = ctnlService.getChiTietNguyenLieuByIdThucUong(idThucUong);
		model.addObject("ctnlList", ctnlList);

		return model;
	}

	@RequestMapping(value="/addctnl", method=RequestMethod.GET)
	public ModelAndView addChiTietNguyenLieu() {
		ModelAndView model = new ModelAndView();

		ChiTietNguyenLieu ctnl = new ChiTietNguyenLieu();	
		model.addObject("ctnlForm", ctnl);
		model.setViewName("ctnl_form");

		return model;
	}
	
	@RequestMapping(value="/savectnl", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("ctnlForm") ChiTietNguyenLieu ctnl) {
		ctnlService.saveOrUpdate(ctnl);

		return new ModelAndView("redirect:/chitietnguyenlieu/");
	}
}
