package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.KhachHang;
import fp.coffeeshopmanagement.service.KhachHangService;

@Controller
@RequestMapping(value="/khachhang")
public class KhachHangController {
	@Autowired
	KhachHangService khachhangService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("khachhang_list");
		List<KhachHang> khList = khachhangService.getAllKhachHang();
		model.addObject("khList", khList);

		return model;
	}
	
	@RequestMapping(value="/addkh", method=RequestMethod.GET)
	public ModelAndView addKhachHang() {
		ModelAndView model = new ModelAndView();

		KhachHang kh = new KhachHang();	
		model.addObject("khForm", kh);
		model.setViewName("kh_form");

		return model;
	}
	
	@RequestMapping(value="/updatekhachhang/{id}", method=RequestMethod.GET)
	public ModelAndView editKhachHang(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		KhachHang kh = khachhangService.getKhachHangById(id);
		model.addObject("khForm", kh);
		model.setViewName("kh_form");

		return model;
	}
	
	@RequestMapping(value="/deletekh/{id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		khachhangService.deleteKhachHang(id);

		return new ModelAndView("redirect:/khachhang/list");
	}
	
	@RequestMapping(value="/savekh", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("khForm") KhachHang kh) {
		khachhangService.saveOrUpdate(kh);

		return new ModelAndView("redirect:/khachhang/list");
	}
}
