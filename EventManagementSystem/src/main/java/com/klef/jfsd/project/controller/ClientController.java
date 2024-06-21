package com.klef.jfsd.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.project.model.Admin;
import com.klef.jfsd.project.model.Booking;
import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Event;
import com.klef.jfsd.project.model.Manager;
import com.klef.jfsd.project.service.AdminService;
import com.klef.jfsd.project.service.BookingService;
import com.klef.jfsd.project.service.CustomerService;
import com.klef.jfsd.project.service.EventService;
import com.klef.jfsd.project.service.ManagerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private ManagerService managerService;
	
	@Autowired
	private EventService eventService;
	
	@Autowired
	private BookingService bookingService;
	
	@GetMapping("/")//index page
	public String main() {
		return "index";
	}
	@GetMapping("userIndex")//userIndex page
	public String main1() {
		return "userIndex";
	}
	@GetMapping("adminIndex")
	public ModelAndView adminIndex() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminIndex");
		return mv;
	}
	@GetMapping("managerIndex")
	public ModelAndView managerIndex() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("managerIndex");
		return mv;
	}
	@GetMapping("services")//login page route
	public ModelAndView services() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("services");
		return mv;
	}
	@GetMapping("login")//login page route
	public ModelAndView login() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	@GetMapping("signup")//signup page route
	public ModelAndView signup() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("signup");
		return mv;
	}
	@GetMapping("managersignup")//managersignup page route
	public ModelAndView managersignup() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("managersignup");
		return mv;
	}
	@GetMapping("about")//about page route
	public ModelAndView about() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	@GetMapping("contact")//contact page route
	public ModelAndView contact() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}
	@GetMapping("gallery")//gallery page route
	public ModelAndView gallery() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("gallery");
		return mv;
	}
	@GetMapping("customerlogin")//user login page route
	public ModelAndView customerlogin() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("customerlogin");
		return mv;
	}
	@GetMapping("managerlogin")//manager login page route
	public ModelAndView managerlogin() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("managerlogin");
		return mv;
	}
	@GetMapping("adminlogin")//admin login page route
	public ModelAndView adminlogin() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("team")//teams page route
	public ModelAndView team() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("team");
		return mv;
	}
	@GetMapping("registration")//registration page route
	public ModelAndView registration() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("registration");
		return mv;
	}
	@PostMapping("insertcustomer")//insert customer action
	public ModelAndView insertaction(HttpServletRequest request)
	{
		String msg=null;
		ModelAndView mv=new ModelAndView();
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
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
	}
	@PostMapping("checkadminlogin")
	  public ModelAndView checkadminlogin(HttpServletRequest request)
	  {
	    ModelAndView mv = new ModelAndView(); 
	    
	    
	    String uname = request.getParameter("uname");
	     String pwd = request.getParameter("pwd");
	     
	    Admin admin = adminService.checkadminlogin(uname, pwd);
	    
	    if(admin!=null)
	    {
	      mv.setViewName("adminIndex");
	      long ccount = adminService.customercount();
	      long mcount = adminService.managercount();

	        mv.addObject("mcount", mcount);
	        mv.addObject("ccount", ccount);
	    }
	    else
	    {
	      mv.setViewName("adminlogin");
	      mv.addObject("message", "Login Failed");
	    }
	    
	    return mv;
	  }
	
	@PostMapping("checkcustomerlogin")
	public ModelAndView checkcustomerlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String email = request.getParameter("email");
	    String pwd = request.getParameter("pwd");
	     
	    Customer c =  customerService.checkcustomerlogin(email, pwd);
	    
	    if(c!=null)
	    {
	    	HttpSession session=request.getSession();
	    	session.setAttribute("cid",c.getId());
	    	session.setAttribute("cfname", c.getFname());
	    	session.setAttribute("clname", c.getLname());
	    	session.setAttribute("email", c.getEmail());
	    	session.setAttribute("dob", c.getDateofbirth());
	    	session.setAttribute("contact", c.getContactno());
	    	session.setAttribute("gender", c.getGender());
	    	mv.setViewName("userIndex");
	    }
	    else
	    {
	    	mv.setViewName("customerlogin");
	    	mv.addObject("message","Login Failed");
	    }
	    return mv;
	}
	
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers(){
		List<Customer> clist=adminService.viewallcustomers();
		ModelAndView mv=new ModelAndView("viewallcustomers");
		mv.addObject("cdata",clist);
		return mv;
	}
	@GetMapping("viewallevents")
	public ModelAndView viewallevents() {
	    List<Event> elist = eventService.viewallevents();
	    ModelAndView mv = new ModelAndView("viewallevents");
	    mv.addObject("eventdata", elist);

	    return mv;
	}
	
	
	@PostMapping("insertmanager")
	public ModelAndView insertactionmanager(HttpServletRequest request)
	{
		String msg=null;
		ModelAndView mv=new ModelAndView();
		try {
			String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String contact = request.getParameter("contact");
            String location =request.getParameter("location");		
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            String gender = request.getParameter("gender");
            Manager m = new Manager();
            m.setFname(fname);
            m.setLname(lname);
            m.setContactno(contact);
            m.setLocation(location);
            m.setEmail(email);
            m.setPassword(pwd);
            m.setGender(gender);
            m.setActive(false);
            msg = managerService.addmanager(m);
            mv.setViewName("displaymsg");
            mv.addObject("message", msg);
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
	}
	
	@GetMapping("viewallmanagers")
	public ModelAndView viewallmanagers(){
		List<Manager> mlist=adminService.viewallmanagers();
		ModelAndView mv=new ModelAndView("viewallmanagers");
		mv.addObject("mdata",mlist);
		return mv;
	}
	
	@GetMapping("setstatus")
	  public ModelAndView setstatusaction(@RequestParam("id") int eid,@RequestParam("status") boolean status)
	  {
	    int n = adminService.updatestatus(status, eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewallmanagers");
	    List<Manager> mlist =  adminService.viewallmanagers();
	    mv.addObject("mdata", mlist);
	      
	   
	    if(n>0)
	    {
	      mv.addObject("message", "Status Updated Successfully");
	    }
	    else
	    {
	      mv.addObject("message", "Failed to Update Status");
	    }
	    
	    return mv;
	  }
	
	@PostMapping("checkmanagerlogin")
	public ModelAndView checkmanagerlogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    
	    String email = request.getParameter("email");
	    String pwd = request.getParameter("pwd");
	    
	    Manager m = managerService.checkmanagerlogin(email, pwd);
	    
	    if (m != null && m.isActive()) {
	    	
	        HttpSession session = request.getSession();
	        session.setAttribute("mid", m.getId());
	        session.setAttribute("fname", m.getFname());
	        session.setAttribute("lname", m.getLname());
	        session.setAttribute("email", m.getEmail());
	        session.setAttribute("location", m.getLocation());
	        session.setAttribute("contactno", m.getContactno());
	        session.setAttribute("gender", m.getGender());

	        mv.setViewName("managerIndex");
	        
	    }
	    else
	    {
	        mv.setViewName("managerlogin");
	        mv.addObject("message", "Login Failed");
	    }
	    return mv;
	}
	  
	  @GetMapping("delete/{id}")
	  public String deleteaction(@PathVariable("id") int cid) {
	    adminService.deletecustomer(cid);
	    return "redirect:/viewallcustomers";
	  }
	  @GetMapping("userProfile")
	  public String userProfile() {
	    return "userProfile";
	  }
	    @GetMapping("updatecustomer")//updatecustomer route
		public ModelAndView updatecustomer(HttpServletRequest request) 
		{
			ModelAndView mv=new ModelAndView();
		    HttpSession session = request.getSession();
		    
			mv.setViewName("updatecustomer");
			mv.addObject("cid", session.getAttribute("cid"));
		    mv.addObject("cname", session.getAttribute("cname"));
		    
		    int id = (int) session.getAttribute("cid");
		    
		    Customer c=customerService.viewcustomerbyid(id);
		    
		    mv.addObject("c",c);
			return mv;
		}
	    @PostMapping("update")
		  public ModelAndView updateaction(HttpServletRequest request)
		  {
		    String msg = null;
		    
		    ModelAndView mv = new ModelAndView();
		    
		    HttpSession session = request.getSession();
		    
		    mv.addObject("cid", session.getAttribute("cid"));
		    mv.addObject("cname", session.getAttribute("cname"));
		    
		    int id = (int) session.getAttribute("cid");
		    
		   try
		   {
		     String fname = request.getParameter("fname");
		     String lname=request.getParameter("lname");
		     String contactno=request.getParameter("contactno");
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
		      mv.addObject("message",msg);
		     
		   }
		   catch(Exception e)
		   {
		     msg = e.getMessage();
		     
		      mv.setViewName("updateerror");
		      mv.addObject("message",msg);
		   }
		    
		   
		    return mv;

		  }
	    @GetMapping("addevent")//teams page route
		public ModelAndView addevent() 
		{
			ModelAndView mv=new ModelAndView();
			mv.setViewName("addevent");
			return mv;
		}
	    @PostMapping("insertevent") // insert event action
	    public ModelAndView insertEventAction(HttpServletRequest request) {
	        String msg = null;
	        ModelAndView mv = new ModelAndView();
	        try {
	        	HttpSession session=request.getSession();
	        	int mid=(int) session.getAttribute("mid");
	        	String email=(String) session.getAttribute("email");
	            String eventName = request.getParameter("eventname");
	            String eventCategory = request.getParameter("eventcategory");
	            String eventCostStr = request.getParameter("eventcost");
	            double eventCost = Double.parseDouble(eventCostStr);
	            String eventDate = request.getParameter("eventdate");
	            String eventLocation = request.getParameter("eventlocation");
	            String eventPhoto = request.getParameter("eventphoto");
	            String eventDescription = request.getParameter("eventdescription");

	            Event event = new Event();
	            event.setManager_id(mid);
	            event.setManager_email(email);
	            event.setEname(eventName);
	            event.setEcategory(eventCategory);
	            event.setEcost(eventCost);
	            event.setEdate(eventDate);
	            event.setElocation(eventLocation);
	            event.setEphoto(eventPhoto);
	            event.setEdesc(eventDescription);

	            // Assuming you have an eventService for handling event-related operations
	            msg = managerService.addevent(event);

	            mv.setViewName("displaymessageevent");
	            mv.addObject("message", msg);
	        } catch (Exception e) {
	            msg = e.getMessage();
	            mv.setViewName("displayerror");
	            mv.addObject("message", msg);
	        }
	        return mv;
	    }
	    @GetMapping("deleteevent")
		  public ModelAndView deleteevent(HttpServletRequest request)
		  {
			HttpSession session=request.getSession();
			String email=(String) session.getAttribute("email");
		    List<Event> elist = eventService.viewevents(email);
		    ModelAndView mv = new ModelAndView("viewallevents");
		    mv.addObject("eventdata", elist);

		    return mv;
		  }
		  
		  @GetMapping("deleteevent/{id}")
		  public String deleteactionevent(@PathVariable("id") int eid) {
			  bookingService.deleteAssociatedBookings(eid);
			  managerService.deleteevent(eid);
		    return "redirect:/manager/viewallevents";
		  }
		  @GetMapping("userEvents")
		  public ModelAndView userEvents()
		  {
		    ModelAndView mv = new ModelAndView();
		    mv.setViewName("userEvents");
		    List<Event> elist=eventService.viewallevents();
		    mv.addObject("eventdata",elist);
		    return mv;
		  }
		  
		  @GetMapping("vieweventdetails")
		  public ModelAndView vieweventdetails(HttpServletRequest request) {
			  HttpSession session=request.getSession();
			  String email=(String) session.getAttribute("email");
			  ModelAndView mv=new ModelAndView();
			  List<Event> elist=eventService.viewevents(email);
			  mv.addObject("edata", elist);
			  mv.setViewName("viewregdetails");
			  return mv;
		  }
		  @GetMapping("viewdetails")
		  public ModelAndView viewdetails(@RequestParam("id") int id) {
			  ModelAndView mv=new ModelAndView();
			  Event e=bookingService.eventbyid(id);
			  List<Booking> blist=bookingService.viewbookings(id);
			  mv.addObject("blist", blist);
			  mv.addObject("e", e);
			  mv.setViewName("viewdetails");
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
			@GetMapping("managerProfile")
			public String managerProfile() {
				return "managerProfile";
			}
}
