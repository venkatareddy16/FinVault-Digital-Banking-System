package com.dao;

import java.util.List;

import com.model.Transactions;

public interface TransactionInfo {
	// Customer - view own transaction history
    List<Transactions> getTransactionsByAccount(long accNo);

    // Admin - view all transactions
    List<Transactions> getAllTransactions();
}
