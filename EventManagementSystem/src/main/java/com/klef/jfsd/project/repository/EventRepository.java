package com.klef.jfsd.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.project.model.Event;

@Repository
public interface EventRepository extends JpaRepository<Event,Integer>
{
	@Query("from Event where manager_email=?1")
	public List<Event> viewevents(String email);
}
