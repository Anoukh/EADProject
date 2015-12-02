package com.ead.application.controller;

import com.ead.application.domain.Engine;
import com.ead.application.service.EngineInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class HomeController{

    @Autowired
    private EngineInventoryService e1;




    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
       List<Engine> eng= e1.getAvailableEngines();
        model.addAttribute("engin",eng);
        return "index"; //TODO Create Home Page

    }

}
