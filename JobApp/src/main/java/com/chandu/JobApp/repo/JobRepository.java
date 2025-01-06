package com.chandu.JobApp.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.chandu.JobApp.model.Job;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public interface JobRepository extends JpaRepository<Job, Integer>  {

}
