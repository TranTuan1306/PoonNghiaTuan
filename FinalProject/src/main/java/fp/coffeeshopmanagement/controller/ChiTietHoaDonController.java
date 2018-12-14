package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.ChiTietHoaDon;
import fp.coffeeshopmanagement.service.ChiTietHoaDonService;

@Controller
@RequestMapping(value="/chitiethoadon")
public class ChiTietHoaDonController {
	@Autowired
	ChiTietHoaDonService cthdService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list() {
		int idHD=1;
		ModelAndView model = new ModelAndView("cthd_list");
		List<ChiTietHoaDon> cthdList = cthdService.getChiTietHoaDonById(idHD);
		model.addObject("cthdList", cthdList);

		return model;
	}

	@RequestMapping(value="/addcthd", method=RequestMethod.GET)
	public ModelAndView addChiTietHoaDon() {
		ModelAndView model = new ModelAndView();

		ChiTietHoaDon cthd = new ChiTietHoaDon();	
		model.addObject("cthdForm", cthd);
		model.setViewName("cthd_form");

		return model;
	}


//	@RequestMapping(value="/updatecthd/{id}", method=RequestMethod.GET)
//	public ModelAndView editChiTietHoaDon(@PathVariable int id) {
//		ModelAndView model = new ModelAndView();
//
//		ChiTietHoaDon cthd = cthdService.getChiTietHoaDonById(id);
//		model.addObject("cthdForm", cthd);
//		model.setViewName("cthd_form");
//
//		return model;
//	}

	@RequestMapping(value="/savecthd", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("cthdForm") ChiTietHoaDon cthd) {
		cthdService.saveOrUpdate(cthd);

		return new ModelAndView("redirect:/chitiethoadon/list");
	}

//	@RequestMapping(value="/deletecthd/{id}", method=RequestMethod.GET)
//	public ModelAndView delete(@PathVariable("id") int id) {
//		cthdService.deleteChiTietHoaDon(id);
//
//		return new ModelAndView("redirect:/chitiethoadon/");
//	}
}
