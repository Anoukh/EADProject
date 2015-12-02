package com.ead.application.domain.DAO.impl;

import com.ead.application.domain.Engine;
import com.ead.application.domain.DAO.EngineDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

<<<<<<< f97edebcb76ed2772c206a01d81fb1382a5ab1eb
=======
        String sql = "SELECT tbl_engine.engine_id, tbl_engine.engine_name, tbl_engine.fuel_type, tbl_engine.mounting_type, tbl_engine.cc,tbl_engine.no_of_cylinders, tbl_engine.image,tbl_engine.price, tbl_stock.no_of_units FROM tbl_engine INNER JOIN tbl_stock ON tbl_stock.engine_id=tbl_engine.engine_id";


>>>>>>> sales paages
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        String sql = "SELECT * FROM tbl_engine";

        engines = jdbcTemplate.query(sql, new RowMapper<Engine>() {

            public Engine mapRow(ResultSet resultSet, int i) throws SQLException {
//                logger.debug("Entered Query");
                Engine engine = new Engine();
                //  engine.setEngineID(resultSet.getInt("engineID"));
                engine.setEngine_name(resultSet.getString("engine_name"));
                engine.setCc(resultSet.getInt("cc"));
                engine.setEngineID(resultSet.getInt("engine_Id"));
                engine.setFuel_type(resultSet.getString("fuel_type"));
                engine.setMounting_type(resultSet.getString("mounting_type"));
                engine.setNo_of_cylinders(resultSet.getInt("no_of_cylinders"));
                engine.setPrice(resultSet.getDouble("price"));
                engine.setImage(resultSet.getString("image"));
                engine.setNo_of_units(resultSet.getInt("no_of_units"));

//                logger.debug("End of Query");
                return engine;
            }
        });

//        logger.debug("Return Query");
        return engines;
    }

<<<<<<< f97edebcb76ed2772c206a01d81fb1382a5ab1eb
    public String addNewEngine(Engine engine) {

        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

        String sql = "INSERT INTO tbl_engine (engine_name, fuel_type, mounting_type, cc, no_of_cylinders, price)"
                + " VALUES (?, ?, ?, ?, ?, ?)";

        try {
            jdbcTemplate.update(sql, engine.getEngine_name(), engine.getFuel_type(), engine.getMounting_type(),
                    engine.getCc(), engine.getNo_of_cylinders(), engine.getPrice());
        }catch (Exception e) {
            System.out.println(e);
            return "Error";
        }

        return "Success";

    }
}
=======
    public Engine findengineByID(int id) {
        Engine engine = null;
        String sql = "SELECT tbl_engine.engine_id, tbl_engine.engine_name, tbl_engine.fuel_type, tbl_engine.mounting_type, tbl_engine.cc,tbl_engine.no_of_cylinders, tbl_engine.image,tbl_engine.price, tbl_stock.no_of_units FROM tbl_engine INNER JOIN tbl_stock ON tbl_stock.engine_id=tbl_engine.engine_id WHERE tbl_engine.engine_id=?";


        Connection conn = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                engine = new Engine();
                engine.setEngine_name(rs.getString("engine_name"));
                engine.setCc(rs.getInt("cc"));
                engine.setEngineID(rs.getInt("engine_Id"));
                engine.setFuel_type(rs.getString("fuel_type"));
                engine.setMounting_type(rs.getString("mounting_type"));
                engine.setNo_of_cylinders(rs.getInt("no_of_cylinders"));
                engine.setPrice(rs.getDouble("price"));
                engine.setImage(rs.getString("image"));
                engine.setNo_of_units(rs.getInt("no_of_units"));


            }
            rs.close();


            ps.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);

        }
            return engine;
        }
    }
>>>>>>> sales paages
