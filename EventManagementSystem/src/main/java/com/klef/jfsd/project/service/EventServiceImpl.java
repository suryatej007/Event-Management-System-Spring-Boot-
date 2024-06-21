package com.klef.jfsd.project.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.Event;
import com.klef.jfsd.project.repository.EventRepository;

@Service
public class EventServiceImpl implements EventService
{
	@Autowired
	private EventRepository eventRepository;

	@Override
	public List<Event> viewallevents() {
		return eventRepository.findAll();
	}

	@Override
	public List<Event> viewevents(String email) {
		return eventRepository.viewevents(email);
	}

	@Override
	public Event vieweventbyid(int id) {
	    Optional<Event> obj=eventRepository.findById(id);
	    if(obj.isPresent()) {
	      Event e=obj.get();
	      return e;
	    }
	    else {
	    return null;
	    }	
	}
	
}
