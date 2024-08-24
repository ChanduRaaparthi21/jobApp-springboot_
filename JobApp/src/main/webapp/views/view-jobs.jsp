<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Job Listings</title>
    <style>
        /* Navbar Styling */
        .navbar {
            width: 100%;
            background-color: #007bff;
            overflow: hidden;
            padding: 10px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
            display: flex;
            justify-content: center;
        }

        .navbar a {
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s ease;
            margin: 0 10px;
        }

        .navbar a:hover {
            background-color: #0056b3;
        }

        /* Page Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            padding-top: 60px; /* Space for the fixed navbar */
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .job-card {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            width: calc(33% - 20px);
            box-sizing: border-box;
            transition: transform 0.3s ease;
        }

        .job-card:hover {
            transform: translateY(-10px);
        }

        h3 {
            color: #007bff;
            font-size: 20px;
            margin-bottom: 10px;
        }

        p {
            color: #495057;
            margin: 5px 0;
        }

        .tech-stack {
            font-style: italic;
            color: #6c757d;
        }

        a {
            display: inline-block;
            margin: 20px 0;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="/">Home</a>
        <a href="/addJob">Post a Job</a>
        <a href="/jobs">View All Jobs</a>
    </div>

    <div class="container">
        <c:forEach var="job" items="${jobs}">
            <div class="job-card">
                <h3>${job.postProfile}</h3>
                <p><strong>Description:</strong> ${job.postDesc}</p>
                <p><strong>Required Experience:</strong> ${job.reqExperience} years</p>
                <p class="tech-stack"><strong>Technology Stack:</strong> ${job.postTechStack}</p>
            </div>
        </c:forEach>
    </div>

    <div class="container">
        <a href="/addJob">Add a New Job</a>
    </div>
</body>
</html>
