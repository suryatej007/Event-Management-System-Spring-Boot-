package com.klef.jfsd.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.Booking;
import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Event;
import com.klef.jfsd.project.model.Manager;
import com.klef.jfsd.project.repository.BookingRepository;
import com.klef.jfsd.project.repository.CustomerRepository;
import com.klef.jfsd.project.repository.EventRepository;
import com.klef.jfsd.project.repository.ManagerRepository;
@Service
public class BookingServiceImpl implements BookingService{

	@Autowired
	public BookingRepository bookingRepository;

	@Autowired
	private ManagerRepository managerRepository;
	
	@Autowired
	private EventRepository eventRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	public Event eventbyid(int eid) {
		return eventRepository.findById(eid).get();
	}

	@Override
	public Customer customerbyid(int cid) {
		return customerRepository.findById(cid).get();
	}

	@Override
	public Manager managerbyid(int mid) {
		return managerRepository.findById(mid).get();
	}

	@Override
	public List<Booking> viewbookings(int id) {
		return bookingRepository.viewbookings(id);
	}

	@Override
	public int deleteAssociatedBookings(int eventId) {
		return bookingRepository.deleteByEventId(eventId);
	}
}
