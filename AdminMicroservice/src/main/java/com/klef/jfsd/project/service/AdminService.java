package com.klef.jfsd.project.service;

import java.util.List;

import com.klef.jfsd.project.model.Admin;
import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Manager;
public interface AdminService 
{
  public List<Customer> viewallcustomers();
  public String deletecustomer(int cid);
  public Admin checkadminlogin(String auname,String apwd);
  public List<Manager> viewallmanagers();
  public int updatestatus(boolean active,int eid);
  public long managercount();
  public long customercount();
}