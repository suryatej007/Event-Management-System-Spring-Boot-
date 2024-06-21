package com.klef.jfsd.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.project.model.Admin;
import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Manager;
import com.klef.jfsd.project.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@GetMapping("/")
	@ResponseBody
	public String admin() {
		return "Admin Microservice";
	}


	@GetMapping("adminlogin") // admin login page route
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}

	@GetMapping("adminIndex")
	public ModelAndView adminIndex() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminIndex");
		
		long ccount = adminService.customercount();
		long mcount = adminService.managercount();

		mv.addObject("mcount", mcount);
		mv.addObject("ccount", ccount);
		
		return mv;
	}


	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");

		Admin admin = adminService.checkadminlogin(uname, pwd);

		if (admin != null) {
			mv.setViewName("adminIndex");
			long ccount = adminService.customercount();
			long mcount = adminService.managercount();

			mv.addObject("mcount", mcount);
			mv.addObject("ccount", ccount);
		} else {
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}

		return mv;
	}

	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers() {
		List<Customer> clist = adminService.viewallcustomers();
		ModelAndView mv = new ModelAndView("viewallcustomers");
		mv.addObject("cdata", clist);
		return mv;
	}

	@GetMapping("viewallmanagers")
	public ModelAndView viewallmanagers() {
		List<Manager> mlist = adminService.viewallmanagers();
		ModelAndView mv = new ModelAndView("viewallmanagers");
		mv.addObject("mdata", mlist);
		return mv;
	}

	@GetMapping("setstatus")
	public ModelAndView setstatusaction(@RequestParam("id") int eid, @RequestParam("status") boolean status) {
		int n = adminService.updatestatus(status, eid);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallmanagers");
		List<Manager> mlist = adminService.viewallmanagers();
		mv.addObject("mdata", mlist);

		if (n > 0) {
			mv.addObject("message", "Status Updated Successfully");
		} else {
			mv.addObject("message", "Failed to Update Status");
		}

		return mv;
	}

	

	@GetMapping("deletecustomer")
	public ModelAndView deletecustomer() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcustomers");
		List<Customer> clist = adminService.viewallcustomers();
		mv.addObject("cdata", clist);
		return mv;
	}

	@GetMapping("delete/{id}")
	public String deleteaction(@PathVariable("id") int cid) {
		adminService.deletecustomer(cid);
		return "redirect:/viewallcustomers";
	}
}