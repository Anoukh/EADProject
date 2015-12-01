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
    //View data
    @RequestMapping("/finance")
    public String listTransaction(Model model){

    //logger.debug("Entered Controller");
      model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());
      model.addAttribute("outboxes", financeTransactionService.getOutBoxTransactions());

        return "finance/financeHome";
    }

<<<<<<< 29b4b5ff3494308b1aafe14204e7f4061bba4b39
    //@ResponseBody
    @RequestMapping("/financeoutflow")
    public String ll(Model model){

//        logger.debug("Entered Controller");
        //  model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());

        return "";
    }

    @RequestMapping("/financeAorR")
    public String lml(Model model){

//        logger.debug("Entered Controller");
        //  model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());

        return "finance/financeAorR";
    }

    //@RequestMapping("/acceptfincane") @ResponseBody
    //@ResponseBody
    @RequestMapping(value = "/acceptfincane", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public   String dd(@RequestParam("reqnumber") String reqnumber, @RequestParam("reqdepartment") String reqdepartment,  @RequestParam("callfrom") String callfrom){
           System.out.println(reqnumber);
        int intreqnember =32;
        int intcallfrom =8;
        reqdepartment ="Sales";
       // int intreqnember= Integer.parseInt(reqnumber);
       // int intcallfrom= Integer.parseInt(callfrom);
    System.out.println(intcallfrom + "callfrom");
=======

    @RequestMapping(value = "/acceptfincane", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
<<<<<<< 24f9a9ecb2285cbd3e70c2a552072cfa673ce5e4
    public   String dd(@RequestParam("reqnumber") String reqnumber, @RequestParam("reqdepartment") String reqdepartment,  @RequestParam("callfrom") String callfrom){
           System.out.println(reqnumber);
=======
    public   String dd(@RequestParam("reqnumber") String reqnumber, @RequestParam("reqdepartment") String reqdepartment){

        System.out.println(reqnumber+reqdepartment);
>>>>>>> upto comefrom

        int intreqnember= Integer.parseInt(reqnumber);
        int intcallfrom= Integer.parseInt(callfrom);

>>>>>>> upto comefrom
        financeTransactionService.acceptTransaction(intreqnember,reqdepartment,intcallfrom);
        //String acceptfincane = MediaType.APPLICATION_JSON_VALUE
//        logger.debug("Entered Controller");
        //  model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());
    System.out.println("Work Done");
        return "inventory/inventory-home";

    }


    @RequestMapping(value = "/rejectfincane", method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
<<<<<<< 24f9a9ecb2285cbd3e70c2a552072cfa673ce5e4
    public  String jj(@RequestParam("reqnumber") String reqnumber, @RequestParam("reqdepartment") String reqdepartment, @RequestParam("status") String callfrom){
=======
    public  String jj(@RequestParam("reqnumber") String reqnumber, @RequestParam("reqdepartment") String reqdepartment){

>>>>>>> upto comefrom
        System.out.println(reqnumber);

        int intreqnember= Integer.parseInt(reqnumber);
        int intcallfrom= Integer.parseInt(callfrom);



        financeTransactionService.rejectTransaction(intreqnember, reqdepartment,intcallfrom);
        //String acceptfincane = MediaType.APPLICATION_JSON_VALUE
//        logger.debug("Entered Controller");
        //  model.addAttribute("transactions", financeTransactionService.getFinancialTransactions());

        return "finance/financeHome";
    }
}
