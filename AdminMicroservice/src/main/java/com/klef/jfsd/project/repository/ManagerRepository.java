package com.klef.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.project.model.Manager;

@Repository
public interface ManagerRepository extends JpaRepository<Manager, Integer>
{
	@Query("select m from Manager m where email = ?1 and password = ?2 and active = true")
	public Manager checkmanagerlogin(String email,String pwd);
}
