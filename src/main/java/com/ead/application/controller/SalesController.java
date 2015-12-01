package com.ead.application.controller;

import com.ead.application.domain.Engine;
import com.ead.application.service.EngineInventoryService;
import com.ead.application.service.FinanceTransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Anushka Getamanna on 11/27/2015.
 */
@Controller
public class SalesController {
 @Autowired
 private EngineInventoryService aaa;



//    FinanceTransactionService financeTransactionService;
        @RequestMapping("/login")
    public String login(){

//        logger.debug("Entered Controller");
    //       model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());

    return "sales/login";
    }

    @RequestMapping("/register")
    public String register(Model model){

        return "sales/register";
    }

    @RequestMapping("/checkout")
    public String checkOutView(Model model){

//        logger.debug("Entered Controller");
        //       model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());

        return "sales/checkout";
    }

    @RequestMapping(value ="/product/{name}")
     public String productView(@PathVariable String name,ModelMap model){
        System.out.println(name);


       Engine s= aaa.findengineByID(Integer.parseInt(name));
     //   System.out.println(s.getCc());
      //  System.out.println(s.getEngine_name());
        model.addAttribute("oneEngin", s);
//        logger.debug("Entered Controller");
        //       model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());

        return "sales/single_product";
    }

    @RequestMapping("/addEngine")
    public String addEngine(Model model){

//        logger.debug("Entered Controller");
        //       model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());

        return "sales/add_engine";
    }


}
