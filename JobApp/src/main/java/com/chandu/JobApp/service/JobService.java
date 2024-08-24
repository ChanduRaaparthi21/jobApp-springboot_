package com.chandu.JobApp.service;

import com.chandu.JobApp.model.Job;
import com.chandu.JobApp.repo.JobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepository jobRepository;

    public List<Job> getAllJobs() {
        return jobRepository.findAll();
    }

    public void saveJob(Job job) {
        jobRepository.save(job);
    }
}
