package com.model;

public class Account {
   private long acc_no;
   private int user_id;
   private String acc_name;
   private String phone;
   private double balance;
   
   public Account(){
	   
   }

   public Account(long acc_no, int user_id, String acc_name, String phone, double balance) {
	//super();
	this.acc_no = acc_no;
	this.user_id = user_id;
	this.acc_name = acc_name;
	this.phone = phone;
	this.balance = balance;
   }

   public long getAcc_no() {
	return acc_no;
   }

   public void setAcc_no(long acc_no) {
	this.acc_no = acc_no;
   }

   public int getUser_id() {
	return user_id;
   }

   public void setUser_id(int user_id) {
	this.user_id = user_id;
   }

   public String getAcc_name() {
	return acc_name;
   }

   public void setAcc_name(String acc_name) {
	this.acc_name = acc_name;
   }

   public String getPhone() {
	return phone;
   }

   public void setPhone(String phone) {
	this.phone = phone;
   }

   public double getBalance() {
	return balance;
   }

   public void setBalance(double balance) {
	this.balance = balance;
   }

   @Override
   public String toString() {
	return "Account [acc_no=" + acc_no + ", user_id=" + user_id + ", acc_name=" + acc_name + ", phone=" + phone
			+ ", balance=" + balance + "]";
   }
   
   
   
}
