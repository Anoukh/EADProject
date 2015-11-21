package com.ead.application.controller;

import com.ead.application.service.FinanceTransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Janitha on 11/21/2015.
 */
@Controller
public class FinanceController {

    @Autowired
    FinanceTransactionService financeTransactionService;

    @RequestMapping("/finance")
    public String listEngine(Model model){

//        logger.debug("Entered Controller");
        model.addAttribute("engines", financeTransactionService.getFinancialTransactions());

        return "finance/financeHome";
    }

}
