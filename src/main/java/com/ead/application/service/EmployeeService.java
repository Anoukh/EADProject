package com.ead.application.service;

import com.ead.application.domain.Employee;
import com.ead.application.domain.FinanceTransaction;

import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
public interface EmployeeService {
    List<Employee> getEmployeeList();
}
