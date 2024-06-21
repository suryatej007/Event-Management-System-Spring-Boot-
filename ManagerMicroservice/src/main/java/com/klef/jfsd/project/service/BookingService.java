package com.klef.jfsd.project.service;

import java.util.List;

import com.klef.jfsd.project.model.Booking;
import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Event;
import com.klef.jfsd.project.model.Manager;
public interface BookingService {
	public Event eventbyid(int eid);
	  public Customer customerbyid(int cid);
	  public Manager managerbyid(int mid);
	  public List<Booking> viewbookings(int id);
	  public int deleteAssociatedBookings(int eventId); 
}
