package com.ead.application.service.impl;

import com.ead.application.domain.DAO.FinanceDAO;
import com.ead.application.domain.DAO.MachineInformationDAO;
import com.ead.application.domain.FinanceTransaction;
import com.ead.application.domain.MachineInformation;
import com.ead.application.service.FinanceTransactionService;
import com.ead.application.service.MaintenanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.crypto.Mac;
import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
@Service
public class MaintenanceServiceImpl implements MaintenanceService{

    @Autowired
    MachineInformationDAO machineInformationDAO;

    public List<MachineInformation> getMachineInformation() {
        return machineInformationDAO.getMachineDetails();
    }
}
