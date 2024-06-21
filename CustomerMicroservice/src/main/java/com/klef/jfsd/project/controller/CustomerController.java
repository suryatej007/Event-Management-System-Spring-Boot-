package com.klef.jfsd.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.project.model.Booking;
import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Event;
import com.klef.jfsd.project.service.CustomerService;
import com.klef.jfsd.project.service.EventService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("customer")
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	@Autowired
	private EventService eventService;
	
	

	@GetMapping("/") // index page
	@ResponseBody
	public String main() {
		return "Customer Microservice";
	}
	
	@GetMapping("home") // index page
//	@ResponseBody
	public String home() {
		return "home";
	}

	@GetMapping("userIndex") // userIndex page
	public String main1() {
		return "userIndex";
	}

	@GetMapping("services") // login page route
	public ModelAndView services() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("services");
		return mv;
	}

	@GetMapping("login") // login page route
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}

	@GetMapping("signup") // signup page route
	public ModelAndView signup() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		return mv;
	}

	@GetMapping("about") // about page route
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}

	@GetMapping("contact") // contact page route
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}

	@GetMapping("gallery") // gallery page route
	public ModelAndView gallery() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("gallery");
		return mv;
	}

	@GetMapping("customerlogin") // user login page route
	public ModelAndView customerlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		return mv;
	}

	@GetMapping("registration") // registration page route
	public ModelAndView registration() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("registration");
		return mv;
	}

	@PostMapping("insertcustomer") // insert customer action
	public ModelAndView insertaction(HttpServletRequest request) {
		String msg = null;
		ModelAndView mv = new ModelAndView();
		try {
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String dob = request.getParameter("dob");
			String contact = request.getParameter("contact");
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String gender = request.getParameter("gender");
			Customer c = new Customer();
			c.setFname(fname);
			c.setLname(lname);
			c.setDateofbirth(dob);
			c.setContactno(contact);
			c.setEmail(email);
			c.setPassword(pwd);
			c.setGender(gender);
			msg = customerService.addcustomer(c);
			mv.setViewName("displaymsg");
			mv.addObject("message", msg);
		} catch (Exception e) {
			msg = e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message", msg);
		}
		return mv;
	}

	@PostMapping("checkcustomerlogin")
	public ModelAndView checkcustomerlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		Customer c = customerService.checkcustomerlogin(email, pwd);

		if (c != null) {
			HttpSession session = request.getSession();
			session.setAttribute("cid", c.getId());
			session.setAttribute("cfname", c.getFname());
			session.setAttribute("clname", c.getLname());
			session.setAttribute("email", c.getEmail());
			session.setAttribute("dob", c.getDateofbirth());
			session.setAttribute("contact", c.getContactno());
			session.setAttribute("gender", c.getGender());
			mv.setViewName("userIndex");
		} else {
			mv.setViewName("customerlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}

	@GetMapping("userProfile")
	public String userProfile() {
		return "userProfile";
	}

	@GetMapping("updatecustomer") // updatecustomer route
	public ModelAndView updatecustomer(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();

		mv.setViewName("updatecustomer");
		mv.addObject("cid", session.getAttribute("cid"));
		mv.addObject("cname", session.getAttribute("cname"));

		int id = (int) session.getAttribute("cid");

		Customer c = customerService.viewcustomerbyid(id);

		mv.addObject("c", c);
		return mv;
	}

	@PostMapping("update")
	public ModelAndView updateaction(HttpServletRequest request) {
		String msg = null;

		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();

		mv.addObject("cid", session.getAttribute("cid"));
		mv.addObject("cname", session.getAttribute("cname"));

		int id = (int) session.getAttribute("cid");

		try {
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String contactno = request.getParameter("contactno");
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");

			Customer c = new Customer();
			c.setId(id);
			c.setFname(fname);
			c.setContactno(contactno);
			c.setLname(lname);
			c.setEmail(email);
			c.setPassword(pwd);

			msg = customerService.updatecustomer(c);

			mv.setViewName("login");
			mv.addObject("message", msg);

		} catch (Exception e) {
			msg = e.getMessage();

			mv.setViewName("updateerror");
			mv.addObject("message", msg);
		}

		return mv;

	}

	@GetMapping("userEvents")
	public ModelAndView userEvents() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userEvents");
		List<Event> elist = eventService.viewallevents();
		mv.addObject("eventdata", elist);
		return mv;
	}
	
	@GetMapping("vieweventbycus")
	  public ModelAndView vieweventbycus(@RequestParam("id") int id)
	  {
	    Event event=eventService.vieweventbyid(id);
	    ModelAndView mv=new ModelAndView();
	    mv.addObject("e",event);
	    mv.setViewName("vieweventbyid");
	    return mv;
	  }
	@GetMapping("eventregister")
	public String eventregister() {
		return "eventregister";
	}
	@PostMapping("booking")
	  public ModelAndView booking(HttpServletRequest request, @RequestParam("id") int eid, @RequestParam("manager_id") int manager_id)
	  {
		  String msg=null;
		  ModelAndView mv = new ModelAndView();
		  HttpSession session = request.getSession();
			mv.addObject("cid", session.getAttribute("cid"));
			int id = (int) session.getAttribute("cid");
		  
		  long n =customerService.checkbooking(customerService.eventbyid(eid),customerService.customerbyid(id),customerService.managerbyid(manager_id));
		  
		  if(n>0)
		  {
			  msg = "booking already done";
		  }
		  else
		  {
			  Booking book = new Booking();
			  
			  book.setEvent_id(customerService.eventbyid(eid));
			  book.setCustomer_id(customerService.customerbyid(id));
			  book.setManager_id(customerService.managerbyid(manager_id));
			  
			  msg = customerService.bookevent(book);	  
		  }
		  mv.addObject("msg",msg);
		  int id1=(int)session.getAttribute("cid");
		  mv.setViewName("eventregister");
		  List<Booking> blist = customerService.viewregisteredeventsbycus(id1);
	      mv.addObject("book", blist);
		  return mv;
	  }
	@GetMapping("eventsregistered")
	public ModelAndView eventsregistered(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
	    int id1=(int)session.getAttribute("cid");
		  mv.setViewName("eventsregistered");
		  List<Booking> blist = customerService.viewregisteredeventsbycus(id1);
	      mv.addObject("book", blist);
		  return mv;	
	}
	
}
