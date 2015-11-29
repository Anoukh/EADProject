package com.ead.application.controller;

import com.ead.application.service.FinanceTransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.ws.Response;
import java.io.PrintWriter;

/**
 * Created by Janitha on 11/21/2015.
 */
@Controller
public class FinanceController {

    @Autowired
    FinanceTransactionService financeTransactionService;
    //FinanceTransactionService financeTransactionService;

    @RequestMapping("/finance")
    public String listTransaction(Model model){

//        logger.debug("Entered Controller");
      model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());

        return "finance/financeHome";
    }

    @ResponseBody
    @RequestMapping("/financeoutflow")
    public String ll(Model model){

//        logger.debug("Entered Controller");
        //  model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());

        return "";
    }

    //@RequestMapping("/acceptfincane") @ResponseBody
    @RequestMapping(value = "/acceptfincane", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
    public  String dd(@RequestParam("reqnumber") String reqnumber, @RequestParam("reqdepartment") String reqdepartment){
           System.out.println(reqnumber);

        int intreqnember= Integer.parseInt(reqnumber);

        financeTransactionService.acceptTransaction(intreqnember,reqdepartment);
        //String acceptfincane = MediaType.APPLICATION_JSON_VALUE
//        logger.debug("Entered Controller");
        //  model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());

        return "finance/financeHome";
    }
}
