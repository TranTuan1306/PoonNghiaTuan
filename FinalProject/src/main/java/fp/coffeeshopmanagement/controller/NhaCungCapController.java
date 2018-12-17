package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.NhaCungCap;
import fp.coffeeshopmanagement.model.ThucUong;
import fp.coffeeshopmanagement.service.NhaCungCapService;

@Controller
@RequestMapping(value="/nhacungcap")
public class NhaCungCapController {
	@Autowired
	NhaCungCapService nhacungcapService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("nhacungcap_list");
		List<NhaCungCap> nhacungcapList = nhacungcapService.getAllNhaCungCap();
		model.addObject("nhacungcapList", nhacungcapList);

		return model;
	}
	
	@RequestMapping(value="/addnhacungcap", method=RequestMethod.GET)
	public ModelAndView addNhaCungCap() {
		ModelAndView model = new ModelAndView();

		NhaCungCap nhacungcap = new NhaCungCap();	
		model.addObject("nhacungcapForm", nhacungcap);
		model.setViewName("nhacungcap_form");

		return model;
	}
	
	@RequestMapping(value="/updatenhacungcap/{id}", method=RequestMethod.GET)
	public ModelAndView editNhaCungCap(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		NhaCungCap nhacungcap = nhacungcapService.getNhaCungCapById(id);
		model.addObject("nhacungcapForm", nhacungcap);
		model.setViewName("nhacungcap_form");

		return model;
	}
	
	@RequestMapping(value="/deletenhacungcap/{id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		nhacungcapService.deleteNhaCungCap(id);

		return new ModelAndView("redirect:/nhacungcap/list");
	}
	
	@RequestMapping(value="/savenhacungcap", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("nhacungcapForm") NhaCungCap nhacungcap) {
		nhacungcapService.saveOrUpdate(nhacungcap);

		return new ModelAndView("redirect:/nhacungcap/list");
	}
}
