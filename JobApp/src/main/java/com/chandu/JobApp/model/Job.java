package com.chandu.JobApp.model;

import jakarta.persistence.*;
import java.util.Arrays;
import java.util.List;

@Entity
public class Job {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int postId;

    private String postProfile;

    private String postDesc;

    private Integer reqExperience;

    @Convert(converter = StringListConverter.class)
    private List<String> postTechStack;

    public Job() {
    }

    public Job(String postProfile, String postDesc, Integer reqExperience, List<String> postTechStack) {
        this.postProfile = postProfile;
        this.postDesc = postDesc;
        this.reqExperience = reqExperience;
        this.postTechStack = postTechStack;
    }

    // Getters and Setters
    public int getPostId() {
        return postId;
    }

    public String getPostProfile() {
        return postProfile;
    }

    public void setPostProfile(String postProfile) {
        this.postProfile = postProfile;
    }

    public String getPostDesc() {
        return postDesc;
    }

    public void setPostDesc(String postDesc) {
        this.postDesc = postDesc;
    }

    public Integer getReqExperience() {
        return reqExperience;
    }

    public void setReqExperience(Integer reqExperience) {
        this.reqExperience = reqExperience;
    }

    public List<String> getPostTechStack() {
        return postTechStack;
    }

    public void setPostTechStack(List<String> postTechStack) {
        this.postTechStack = postTechStack;
    }

    public void setPostTechStack(String techStack) {
        this.postTechStack = Arrays.asList(techStack.split(","));
    }
}
