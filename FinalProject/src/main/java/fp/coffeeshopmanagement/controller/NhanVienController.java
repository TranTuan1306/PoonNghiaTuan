package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.NhanVien;
import fp.coffeeshopmanagement.service.NhanVienService;

@Controller
@RequestMapping(value="/nhanvien")
public class NhanVienController {
	@Autowired
	NhanVienService nhanvienService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("nhanvien_list");
		List<NhanVien> nvList = nhanvienService.getAllNhanVien();
		model.addObject("nvList", nvList);

		return model;
	}
	
	@RequestMapping(value="/addnv", method=RequestMethod.GET)
	public ModelAndView addNhanVien() {
		ModelAndView model = new ModelAndView();

		NhanVien nv = new NhanVien();	
		model.addObject("nvForm", nv);
		model.setViewName("nv_form");

		return model;
	}
	
	@RequestMapping(value="/updatenv/{id}", method=RequestMethod.GET)
	public ModelAndView editNhanVien(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		NhanVien nv = nhanvienService.getNhanVienById(id);
		model.addObject("nvForm", nv);
		model.setViewName("nv_form");

		return model;
	}
	
	@RequestMapping(value="/deletenv/{id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		nhanvienService.deleteNhanVien(id);

		return new ModelAndView("redirect:/nhanvien/list");
	}
	
	@RequestMapping(value="/savenv", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("nvForm") NhanVien nv) {
		nhanvienService.saveOrUpdate(nv);

		return new ModelAndView("redirect:/nhanvien/list");
	}
}
