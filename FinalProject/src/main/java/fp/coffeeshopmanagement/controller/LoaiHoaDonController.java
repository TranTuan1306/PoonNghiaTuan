package fp.coffeeshopmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fp.coffeeshopmanagement.model.LoaiHoaDon;
import fp.coffeeshopmanagement.service.LoaiHoaDonService;

@Controller
@RequestMapping(value = "/loaihoadon")
public class LoaiHoaDonController {
	@Autowired
    LoaiHoaDonService loaihoadonService;
	
	@RequestMapping(value="/", method= RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("loaihoadon_list");
        List<LoaiHoaDon> loaihoadonList = loaihoadonService.getAllLoaiHoaDon();
        model.addObject("loaihoadonList", loaihoadonList);
        
        LoaiHoaDon loaihoadon = new LoaiHoaDon();
        model.addObject("loaihoadonForm", loaihoadon);

        return model;
    }
	
	/*@RequestMapping(value="/addloaihoadon", method=RequestMethod.GET)
    public ModelAndView addLoaiHoaDon() {
        ModelAndView model = new ModelAndView();

        LoaiHoaDon loaihoadon = new LoaiHoaDon();
        model.addObject("loaihoadonForm", loaihoadon);
        model.setViewName("loaihoadon_form");

        return model;
    }*/
	
	@RequestMapping(value="/updateloaihoadon/{id}", method=RequestMethod.GET)
    public ModelAndView editLoaiHoaDon(@PathVariable int id) {
        ModelAndView model = new ModelAndView();

        LoaiHoaDon loaihoadon = loaihoadonService.getLoaiHoaDonById(id);
        model.addObject("loaihoadonForm", loaihoadon);
        model.setViewName("loaihoadon_form");

        return model;
    }
	
	@RequestMapping(value="/saveloaihoadon", method=RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("loaihoadonForm") LoaiHoaDon loaihoadon) {
        loaihoadonService.saveOrUpdate(loaihoadon);

        return new ModelAndView("redirect:/loaihoadon/");
    }

    @RequestMapping(value="/deleteloaihoadon/{id}", method=RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
    	loaihoadonService.deleteLoaiHoaDon(id);

        return new ModelAndView("redirect:/loaihoadon/");
    }
}
