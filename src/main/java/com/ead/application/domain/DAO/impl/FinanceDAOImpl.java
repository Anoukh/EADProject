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

        String sql = "SELECT * FROM loadinbox ORDER BY Date ASC";

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
//                logger.debug("End of Query");
                return financeTransaction;
            }
        });

        return financeTransactions;
    }
    public List<FinanceTransaction> getOutBoxTransactions() {
        List<FinanceTransaction> financeOutBoxTransactions = null;

<<<<<<< 3f0ba25dde801ec5c3dc71dc2f2ef4d7b8c4181d
<<<<<<< 24f9a9ecb2285cbd3e70c2a552072cfa673ce5e4
    public void acceptTransactionDb(int reqnumber, String reqdepartment, int callfrom) {
       String sql ="";
        System.out.println(reqnumber+"  "+ reqdepartment+"  " + callfrom);
        System.out.println("DBexecute");
        if(callfrom == 8){
           sql = "UPDATE inflow SET Status = '1' WHERE Request_No = '"+reqnumber+ "' AND Department = '"+reqdepartment+"'";
           // sql = "UPDATE inflow SET Status = '1' WHERE Request_No =  '32' AND Department = 'Sales'";

       }
        else if(callfrom == 9){
            sql = "UPDATE outflow SET Status = 1 WHERE Request_No =  "+reqnumber+ "AND Department = "+reqdepartment;

        }
    System.out.println(sql);

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql);
    }

    public void rejectTransactionDb(int reqnumber, String reqdepartment, int callfrom) {
<<<<<<< 29b4b5ff3494308b1aafe14204e7f4061bba4b39
        String sql ="";
        System.out.println(reqnumber+"  "+ reqdepartment+"  " + callfrom);
        System.out.println("DBexecute");
        if(callfrom == 8){
            sql = "UPDATE inflow SET Status = '1' WHERE Request_No = '"+reqnumber+ "' AND Department = '"+reqdepartment+"'";
            // sql = "UPDATE inflow SET Status = '1' WHERE Request_No =  '32' AND Department = 'Sales'";

        }
        else if(callfrom == 9){
            sql = "UPDATE outflow SET Status = 1 WHERE Request_No =  "+reqnumber+ "AND Department = "+reqdepartment;
=======
=======
=======
>>>>>>> new pages for finance inbox and outbox
        String sql = "SELECT * FROM loadoutbox ORDER BY Date ASC";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        financeOutBoxTransactions = jdbcTemplate.query(sql, new RowMapper<FinanceTransaction>() {

            public FinanceTransaction mapRow(ResultSet resultSet, int i) throws SQLException {
//                logger.debug("Entered Query");
                FinanceTransaction financeOutBoxTransaction= new FinanceTransaction();

                financeOutBoxTransaction.setAmount(resultSet.getString("Amount"));
                financeOutBoxTransaction.setDate(resultSet.getString("Date"));
                financeOutBoxTransaction.setDepartment(resultSet.getString("Department"));
                financeOutBoxTransaction.setDescription(resultSet.getString("Description"));
                financeOutBoxTransaction.setRequestNo(resultSet.getInt("Request_Id"));
//                logger.debug("End of Query");
                return financeOutBoxTransaction;
            }
        });

        return financeOutBoxTransactions;
    }

    public void acceptTransactionDb(int reqnumber, String reqdepartment, int callfrom) {
        String sql ="";
        if(callfrom == 8){
            sql = "UPDATE inflow SET Status = 1 WHERE Request_No = '"+reqnumber+ "'AND Department ='"+reqdepartment+"'";
        }
        else if(callfrom == 9){
            sql = "UPDATE outflow SET Status = 1 WHERE Request_No = '"+reqnumber+ "'AND Department ='"+reqdepartment+"'";

        }

        JdbcTemplate jdbcTemplate = new JdbcTemplate();
        jdbcTemplate.update(sql);

    }
    public void rejectTransactionDb(int reqnumber, String reqdepartment, int callfrom) {
        String sql ="";
        if(callfrom == 8){
            sql = "UPDATE inflow SET Status = 2 WHERE Request_No = '"+reqnumber+ "'AND Department ='"+reqdepartment+"'";
        }
        else if(callfrom == 9){
            sql = "UPDATE outflow SET Status = 2 WHERE Request_No =  "+reqnumber+ "AND Department = "+reqdepartment;

        }

        JdbcTemplate jdbcTemplate = new JdbcTemplate();
        jdbcTemplate.update(sql);

    }

    public List<FinanceTransaction> getInFlowTransactions(){
        List<FinanceTransaction> financeInFlowTransactions = null;

        String sql = "SELECT * FROM inflow WHERE Status='1' ORDER BY Date ASC";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        financeInFlowTransactions = jdbcTemplate.query(sql, new RowMapper<FinanceTransaction>() {

            public FinanceTransaction mapRow(ResultSet resultSet, int i) throws SQLException {
//                logger.debug("Entered Query");
                FinanceTransaction financeInFlowTransaction= new FinanceTransaction();

                financeInFlowTransaction.setAmount(resultSet.getString("Amount"));
                financeInFlowTransaction.setDate(resultSet.getString("Date"));
                financeInFlowTransaction.setDepartment(resultSet.getString("Department"));
                financeInFlowTransaction.setDescription(resultSet.getString("Description"));
                financeInFlowTransaction.setRequestNo(resultSet.getInt("Request_Id"));
//                logger.debug("End of Query");
                return financeInFlowTransaction;
            }
        });

        return financeInFlowTransactions;
    }
<<<<<<< 3f0ba25dde801ec5c3dc71dc2f2ef4d7b8c4181d
    public void rejectTransactionDb(int reqnumber, String reqdepartment) {
>>>>>>> upto comefrom
>>>>>>> upto comefrom

        }
        System.out.println(sql);

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql);
=======
    public List<FinanceTransaction> getOutFlowTransactions(){
        List<FinanceTransaction> financeOutFlowTransactions = null;

        String sql = "SELECT * FROM outflow WHERE Status='1' ORDER BY Date ASC";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        financeOutFlowTransactions = jdbcTemplate.query(sql, new RowMapper<FinanceTransaction>() {

            public FinanceTransaction mapRow(ResultSet resultSet, int i) throws SQLException {
//                logger.debug("Entered Query");
                FinanceTransaction financeOutFlowTransaction= new FinanceTransaction();

                financeOutFlowTransaction.setAmount(resultSet.getString("Amount"));
                financeOutFlowTransaction.setDate(resultSet.getString("Date"));
                financeOutFlowTransaction.setDepartment(resultSet.getString("Department"));
                financeOutFlowTransaction.setDescription(resultSet.getString("Description"));
                financeOutFlowTransaction.setRequestNo(resultSet.getInt("Request_Id"));
//                logger.debug("End of Query");
                return financeOutFlowTransaction;
            }
        });

        return financeOutFlowTransactions;
>>>>>>> new pages for finance inbox and outbox
    }


}
