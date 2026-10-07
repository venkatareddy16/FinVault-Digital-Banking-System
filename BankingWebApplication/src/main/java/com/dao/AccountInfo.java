package com.dao;

import java.util.List;

import com.model.Account;

public interface AccountInfo {
	//long generateAccountNumber();
	
	  // Customer insert
    boolean createAccount(Account a);

    // Customer update only balance
    boolean depositeMoneyById(long accno, double amt);

    // Customer update only balance
    boolean withdrawMoneyById(long accno, double amt);

    // Admin update all except balance
    boolean updateAccountById(long accno, Account a);

    // Admin delete
    boolean deleteAccountbyId(long accno);

    // Customer read
    double checkBalance(long accno);

    // Customer / Admin -> read or retrieve
    Account viewAccountDetailsById(int userid);

    // Admin only retrieve all accounts
    List<Account> viewAllAccounts();

    // Customer only transfer from one acc to another acc
    boolean transferAmountByProcedure(long acno1, long acno2, double amt);

}
