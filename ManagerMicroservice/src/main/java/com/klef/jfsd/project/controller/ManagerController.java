package com.klef.jfsd.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.autoconfigure.observation.ObservationProperties.Http;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.project.model.Booking;
import com.klef.jfsd.project.model.Event;
import com.klef.jfsd.project.model.Manager;
import com.klef.jfsd.project.service.BookingService;
import com.klef.jfsd.project.service.EventService;
import com.klef.jfsd.project.service.ManagerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("manager")
public class ManagerController 
{
	@Autowired
	private ManagerService managerService;
	
	@Autowired
	private EventService eventService;
	
	@Autowired
	private BookingService bookingService;
	
	@GetMapping("/")
	@ResponseBody
	public String main() {
		return "Manager Microservice";
	}
	
	@GetMapping("home")//index page
//	@ResponseBody
	public String home() {
		return "home";
	}
	@GetMapping("services")//services page route
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
	@GetMapping("managerlogin")//manager login page route
	public ModelAndView managerlogin() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("managerlogin");
		return mv;
	}
	@GetMapping("managerIndex")//manager Index page route
	public ModelAndView managerIndex() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("managerIndex");
		return mv;
	}
	@GetMapping("registration")//registration page route
	public ModelAndView registration() 
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("registration");
		return mv;
	}
	@GetMapping("viewallevents")
	public ModelAndView viewallevents(HttpServletRequest request) {
		HttpSession session=request.getSession();
		String email=(String) session.getAttribute("email");
	    List<Event> elist = eventService.viewevents(email);
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
		  @GetMapping("managerProfile")
			public String managerProfile() {
				return "managerProfile";
			}
}
