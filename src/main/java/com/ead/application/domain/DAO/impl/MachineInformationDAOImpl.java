package com.ead.application.domain.DAO.impl;

import com.ead.application.domain.DAO.MachineInformationDAO;
import com.ead.application.domain.MachineInformation;
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
public class MachineInformationDAOImpl implements MachineInformationDAO {
    @Autowired
    DataSource dataSource;

    public List<MachineInformation> getMachineDetails() {

        List<MachineInformation> machineInformations = null;

        String sql = "SELECT * FROM machineinformation";

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        machineInformations = jdbcTemplate.query(sql, new RowMapper<MachineInformation>() {

            public MachineInformation mapRow(ResultSet resultSet, int i) throws SQLException {
//                logger.debug("Entered Query");
                MachineInformation machineInformation = new MachineInformation();

                machineInformation.setCondition(resultSet.getString("Condition"));
                machineInformation.setLastMaintainedDate(resultSet.getString("Last_Checked_Date"));
                machineInformation.setMachine_ID(resultSet.getString("Machine_Id"));
                machineInformation.setMachine_Name(resultSet.getString("Machine_Name"));
                machineInformation.setType(resultSet.getString("Checked_by"));
                machineInformation.setNextMaintainedDate(resultSet.getString("Next_Check_Date"));
//                logger.debug("End of Query");
                return machineInformation;
            }
        });

        return machineInformations;
    }
}
