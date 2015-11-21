package com.ead.application.controller;

import com.ead.application.service.EngineInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by anoukh on 11/20/15.
 */

@Controller
public class SalesController {

//    private static final Logger logger = Logger.getLogger(InventoryController.class);

    @Autowired
    private EngineInventoryService engineInventoryService;

    @RequestMapping("/inventory")
    public String listEngine(Model model){

//        logger.debug("Entered Controller");
        model.addAttribute("engines", engineInventoryService.getAvailableEngines());

        return "inventory/inventory-home";
    }
}
