package com.ead.application.domain.DAO.impl;

import com.ead.application.domain.Engine;
import com.ead.application.domain.DAO.EngineDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */

@Repository
public class EngineDAOImpl implements EngineDAO {
    @Autowired
    DataSource dataSource;




    public List<Engine> listEngine() {
//        logger.debug("Entered DAO");
        List<Engine> engines = null;

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        String sql = "SELECT * FROM tbl_engine";

        engines = jdbcTemplate.query(sql, new RowMapper<Engine>() {

            public Engine mapRow(ResultSet resultSet, int i) throws SQLException {
//                logger.debug("Entered Query");
                Engine engine = new Engine();

                engine.setEngine_name(resultSet.getString("engine_name"));
                engine.setCc(resultSet.getInt("cc"));
                engine.setEngineID(resultSet.getInt("engine_Id"));
                engine.setFuel_type(resultSet.getString("fuel_type"));
                engine.setMounting_type(resultSet.getString("mounting_type"));
                engine.setNo_of_cylinders(resultSet.getInt("no_of_cylinders"));
//                logger.debug("End of Query");
                return engine;
            }
        });

//        logger.debug("Return Query");
        return engines;
    }

    public String addNewEngine(Engine engine) {

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        String sql = "INSERT INTO tbl_engine (engine_name, fuel_type, mounting_type, cc, no_of_cylinders)"
                + " VALUES (?, ?, ?, ?, ?)";

        try {
            jdbcTemplate.update(sql, engine.getEngine_name(), engine.getFuel_type(), engine.getMounting_type(),
                    engine.getCc(), engine.getNo_of_cylinders());
        }catch (Exception e) {
            System.out.println(e);
            return "Error";
        }

        return "Success";

    }
}
