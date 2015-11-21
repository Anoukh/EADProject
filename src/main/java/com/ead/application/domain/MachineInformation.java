package com.ead.application.domain;

/**
 * Created by anoukh on 11/20/15.
 */
public class MachineInformation {

    private String machine_ID;
    private String machine_Name;
    private String type;
    private String condition;
    private String lastMaintainedDate;
    private String nextMaintainedDate;

/*      Getters and Setters       */

    public String getMachine_ID() {
        return machine_ID;
    }

    public void setMachine_ID(String machine_ID) {
        this.machine_ID = machine_ID;
    }

    public String getMachine_Name() {
        return machine_Name;
    }

    public void setMachine_Name(String machine_Name) {
        this.machine_Name = machine_Name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getLastMaintainedDate() {
        return lastMaintainedDate;
    }

    public void setLastMaintainedDate(String lastMaintainedDate) {
        this.lastMaintainedDate = lastMaintainedDate;
    }

    public String getNextMaintainedDate() {
        return nextMaintainedDate;
    }

    public void setNextMaintainedDate(String nextMaintainedDate) {
        this.nextMaintainedDate = nextMaintainedDate;
    }

    /*  Constructors    */

    public MachineInformation() {
        super();
    }

    public MachineInformation(String machine_ID, String machine_Name, String type, String condition, String lastMaintainedDate, String nextMaintainedDate) {
        this.machine_ID = machine_ID;
        this.machine_Name = machine_Name;
        this.type = type;
        this.condition = condition;
        this.lastMaintainedDate = lastMaintainedDate;
        this.nextMaintainedDate = nextMaintainedDate;
    }
}
