package com.ead.application.domain;

/**
 * Created by anoukh on 11/20/15.
 */
public class Employee {

    private int employeeID;
    private String employeeName;
    private String address;
    private String email;
    private String designation;
    private String gender;
    private int mobileNumber;
    private String NIC;

/*      Getters and Setters       */

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(int mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getNIC() {
        return NIC;
    }

    public void setNIC(String NIC) {
        this.NIC = NIC;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    /*  Constructors    */

    public Employee() {
        super();
    }

    public Employee(int employeeID, String NIC, int mobileNumber, String employeeName, String address, String email, String designation, String gender) {
        this.employeeID = employeeID;
        this.NIC = NIC;
        this.mobileNumber = mobileNumber;
        this.employeeName = employeeName;
        this.address = address;
        this.email = email;
        this.designation = designation;
        this.gender = gender;
    }
}
