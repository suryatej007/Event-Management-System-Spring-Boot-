package com.klef.jfsd.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "customer_table")
public class Customer 
{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="customer_id")
    private int id;
    @Column(name="customer_fname",nullable=false,length = 50)
    private String fname;
    @Column(name="customer_lname",nullable=false,length = 50)
    private String lname;
	@Column(name="customer_dob",nullable=false,length = 20)
	private String dateofbirth;
    @Column(name="customer_contactno",nullable=false,unique = true)
    private String contactno;
    @Column(name="customer_email",nullable=false,unique = true,length = 30)
    private String email;
    @Column(name="customer_password",nullable=false,length = 30)
    private String password;
    @Column(name="customer_gender",nullable=false,length = 10)
	private String gender;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", fname=" + fname + ", lname=" + lname + ", dateofbirth=" + dateofbirth
				+ ", contactno=" + contactno + ", email=" + email + ", password=" + password + ", gender=" + gender
				+ "]";
	}
}
