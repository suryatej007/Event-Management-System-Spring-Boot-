package com.klef.jfsd.project.service;

import java.util.List;

import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Event;
import com.klef.jfsd.project.model.Manager;

public interface ManagerService 
{
	public String addmanager(Manager m);
	public Manager checkmanagerlogin(String email,String pwd);
	public String addevent(Event e);
	public List<Event> viewallevents();
	public String deleteevent(int eid);
	public Event eventbyid(int eid);
	  public Customer customerbyid(int cid);
	  public Manager managerbyid(int mid);
}
