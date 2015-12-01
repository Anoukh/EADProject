package com.ead.application.service;

import com.ead.application.domain.Engine;
import com.ead.application.domain.FinanceTransaction;

import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
public interface FinanceTransactionService {
    List<FinanceTransaction> getFinancialTransactions();
    List<FinanceTransaction> getOutBoxTransactions();

    void acceptTransaction(int reqnumber, String reqdepartment, int callfrom);
    void rejectTransaction(int reqnumber, String reqdepartment, int callfrom);
}

