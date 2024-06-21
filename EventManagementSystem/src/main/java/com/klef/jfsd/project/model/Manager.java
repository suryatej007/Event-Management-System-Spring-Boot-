package com.klef.jfsd.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "manager_table")
public class Manager 
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="manager_id")
    private int id;
    @Column(name = "manager_fname", nullable = false, length = 50)
    private String fname;
    @Column(name = "manager_lname", nullable = false, length = 50)
    private String lname;
    @Column(name="manager_contactno",nullable=false,unique = true)
    private String contactno;
	@Column(name="manager_location",nullable=false)
	private String location;
	@Column(name = "manager_email", nullable = false, unique = true, length = 30)
    private String email;
    @Column(name = "manager_password", nullable = false, length = 30)
    private String password;
    @Column(name = "manager_gender", nullable = false, length = 10)
    private String gender;
    @Column(name="manager_active",nullable=false)
	private boolean active;
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
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
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
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	@Override
	public String toString() {
		return "Manager [id=" + id + ", fname=" + fname + ", lname=" + lname + ", contactno=" + contactno
				+ ", location=" + location + ", email=" + email + ", password=" + password + ", gender=" + gender
				+ ", active=" + active + "]";
	}
	
}
