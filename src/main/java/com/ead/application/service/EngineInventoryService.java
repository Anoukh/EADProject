package com.ead.application.service;

import com.ead.application.domain.Engine;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
public interface EngineInventoryService {
    List<Engine> getAvailableEngines();
<<<<<<< f97edebcb76ed2772c206a01d81fb1382a5ab1eb

    String addNewEngine(Engine engine);
=======
    Engine findengineByID(int id);
>>>>>>> sales paages
}
