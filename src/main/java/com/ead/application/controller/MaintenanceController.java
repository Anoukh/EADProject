package com.ead.application.controller;

import com.ead.application.service.EngineInventoryService;
import com.ead.application.service.MaintenanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by anoukh on 11/20/15.
 */

@Controller
public class MaintenanceController {

//    private static final Logger logger = Logger.getLogger(InventoryController.class);

    @Autowired
    private MaintenanceService maintenanceService;

    @RequestMapping("/maintenance")
    public String listMachine(Model model){

//        logger.debug("Entered Controller");
        model.addAttribute("maintenance", maintenanceService.getMachineInformation());

        return "maintenance/MachineInfoTable";
    }
}
