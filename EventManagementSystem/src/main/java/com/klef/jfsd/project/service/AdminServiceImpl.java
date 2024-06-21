package com.klef.jfsd.project.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.Admin;
import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Manager;
import com.klef.jfsd.project.repository.AdminRepository;
import com.klef.jfsd.project.repository.CustomerRepository;
import com.klef.jfsd.project.repository.ManagerRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;

	
	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private ManagerRepository managerRepository;

	@Override
	public List<Customer> viewallcustomers() 
	{
		return customerRepository.findAll();
	}


	@Override
	public String deletecustomer(int cid) {
		Optional <Customer> obj = customerRepository.findById(cid);
	    String msg = null;
	    
	    if(obj.isPresent())
	    {
	      Customer customer = obj.get();
	      customerRepository.delete(customer);
	      msg="Customer Deleted Successfully";
	    }
	    else
	    {
	      msg="Customer Not Found";
	    }
	    return msg;
	}
	
	
	@Override
	public Admin checkadminlogin(String auname, String apwd) {
		return adminRepository.checkadminlogin(auname, apwd);
	}


	@Override
	public List<Manager> viewallmanagers() {
		return managerRepository.findAll();
	}


	@Override
	public int updatestatus(boolean active, int eid) {
		return adminRepository.updatestatus(active, eid);
	}


	@Override
	  public long managercount() {
	    return managerRepository.count();
	  }


	  @Override
	  public long customercount() {
	    return customerRepository.count();
	  }
}
