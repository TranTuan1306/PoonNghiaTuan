package fp.coffeeshopmanagement.controller;

import java.util.List;

import fp.coffeeshopmanagement.model.KhachHang;
import fp.coffeeshopmanagement.model.LoaiHoaDon;
import fp.coffeeshopmanagement.model.NhanVien;
import fp.coffeeshopmanagement.service.KhachHangService;
import fp.coffeeshopmanagement.service.LoaiHoaDonService;
import fp.coffeeshopmanagement.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.HoaDon;
import fp.coffeeshopmanagement.service.HoaDonService;

@Controller
@RequestMapping(value="/hoadon")
public class HoaDonController {
	@Autowired
	HoaDonService hdService;
	@Autowired
	KhachHangService khService;
	@Autowired
	NhanVienService nvService;
	@Autowired
	LoaiHoaDonService lhdService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("hd_list");
		List<HoaDon> hdList = hdService.getAllHoaDon();
		model.addObject("hdList", hdList);
		HoaDon hd = new HoaDon();
		model.addObject("hdForm", hd);
		List<KhachHang> khList = khService.getAllKhachHang();
		model.addObject("khList", khList);
		List<NhanVien> nvList = nvService.getAllNhanVien();
		model.addObject("nvList", nvList);
		List<LoaiHoaDon> lhdList = lhdService.getAllLoaiHoaDon();
		model.addObject("lhdList", lhdList);
		return model;
	}

//	@RequestMapping(value="/addhd", method=RequestMethod.GET)
//	public ModelAndView addHoaDon() {
//		ModelAndView model = new ModelAndView();
//
//		HoaDon hd = new HoaDon();
//		model.addObject("hdForm", hd);
//		model.setViewName("hd_form");
//
//		return model;
//	}


	@RequestMapping(value="/updatehd/{id}", method=RequestMethod.GET)
	public ModelAndView editHoaDon(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		HoaDon hd = hdService.getHoaDonById(id);
		model.addObject("hdForm", hd);
		model.setViewName("hd_form");

		return model;
	}

	@RequestMapping(value="/savehd", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("hdForm") HoaDon hd) {
		hdService.saveOrUpdate(hd);

		return new ModelAndView("redirect:/hoadon/list");
	}

	@RequestMapping(value="/deletehd/{id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		hdService.deleteHoaDon(id);

		return new ModelAndView("redirect:/hoadon/list");
	}
}
