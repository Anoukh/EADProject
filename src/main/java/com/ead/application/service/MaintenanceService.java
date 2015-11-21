package com.ead.application.service;

import com.ead.application.domain.FinanceTransaction;
import com.ead.application.domain.MachineInformation;

import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
public interface MaintenanceService {
    List<MachineInformation> getMachineInformation();
}
