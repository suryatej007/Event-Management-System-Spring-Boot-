package com.klef.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.project.model.Booking;
import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Event;
import com.klef.jfsd.project.model.Manager;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer>
{
	@Query("SELECT COUNT(book) FROM Booking book where book.event_id = ?1 and book.customer_id = ?2 AND book.manager_id = ?3")
	  public long checkbooking(Event event_id,Customer customer_id,Manager manager_id);
}
