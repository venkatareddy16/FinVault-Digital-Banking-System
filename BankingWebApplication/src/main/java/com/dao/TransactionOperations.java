package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Transactions;
import com.utility.DBConnection;

public class TransactionOperations implements TransactionInfo{
	Connection con = null;
	PreparedStatement ps = null;

	@Override
	public List<Transactions> getTransactionsByAccount(long accNo) {

	    List<Transactions> list = new ArrayList<>();

	    String query = "SELECT * FROM transactions " +
	                   "WHERE from_acc_no = ? OR to_acc_no = ? " +
	                   "ORDER BY transaction_date DESC";

	    con = DBConnection.getConnection();
	    ResultSet rs=null;

	    try {

	        ps = con.prepareStatement(query);

	        ps.setLong(1, accNo);
	        ps.setLong(2, accNo);

	        rs = ps.executeQuery();

	        while (rs.next()) {

	            Transactions t = new Transactions();

	            t.setTransactionId(rs.getInt("transaction_id"));
	            t.setFromAccNo(rs.getLong("from_acc_no"));
	            t.setToAccNo(rs.getLong("to_acc_no"));
	            t.setTransactionType(rs.getString("transaction_type"));
	            t.setAmount(rs.getDouble("amount"));
	            t.setTransactionDate(rs.getTimestamp("transaction_date"));
	            t.setDescription(rs.getString("description"));

	            list.add(t);
	        }

	    } catch (Exception e) {
	        System.out.println(e.toString());
	    }

	    return list;
	}

	@Override
	public List<Transactions> getAllTransactions() {
		List<Transactions> list = new ArrayList<>();

	    String query = "SELECT * FROM transactions " +
	                   "ORDER BY transaction_date DESC";

	    con = DBConnection.getConnection();
	    ResultSet rs=null;

	    try {

	        ps = con.prepareStatement(query);


	        rs = ps.executeQuery();

	        while (rs.next()) {

	            Transactions t = new Transactions();

	            t.setTransactionId(rs.getInt("transaction_id"));
	            t.setFromAccNo(rs.getLong("from_acc_no"));
	            t.setToAccNo(rs.getLong("to_acc_no"));
	            t.setTransactionType(rs.getString("transaction_type"));
	            t.setAmount(rs.getDouble("amount"));
	            t.setTransactionDate(rs.getTimestamp("transaction_date"));
	            t.setDescription(rs.getString("description"));

	            list.add(t);
	        }

	    } catch (Exception e) {
	        System.out.println(e.toString());
	    }

	    return list;
	}

	
}
