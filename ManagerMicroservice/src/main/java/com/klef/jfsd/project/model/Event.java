package com.klef.jfsd.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "event_table")
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "event_id")
    private int id;
    
    @Column(name="manager_email",nullable=false)
    private String manager_email;
    
    @Column(name="manager_id", nullable=false)
    private int manager_id;
    
    @Column(name = "event_name", nullable = false, length = 100)
    private String ename;
	
    @Column(name = "event_category", nullable = false, length = 100)
    private String ecategory;
 
    @Column(name = "event_cost", nullable = false, length = 100)
    private double ecost;

    @Column(name = "event_description", length = 255)
    private String edesc;

    @Column(name = "event_date")
    private String edate;

    @Column(name = "event_location", length = 100)
    private String elocation;

    @Column(name = "event_photo", length = 255)
    private String ephoto;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEcategory() {
		return ecategory;
	}

	public void setEcategory(String ecategory) {
		this.ecategory = ecategory;
	}

	public double getEcost() {
		return ecost;
	}

	public void setEcost(double ecost) {
		this.ecost = ecost;
	}

	public String getEdesc() {
		return edesc;
	}

	public void setEdesc(String edesc) {
		this.edesc = edesc;
	}

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}

	public String getElocation() {
		return elocation;
	}

	public void setElocation(String elocation) {
		this.elocation = elocation;
	}

	public String getEphoto() {
		return ephoto;
	}

	public void setEphoto(String ephoto) {
		this.ephoto = ephoto;
	}

	public String getManager_email() {
		return manager_email;
	}

	public void setManager_email(String manager_email) {
		this.manager_email = manager_email;
	}

	public int getManager_id() {
		return manager_id;
	}

	public void setManager_id(int manager_id) {
		this.manager_id = manager_id;
	}

	@Override
	public String toString() {
		return "Event [id=" + id + ", ename=" + ename + ", ecategory=" + ecategory + ", ecost=" + ecost + ", edesc="
				+ edesc + ", edate=" + edate + ", elocation=" + elocation + ", ephoto=" + ephoto + "]";
	}
    
    }

