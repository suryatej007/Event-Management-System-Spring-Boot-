package com.klef.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.project.model.Event;

@Repository
public interface EventRepository extends JpaRepository<Event,Integer>
{

}
