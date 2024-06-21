package com.klef.jfsd.project.service;

import java.util.List;

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
	
}
