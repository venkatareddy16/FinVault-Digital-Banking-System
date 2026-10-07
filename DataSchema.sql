/*for dyamaic we application bank management system connecting java with mysql and frontend*/
create database dynamicbankdb
use dynamicbankdb;

/*first we have to create a table for users*/ 
/*in this we are taking default values for admin login while creating table*/
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    role VARCHAR(20) NOT NULL DEFAULT 'CUSTOMER'  /*this filed we are not given while registering*/
);
/*manually inserted admin*/
INSERT INTO users
(username, password, full_name,role)
VALUES
('admin', 'admin123', 'Bank Administrator','ADMIN');


/*then we have to create a table for account creation*/
CREATE TABLE account (
    acc_no BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE NOT NULL,
    acc_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    balance DECIMAL(15,2) NOT NULL DEFAULT 0.00,

    FOREIGN KEY (user_id)
    REFERENCES users(user_id) 
    ON UPDATE CASCADE
    ON DELETE CASCADE
) AUTO_INCREMENT = 900000000001;
ALTER TABLE account
ADD UNIQUE (phone);

/*then finally we have to create a table for transaction history based on the acccount no in the above table*/
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    from_acc_no BIGINT not null,
    to_acc_no BIGINT,
    transaction_type VARCHAR(20) NOT NULL,
    amount DECIMAL(15,2) NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(255),

    FOREIGN KEY (from_acc_no) REFERENCES account(acc_no) ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (to_acc_no) REFERENCES account(acc_no) ON UPDATE CASCADE
    ON DELETE CASCADE
);
