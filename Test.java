package com.hsbc.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class Test {
	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "roott");
			Statement st = con.createStatement();
			st.execute("create database bidbig");
			PreparedStatement pst = con.prepareStatement(
					"create table products(name varchar(30) not null, price int not null, quantity int not null, image blob, description varchar(300) not null)");
			pst.execute();
			PreparedStatement pst1 = con.prepareStatement(
					"insert into products values('Old Bag', 4000, 4, LOAD_FILE('C://TV Shows/bag.jpg'), 'mast bag re mast ekdum lelo isko')");
			pst1.execute();
			PreparedStatement pst2 = con.prepareStatement(
					"insert into products values('McLaren F1', 60000000, 1, LOAD_FILE('C://TV Shows/car.jpg'), 'bhai sexy car hai bhai lelo pakka ladki milegi ekdum exclusive warna kabhi nahi milegi very rare mclaren car')");
			pst2.execute();
			PreparedStatement pst3 = con.prepareStatement(
					"insert into products values('Tommy Gun', 50000, 5, LOAD_FILE('C://TV Shows/gun.jpg'), 'mast gun hai re baba ek number bilkul mast chalti dushman bhagega aapse bilkul zero recoil and ammo easily available on deep web lelo lelo limited stock available')");
			pst3.execute();
			PreparedStatement pst4 = con.prepareStatement(
					"insert into products values('24K Gold Chain', 40000, 3, LOAD_FILE('C://TV Shows/jewellery.jpg'), 'ekdum mast chain hai re baba apne ko to hera pheri ki yaad a gayi re baba lelo lelo unisex chain ladka lage bappi da ladki lage haseena')");
			pst4.execute();
			PreparedStatement pst5 = con.prepareStatement(
					"insert into products values('Nokia 6681', 15000, 10, LOAD_FILE('C://TV Shows/phone.jpg'), 'mast phone hai re baba world ka first smartphone hai re bhot value milegi iski future mein lelo abhi lelo')");
			pst5.execute();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
