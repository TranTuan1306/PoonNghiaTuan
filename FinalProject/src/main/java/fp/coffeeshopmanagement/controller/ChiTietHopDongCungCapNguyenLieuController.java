package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.ChiTietHopDongCungCapNguyenLieu;
//import fp.coffeeshopmanagement.model.HoaDon;
import fp.coffeeshopmanagement.model.HopDongCungCapNguyenLieu;
import fp.coffeeshopmanagement.service.ChiTietHopDongCungCapNguyenLieuService;

@Controller
@RequestMapping(value="/chitiethopdongcungcapnguyenlieu")
public class ChiTietHopDongCungCapNguyenLieuController {
	@Autowired
	ChiTietHopDongCungCapNguyenLieuService cthdccnlService;
	int temp = -1;
	
	@RequestMapping(value="/list/{idHopDong}", method=RequestMethod.GET)
	public ModelAndView list(@PathVariable int idHopDong) {
		temp = idHopDong;
		ModelAndView model = new ModelAndView("cthdccnl_list");
		List<ChiTietHopDongCungCapNguyenLieu> cthdccnlList = cthdccnlService.getChiTietHopDongCungCapNguyenLieuById(idHopDong);
		model.addObject("cthdccnlList", cthdccnlList);

		return model;
	}

	@RequestMapping(value="/addcthdccnl", method=RequestMethod.GET)
	public ModelAndView addChiTietHopDongCungCapNguyenLieu() {
		ModelAndView model = new ModelAndView();

		ChiTietHopDongCungCapNguyenLieu cthdccnl = new ChiTietHopDongCungCapNguyenLieu();	
		model.addObject("cthdccnlForm", cthdccnl);
		model.setViewName("cthdccnl_form");

		return model;
	}
	
	@RequestMapping(value="/savecthdccnl", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("cthdccnlForm") ChiTietHopDongCungCapNguyenLieu cthdccnl) {
		cthdccnl.setiMaHopDong(new HopDongCungCapNguyenLieu(temp));
		cthdccnlService.saveOrUpdate(cthdccnl);

		return new ModelAndView("redirect:list/"+temp);
	}
}
