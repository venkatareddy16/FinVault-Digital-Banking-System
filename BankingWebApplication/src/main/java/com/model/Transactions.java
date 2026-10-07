package com.model;

import java.sql.Timestamp;    //it is used as datatype

public class Transactions {

    private int transactionId;
    private Long fromAccNo;
    private Long toAccNo;
    private String transactionType;
    private double amount;
    private Timestamp transactionDate;
    private String description;

    public Transactions() {
    }

    public Transactions(int transactionId, Long fromAccNo, Long toAccNo,
                        String transactionType, double amount,
                        Timestamp transactionDate, String description) {

        this.transactionId = transactionId;
        this.fromAccNo = fromAccNo;
        this.toAccNo = toAccNo;
        this.transactionType = transactionType;
        this.amount = amount;
        this.transactionDate = transactionDate;
        this.description = description;
    }

    public int getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(int transactionId) {
        this.transactionId = transactionId;
    }

    public Long getFromAccNo() {
        return fromAccNo;
    }

    public void setFromAccNo(Long fromAccNo) {
        this.fromAccNo = fromAccNo;
    }

    public Long getToAccNo() {
        return toAccNo;
    }

    public void setToAccNo(Long toAccNo) {
        this.toAccNo = toAccNo;
    }

    public String getTransactionType() {
        return transactionType;
    }

    public void setTransactionType(String transactionType) {
        this.transactionType = transactionType;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Timestamp getTransactionDate() {
        return transactionDate;
    }

    public void setTransactionDate(Timestamp transactionDate) {
        this.transactionDate = transactionDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

	@Override
	public String toString() {
		return "Transactions [transactionId=" + transactionId + ", fromAccNo=" + fromAccNo + ", toAccNo=" + toAccNo
				+ ", transactionType=" + transactionType + ", amount=" + amount + ", transactionDate=" + transactionDate
				+ ", description=" + description + "]";
	}
    
    
}