<html>
<head>
    <title>Job Posted Successfully</title>
    <link rel="stylesheet" type="text/css" href="resources/css/job-confirmation.css">
    <style>
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

        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            padding-top: 60px; /* Space for the fixed navbar */
        }

        .container {
            width: 90%;
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #343a40;
            margin-bottom: 20px;
            font-size: 28px;
        }

        .details {
            text-align: left;
            margin: 20px 0;
        }

        .details label {
            font-weight: bold;
            color: #343a40;
        }

        .details p {
            margin: 5px 0;
            color: #495057;
        }

        a {
            display: inline-block;
            margin: 10px;
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
    <h2>Job Posted Successfully</h2>
    <div class="details">
        <label>Post ID:</label>
        <p>${job.postId}</p>
        <label>Profile:</label>
        <p>${job.postProfile}</p>
        <label>Description:</label>
        <p>${job.postDesc}</p>
        <label>Required Experience:</label>
        <p>${job.reqExperience} years</p>
        <label>Technology Stack:</label>
        <p>${job.postTechStack}</p>
    </div>
    <a href="/jobs">View All Jobs</a>
</div>

</body>
</html>
