package edu.j2ee.phoneapp.dto;

import java.sql.Date;

public class Phone
{
	private String Name ;
	private String Number ;
	private String Email ;
	private String date ;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getNumber() {
		return Number;
	}
	public void setNumber(String number) {
		Number = number;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	
	
	
	@Override
	public String toString() {
		return "Phone [Name=" + Name + ", Number=" + Number + ", Email=" + Email + ", date=" + date + "]";
	}
	public Phone(String name, String number, String email, String date) {
		super();
		Name = name;
		Number = number;
		Email = email;
		this.date = date;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Phone() {
		// TODO Auto-generated constructor stub
	}
	
	
}
