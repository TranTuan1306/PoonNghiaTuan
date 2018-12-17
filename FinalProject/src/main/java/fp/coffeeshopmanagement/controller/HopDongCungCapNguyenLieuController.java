package fp.coffeeshopmanagement.controller;

import fp.coffeeshopmanagement.model.HopDongCungCapNguyenLieu;
import fp.coffeeshopmanagement.service.HopDongCungCapNguyenLieuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value="/hopdongcungcapnguyenlieu")
public class HopDongCungCapNguyenLieuController {
    @Autowired
    HopDongCungCapNguyenLieuService hdccnlService;

    @RequestMapping(value="/list", method= RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("hdccnl_list");
        List<HopDongCungCapNguyenLieu> hdccnlList = hdccnlService.getAllHopDongCungCapNguyenLieu();
        model.addObject("hdccnlList", hdccnlList);

        return model;
    }

    @RequestMapping(value="/addhdccnl", method=RequestMethod.GET)
    public ModelAndView addHopDongCungCapNguyenLieu() {
        ModelAndView model = new ModelAndView();
        HopDongCungCapNguyenLieu hdccnl = new HopDongCungCapNguyenLieu();
        model.addObject("hdccnlForm", hdccnl);
        model.setViewName("hdccnl_form");

        return model;
    }


    @RequestMapping(value="/updatehdccnl/{id}", method=RequestMethod.GET)
    public ModelAndView editHopDongCungCapNguyenLieu(@PathVariable int id) {
        ModelAndView model = new ModelAndView();
        HopDongCungCapNguyenLieu hdccnl = hdccnlService.getHopDongCungCapNguyenLieuById(id);
        model.addObject("hdccnlForm", hdccnl);
        model.setViewName("hdccnl_form");

        return model;
    }

    @RequestMapping(value="/savehdccnl", method=RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("hdccnlForm") HopDongCungCapNguyenLieu hdccnl) {
        hdccnlService.saveOrUpdate(hdccnl);
        return new ModelAndView("redirect:/hopdongcungcapnguyenlieu/list");
    }

    @RequestMapping(value="/deletehdccnl/{id}", method=RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        hdccnlService.deleteHopDongCungCapNguyenLieu(id);
        return new ModelAndView("redirect:/hopdongcungcapnguyenlieu/list");
    }
}