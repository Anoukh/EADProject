package com.ead.application.controller;

import com.ead.application.service.EmployeeService;
import com.ead.application.service.EngineInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Janitha on 11/21/2015.
 */

@Controller
public class HRController {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/hr")
    public String listEmployee(Model model){

//        logger.debug("Entered Controller");
        model.addAttribute("employees", employeeService.getEmployeeList());

        return "hr/Finance";
    }

}
