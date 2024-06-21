package com.klef.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.project.model.Admin;

import jakarta.transaction.Transactional;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>
{	
	@Query("select a from Admin a where username=?1 and password=?2")
	public Admin checkadminlogin(String auname,String apwd);
	
	@Query("update Manager set active=?1 where id=?2")
	@Modifying
	@Transactional
	public int updatestatus(boolean active,int eid);
}