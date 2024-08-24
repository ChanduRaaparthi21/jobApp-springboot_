<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add a New Job</title>
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
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #0056b3;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding-top: 60px; /* Space for the fixed navbar */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: left;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h2 {
            color: #343a40;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #343a40;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus, input[type="number"]:focus {
            border-color: #007bff;
        }

        .btn-submit {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
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
       <h2>Add a New Job</h2>
       <form action="/addJob" method="post">
           <div class="form-group">
               <label>Title:</label>
               <input type="text" name="postProfile" required>
           </div>

           <div class="form-group">
               <label>Description:</label>
               <input type="text" name="postDesc" required>
           </div>

           <div class="form-group">
               <label>Required Experience:</label>
               <input type="number" name="reqExperience" required>
           </div>

           <div class="form-group">
               <label>Tech Stack:</label>
               <input type="text" name="postTechStack" required placeholder="Separate techs with commas">
           </div>

           <button type="submit" class="btn-submit">Add Job</button>
       </form>
   </div>
</body>
</html>
