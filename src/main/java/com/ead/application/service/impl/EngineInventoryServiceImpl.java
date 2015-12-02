package com.ead.application.service.impl;

import com.ead.application.domain.Engine;
import com.ead.application.domain.DAO.EngineDAO;
import com.ead.application.service.EngineInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
@Service
public class EngineInventoryServiceImpl implements EngineInventoryService{

    @Autowired
    EngineDAO engineDAO;

    public List<Engine> getAvailableEngines() {
        return engineDAO.listEngine();
    }


    public String addNewEngine(Engine engine) { return engineDAO.addNewEngine(engine); }

    public Engine findengineByID(int id) {

        return engineDAO.findengineByID(id);
    }

}
