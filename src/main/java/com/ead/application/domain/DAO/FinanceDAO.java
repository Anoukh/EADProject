package com.ead.application.domain.DAO;

import com.ead.application.domain.FinanceTransaction;

import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
public interface FinanceDAO {
    List<FinanceTransaction> getPendingTransactions();
    List<FinanceTransaction> getOutBoxTransactions();


    void acceptTransactionDb(int reqnumber, String reqdepartment, int callfrom);

    void rejectTransactionDb(int reqnumber, String reqdepartment, int callfrom);
}
