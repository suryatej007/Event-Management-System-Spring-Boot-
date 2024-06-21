package com.klef.jfsd.project.service;

import java.util.List;

import com.klef.jfsd.project.model.Booking;
import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Event;
import com.klef.jfsd.project.model.Manager;


public interface CustomerService 
{	
	public String addcustomer(Customer c);
	  public Customer checkcustomerlogin(String email,String pwd);
	  public String updatecustomer(Customer c);
	  public Customer viewcustomerbyid(int cid);
	  public String bookevent(Booking book);
	  public long checkbooking(Event e,Customer c,Manager m);
	  public Event eventbyid(int eid);
	  public Customer customerbyid(int cid);
	  public Manager managerbyid(int mid);
	  public List<Booking> viewregisteredeventsbycus(int id);
}
