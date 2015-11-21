package com.ead.application.domain.DAO;

import com.ead.application.domain.Employee;
import com.ead.application.domain.MachineInformation;

import javax.crypto.Mac;
import java.util.List;

/**
 * Created by anoukh on 11/20/15.
 */
public interface MachineInformationDAO {
    List<MachineInformation> getMachineDetails();
}
