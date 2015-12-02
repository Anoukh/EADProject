package com.ead.application.service.impl;

import com.ead.application.domain.DAO.FinanceDAO;
import com.ead.application.domain.DAO.HumanResourceDAO;
import com.ead.application.domain.Employee;
import com.ead.application.domain.FinanceTransaction;
import com.ead.application.service.EmployeeService;
import com.ead.application.service.FinanceTransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
@Service
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    HumanResourceDAO humanResourceDAO;

    public List<Employee> getEmployeeList() {

        return humanResourceDAO.getEmployeeDetails();
    }
}
