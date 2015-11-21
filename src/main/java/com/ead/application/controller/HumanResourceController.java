package com.ead.application.controller;

import com.ead.application.service.EmployeeService;
import com.ead.application.service.EngineInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by anoukh on 11/20/15.
 */

@Controller
public class HumanResourceController {

//    private static final Logger logger = Logger.getLogger(InventoryController.class);

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/inventory")
    public String listEmployees(Model model){

//        logger.debug("Entered Controller");
        model.addAttribute("employees", employeeService.getEmployeeList());

        return "inventory/inventory-home";
    }
}
