package com.ead.application.controller;

import com.ead.application.domain.Engine;
import com.ead.application.service.EngineInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 * Created by anoukh on 11/20/15.
 */

@Controller
public class InventoryController {

//    private static final Logger logger = Logger.getLogger(InventoryController.class);

    @Autowired
    private EngineInventoryService engineInventoryService;

    @RequestMapping("/inventory")
    public String listEngine(Model model){

//        logger.debug("Entered Controller");
        model.addAttribute("engines", engineInventoryService.getAvailableEngines());

        return "inventory/inventory-home";
    }

    @RequestMapping(value="/postEngine", method= RequestMethod.POST)
    public String addNewEngine(@ModelAttribute Engine engine, Model model) {

        System.out.println(engine.getEngine_name());
        String temp = engineInventoryService.addNewEngine(engine);

        System.out.println(temp);

        return "inventory/inventory-home";

    }
}
