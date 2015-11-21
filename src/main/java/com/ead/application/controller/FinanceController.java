package com.ead.application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Janitha on 11/21/2015.
 */
@Controller
public class FinanceController {

    @RequestMapping("/finance")
    public String listEngine(Model model){

//        logger.debug("Entered Controller");
     //   model.addAttribute("engines", engineInventoryService.getAvailableEngines());

        return "finance/financeHome";
    }

}
