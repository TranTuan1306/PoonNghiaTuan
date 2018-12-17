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

//import fp.coffeeshopmanagement.model.ChiTietHoaDon;
//import fp.coffeeshopmanagement.service.ChiTietHoaDonService;

@Controller
@RequestMapping(value="/chitiethoadon")
public class ChiTietHoaDonController {
	@Autowired
	ChiTietHoaDonService cthdService;
	public int temp = -1;
	
//	@RequestMapping(value="/", method = RequestMethod.POST)
//	public ModelAndView listAll()
//	{
//		ModelAndView = model 
//	}

	@RequestMapping(value="/list/{idHD}", method=RequestMethod.GET)
	public ModelAndView list(@PathVariable int idHD) {
		temp = idHD;
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

	@RequestMapping(value="/savecthd", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("cthdForm") ChiTietHoaDon cthd) {
		cthd.setiMaHD(temp);
		cthdService.saveOrUpdate(cthd);

		return new ModelAndView("redirect:list/"+temp);
	}

}
