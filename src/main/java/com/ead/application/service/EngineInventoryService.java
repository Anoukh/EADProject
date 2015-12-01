package com.ead.application.service;

import com.ead.application.domain.Engine;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
public interface EngineInventoryService {
    List<Engine> getAvailableEngines();


    String addNewEngine(Engine engine);

    Engine findengineByID(int id);

}
