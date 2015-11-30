package com.ead.application.domain.DAO.impl;

import com.ead.application.domain.DAO.EngineDAO;
import com.ead.application.domain.DAO.FinanceDAO;
import com.ead.application.domain.Engine;
import com.ead.application.domain.FinanceTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */

@Repository
public class FinanceDAOImpl implements FinanceDAO {
    @Autowired
    DataSource dataSource;

    public List<FinanceTransaction> getPendingTransactions() {

        List<FinanceTransaction> financeTransactions = null;

<<<<<<< HEAD
        String sql = "SELECT * FROM outflow where Status='0'";
=======
        String sql = "SELECT * FROM loadinbox ORDER BY Date DESC ";
>>>>>>> finance sql changed

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        financeTransactions = jdbcTemplate.query(sql, new RowMapper<FinanceTransaction>() {

    public FinanceTransaction mapRow(ResultSet resultSet, int i) throws SQLException {
//                logger.debug("Entered Query");
        FinanceTransaction financeTransaction= new FinanceTransaction();

                financeTransaction.setAmount(resultSet.getString("Amount"));
                financeTransaction.setDate(resultSet.getString("Date"));
                financeTransaction.setDepartment(resultSet.getString("Department"));
                financeTransaction.setDescription(resultSet.getString("Description"));
                financeTransaction.setRequestNo(resultSet.getInt("Request_Id"));
                financeTransaction.setComeFrom(resultSet.getInt("Status"));
//                logger.debug("End of Query");
                return financeTransaction;
            }
        });

        return financeTransactions;
    }

    public void acceptTransactionDb(int reqnumber, String reqdepartment) {
        
    }

    public void rejectTransactionDb(int reqnumber, String reqdepartment) {

    }


}
