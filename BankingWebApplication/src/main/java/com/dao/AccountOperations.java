package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Account;
import com.utility.DBConnection;

public class AccountOperations implements AccountInfo {
	boolean status = false;
	Connection con = null;
	PreparedStatement ps = null;
	
	
	@Override
	public boolean createAccount(Account a) {
		String query = "INSERT INTO account (user_id, acc_name, phone, balance) VALUES (?,?,?,?)";
		con = DBConnection.getConnection();
		try {
			ps = con.prepareStatement(query);
			//ps.setLong(1, a.getAcc_no());
			ps.setInt(1, a.getUser_id());
			ps.setString(2, a.getAcc_name());
			ps.setString(3, a.getPhone());
			ps.setDouble(4, a.getBalance());
			int n = ps.executeUpdate();
			if (n > 0) {
				status = true;
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public boolean depositeMoneyById(long accno, double amt) {
		  //String query1 ="SELECT acc_no FROM account WHERE user_id = ?";
		String query = "update account set balance=balance+? where acc_no=?";
		con = DBConnection.getConnection();
		ResultSet rs=null;
		try {
//			 // First get account number using user_id
//			
//	        ps = con.prepareStatement(query1);
//
//	        ps.setInt(1, userid);
//
//	        rs = ps.executeQuery();
//
//	        long accNo = 0;
//
//	        while (rs.next()) {
//
//	            accNo = rs.getLong("acc_no");
//
//	        }
	        
			//update balance
			ps = con.prepareStatement(query);
			ps.setDouble(1, amt);
			ps.setLong(2, accno);
			int n = ps.executeUpdate();
			if (n > 0) {
				status = true;
				// Store deposit transaction into transaction table
				 String query2 = "INSERT INTO transactions "
		                    + "(from_acc_no, to_acc_no, transaction_type, amount, description) "
		                    + "VALUES (?, ?, ?, ?, ?)";

		            ps = con.prepareStatement(query2);

		            ps.setLong(1, accno);
		            ps.setObject(2, null);
		            ps.setString(3, "DEPOSIT");
		            ps.setDouble(4, amt);
		            ps.setString(5, "Money deposited");

		            ps.executeUpdate();

			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public boolean withdrawMoneyById(long accno, double amt) {
		//String query1 ="SELECT acc_no FROM account WHERE user_id = ?";
		String query = "update account set balance=balance-? where acc_no=? and balance>=?";
		con = DBConnection.getConnection();
		ResultSet rs=null;
		try {
//			 // First get account number using user_id
//	        ps = con.prepareStatement(query1);
//
//	        ps.setInt(1, userid);
//
//	        rs = ps.executeQuery();
//
//	        long accNo = 0;
//
//	        while (rs.next()) {
//
//	            accNo = rs.getLong("acc_no");
//
//	        }
	        
	        // then Update balance
			ps = con.prepareStatement(query);
			ps.setDouble(1, amt);
			ps.setLong(2, accno);
			ps.setDouble(3, amt);
			int n = ps.executeUpdate();
			if (n > 0) {
				status = true;
				// Store deposit transaction into transaction table
				String query2 = "INSERT INTO transactions "
	                    + "(from_acc_no, to_acc_no, transaction_type, amount, description) "
	                    + "VALUES (?, ?, ?, ?, ?)";

	            ps = con.prepareStatement(query2);

	            ps.setLong(1, accno);
	            ps.setObject(2, null);
	            ps.setString(3, "WITHDRAW");
	            ps.setDouble(4, amt);
	            ps.setString(5, "Money withdrawn");

	            ps.executeUpdate();
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public boolean updateAccountById(long accno, Account a) {
		String query = "update account set acc_name=?, phone=? where acc_no=?";
		con = DBConnection.getConnection();
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, a.getAcc_name());
			ps.setString(2, a.getPhone());
			ps.setLong(3, accno);
			int n = ps.executeUpdate();
			if (n > 0) {
				status = true;
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public boolean deleteAccountbyId(long accno) {
		String query = "delete from account where acc_no=?";
		con = DBConnection.getConnection();
		try {
			ps = con.prepareStatement(query);
			ps.setLong(1, accno);
			int n = ps.executeUpdate();
			if (n > 0) {
				status = true;
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}

	@Override
	public double checkBalance(long accno) {
		String query = "select balance from account where acc_no=?";
		con = DBConnection.getConnection();
		ResultSet rs=null;
		try {
			ps = con.prepareStatement(query);
			ps.setLong(1, accno);
			rs=ps.executeQuery();
			while(rs.next()) {
				return rs.getDouble("balance");
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return 0;
	}

	@Override
	public Account viewAccountDetailsById(int userid) {
		String query = "select * from account where user_id=?";
		con = DBConnection.getConnection();
		ResultSet rs=null;
		Account a=new Account();
		try {
			ps = con.prepareStatement(query);
			ps.setLong(1, userid);
			rs=ps.executeQuery();
			while(rs.next()) {
				a.setAcc_no(rs.getLong("acc_no"));
				a.setUser_id(rs.getInt("user_id"));
				a.setAcc_name(rs.getString("acc_name"));
				a.setPhone(rs.getString("phone"));
				a.setBalance(rs.getDouble("balance"));
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return a;
	}

	@Override
	public List<Account> viewAllAccounts() {
		String query = "select * from account";
		con = DBConnection.getConnection();
		ResultSet rs=null;
		List<Account> list=new ArrayList<>();
		try {
			ps = con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()) {
				Account a=new Account();
				a.setAcc_no(rs.getLong("acc_no"));
				a.setUser_id(rs.getInt("user_id"));
				a.setAcc_name(rs.getString("acc_name"));
				a.setPhone(rs.getString("phone"));
				a.setBalance(rs.getDouble("balance"));
				list.add(a);
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return list;
	}

	@Override
	public boolean transferAmountByProcedure(long acno1, long acno2, double amt) {
		String query = "{call transferamt_procedure(?,?,?)}";
		con = DBConnection.getConnection();
		try {
			ps = con.prepareCall(query);
			ps.setLong(1, acno1);
			ps.setLong(2, acno2);
			ps.setDouble(3, amt);
			int n=ps.executeUpdate();
			if(n>0) {
				status=true;
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return status;
	}
}
