package com.ead.application.domain.DAO.impl;

import com.ead.application.domain.DAO.FinanceDAO;
import com.ead.application.domain.DAO.HumanResourceDAO;
import com.ead.application.domain.Employee;
import com.ead.application.domain.Engine;
import com.ead.application.domain.FinanceTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */

@Repository
public class HumanResourceDAOImpl implements HumanResourceDAO {
    @Autowired
    DataSource dataSource;

    public List<Employee> getEmployeeDetails() {

        List<Employee> employees = null;

        String sql = "SELECT * FROM employee";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        employees = jdbcTemplate.query(sql, new RowMapper<Employee>() {

            public Employee mapRow(ResultSet resultSet, int i) throws SQLException {
//                logger.debug("Entered Query");
                Employee employee = new Employee();

                employee.setAddress(resultSet.getString("Address"));
                employee.setDesignation(resultSet.getString("Designation"));
                employee.setEmployeeID(resultSet.getInt("Employee_id"));
                employee.setEmployeeName(resultSet.getString("Employee_Name"));
                employee.setGender(resultSet.getString("Gender"));
                employee.setMobileNumber(resultSet.getInt("Contact_Number"));
//                logger.debug("End of Query");
                return employee;
            }
        });

        return employees;
    }
}
