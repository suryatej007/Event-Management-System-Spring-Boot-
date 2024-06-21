package com.klef.jfsd.project.service;

import java.util.List;
import java.util.Optional;

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
public class CustomerServiceImpl implements CustomerService 
{
  @Autowired
  private CustomerRepository customerRepository;
  
  @Autowired
  private BookingRepository bookingRepository;
  
  @Autowired
  private EventRepository eventRepository;
  
  @Autowired
  private ManagerRepository managerRepository;
  
  @Override
  public Customer checkcustomerlogin(String email, String pwd)
  {
    return customerRepository.checkcustomerlogin(email, pwd);
  }

  @Override
  public String addcustomer(Customer c) {
      customerRepository.save(c);
      return "Customer Registered Successfully";
  }

  @Override
  public String updatecustomer(Customer c) {
    Customer c1=customerRepository.findById(c.getId()).get();
    c1.setFname(c.getFname());
    c1.setLname(c.getLname());
    c1.setContactno(c.getContactno());
    c1.setEmail(c.getEmail());
    c1.setPassword(c.getPassword());
    
    customerRepository.save(c1);
    
    return "Customer Updated Successfully";
    
    
  }

  @Override
  public Customer viewcustomerbyid(int cid) {
    Optional<Customer> obj=customerRepository.findById(cid);
    if(obj.isPresent()) {
      Customer c=obj.get();
      return c;
    }
    else {
    return null;
    }
  }

@Override
public String bookevent(Booking book) {
	bookingRepository.save(book);
	return "booking done";
}

@Override
public long checkbooking(Event e, Customer c, Manager m) {
	return bookingRepository.checkbooking(e, c, m);
}

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
public List<Booking> viewregisteredeventsbycus(int id) 
{
	return (List<Booking>) bookingRepository.findAll();
}
}