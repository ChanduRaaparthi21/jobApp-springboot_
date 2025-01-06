package com.chandu.JobApp.controller;

import com.chandu.JobApp.model.Job;
import com.chandu.JobApp.service.JobService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller

public class JobController {

    @Autowired
    private JobService jobService;

    @GetMapping("/jobs")
    public String viewJobs(Model model) {
        model.addAttribute("jobs", jobService.getAllJobs());
        return "view-jobs"; // returns the view named "view-jobs.jsp"
    }
    
    @GetMapping("/alljobs")
    public List<Job> getAllJobs(){
		return jobService.getAllJobs();
    	
    }

    @GetMapping("/addJob")
    public String showAddJobForm(Model model) {
        model.addAttribute("job", new Job());
        return "add-job"; // returns the view named "add-job.jsp"
    }

    @PostMapping("/addJob")
    public String addJob(@ModelAttribute Job job) {
        jobService.saveJob(job);
        return "redirect:/jobs"; // Redirects to the jobs list after adding
    }
    
    @GetMapping({"/","home"})
    public String home(){
        return "home";
    }
}
