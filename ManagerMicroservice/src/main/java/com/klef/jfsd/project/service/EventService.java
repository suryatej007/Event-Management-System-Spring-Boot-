package com.klef.jfsd.project.service;

import java.util.List;

import com.klef.jfsd.project.model.Event;

public interface EventService {
	public List<Event> viewallevents();
	public List<Event> viewevents(String email);
}
