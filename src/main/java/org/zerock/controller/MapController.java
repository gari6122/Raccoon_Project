package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapController {
	
	 @RequestMapping("/roadMap/map")
	    public ModelAndView roadMapPage() {
	        return new ModelAndView("/roadMap/map"); 
	    }	
}
