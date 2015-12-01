package com.ead.application.domain.DAO;

import com.ead.application.domain.Engine;

import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
public interface EngineDAO {
    List<Engine> listEngine();

    String addNewEngine(Engine engine);
}
