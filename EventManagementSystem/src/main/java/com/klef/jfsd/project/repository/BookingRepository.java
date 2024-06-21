package com.klef.jfsd.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.project.model.Booking;
import com.klef.jfsd.project.model.Customer;
import com.klef.jfsd.project.model.Event;
import com.klef.jfsd.project.model.Manager;

import jakarta.transaction.Transactional;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer>
{
	@Query("SELECT COUNT(book) FROM Booking book where book.event_id = ?1 and book.customer_id = ?2 AND book.manager_id = ?3")
	  public long checkbooking(Event event_id,Customer customer_id,Manager manager_id);
	@Query("from Booking b where b.event_id.id=?1")
	public List<Booking> viewbookings(int id);
	
	 @Modifying
	 @Transactional
	 @Query("DELETE FROM Booking b WHERE b.event_id.id = :eventId")
	  public int deleteByEventId(int eventId);
	  
}
