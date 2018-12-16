package fp.coffeeshopmanagement.controller;

import fp.coffeeshopmanagement.model.CongViec;
import fp.coffeeshopmanagement.service.CongViecService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/congviec")
public class CongViecController {
    @Autowired
    CongViecService cvService;

    @RequestMapping(value="/list", method= RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("cv_list");
        List<CongViec> cvList = cvService.getAllCongViec();
        model.addObject("cvList", cvList);

        return model;
    }

    @RequestMapping(value="/addcv", method=RequestMethod.GET)
    public ModelAndView addCongViec() {
        ModelAndView model = new ModelAndView();

        CongViec cv = new CongViec();
        model.addObject("cvForm", cv);
        model.setViewName("cv_form");

        return model;
    }


    @RequestMapping(value="/updatecv/{id}", method=RequestMethod.GET)
    public ModelAndView editCongViec(@PathVariable int id) {
        ModelAndView model = new ModelAndView();

        CongViec cv = cvService.getCongViecById(id);
        model.addObject("cvForm", cv);
        model.setViewName("cv_form");

        return model;
    }

    @RequestMapping(value="/savecv", method=RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("cvForm") CongViec cv) {
        cvService.saveOrUpdate(cv);

        return new ModelAndView("redirect:/congviec/list");
    }

    @RequestMapping(value="/deletecv/{id}", method=RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        cvService.deleteCongViec(id);

        return new ModelAndView("redirect:/congviec/list");
    }
}
