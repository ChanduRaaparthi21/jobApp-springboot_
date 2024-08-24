package com.chandu.JobApp.repo;

import org.springframework.stereotype.Repository;
import com.chandu.JobApp.model.Job;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Repository
public class JobRepository {
    private List<Job> jobs = new ArrayList<>();

    public JobRepository() {
        jobs.add(new Job(1, "Software Engineer", "Develop and maintain software applications", 2, List.of("Java", "Spring Boot", "MySQL")));
        jobs.add(new Job(2, "Frontend Developer", "Design and implement user interfaces", 3, List.of("HTML", "CSS", "JavaScript", "React")));
        jobs.add(new Job(3, "Data Analyst", "Analyze data to provide business insights", 1, List.of("Python", "Pandas", "SQL")));
    }

    public List<Job> findAll() {
        return jobs;
    }

    public Optional<Job> findById(int id) {
        return jobs.stream().filter(job -> job.getPostId() == id).findFirst();
    }

    public void save(Job job) {
        jobs.add(job);
    }

    public void deleteById(int id) {
        jobs.removeIf(job -> job.getPostId() == id);
    }
}
