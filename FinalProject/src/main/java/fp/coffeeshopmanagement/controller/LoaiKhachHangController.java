package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.LoaiKhachHang;
import fp.coffeeshopmanagement.service.LoaiKhachHangService;

@Controller
@RequestMapping(value="/loaikhachhang")
public class LoaiKhachHangController {
	@Autowired
    LoaiKhachHangService loaikhachhangService;
	
	@RequestMapping(value="/list", method= RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("loaikhachhang_list");
        List<LoaiKhachHang> loaikhachhangList = loaikhachhangService.getAllLoaiKhachHang();
        model.addObject("loaikhachhangList", loaikhachhangList);

        return model;
    }
	
	@RequestMapping(value="/addloaikhachhang", method=RequestMethod.GET)
    public ModelAndView addLoaiKhachHang() {
        ModelAndView model = new ModelAndView();

        LoaiKhachHang loaikhachhang = new LoaiKhachHang();
        model.addObject("loaikhachhangForm", loaikhachhang);
        model.setViewName("loaikhachhang_form");

        return model;
    }
	
	@RequestMapping(value="/updateloaikhachhang/{id}", method=RequestMethod.GET)
    public ModelAndView editLoaiKhachHang(@PathVariable int id) {
        ModelAndView model = new ModelAndView();

        LoaiKhachHang loaikhachhang = loaikhachhangService.getLoaiKhachHangById(id);
        model.addObject("loaikhachhangForm", loaikhachhang);
        model.setViewName("loaikhachhang_form");

        return model;
    }
	
	@RequestMapping(value="/saveloaikhachhang", method=RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("loaikhachhangForm") LoaiKhachHang loaikhachhang) {
		loaikhachhangService.saveOrUpdate(loaikhachhang);

        return new ModelAndView("redirect:/loaikhachhang/list");
    }

    @RequestMapping(value="/deleteloaikhachhang/{id}", method=RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
    	loaikhachhangService.deleteLoaiKhachHang(id);

        return new ModelAndView("redirect:/loaikhachhang/list");
    }
}
