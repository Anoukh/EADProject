package com.ead.application.domain;

/**
 * Created by anoukh on 11/20/15.
 */
public class FinanceTransaction {

    private String date;
    private int requestNo;
    private String department;
    private String description;
    private String amount;
    private int requestcomefrom;
/*      Getters and Setters       */

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getRequestNo() {
        return requestNo;
    }

    public void setRequestNo(int requestNo) {
        this.requestNo = requestNo;
    }

    public int getComeFrom() {
        return requestcomefrom;
    }

    public void setComeFrom(int requestcomefrom) {
        this.requestcomefrom = requestcomefrom;
    }


    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }
/*  Constructors    */

    public FinanceTransaction() {
        super();
    }

    public FinanceTransaction(String date, int requestNo, String department, String amount, String description) {
        this.date = date;
        this.requestNo = requestNo;
        this.department = department;
        this.amount = amount;
        this.description = description;
    }

}
