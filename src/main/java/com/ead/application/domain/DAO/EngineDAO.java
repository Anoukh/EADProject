package com.ead.application.domain.DAO;

import com.ead.application.domain.Engine;

import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
public interface EngineDAO {
    List<Engine> listEngine();
<<<<<<< f97edebcb76ed2772c206a01d81fb1382a5ab1eb

    String addNewEngine(Engine engine);
=======
    Engine findengineByID(int id);


>>>>>>> sales paages
}
