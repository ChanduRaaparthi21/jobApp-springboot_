<html>
<head>
    <title>Job Portal Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
        }

        .navbar {
            width: 100%;
            background-color: #007bff;
            overflow: hidden;
            padding: 10px 0;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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

        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            animation: fadeIn 1.5s ease-in-out;
        }

        h1 {
            margin-bottom: 30px;
            color: #343a40;
            animation: slideIn 1s ease-in-out;
        }

        a.button {
            display: inline-block;
            margin: 10px;
            padding: 15px 30px;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            font-size: 16px;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        a.button:hover {
            background-color: #0056b3;
            transform: translateY(-5px);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideIn {
            from {
                transform: translateX(-100%);
            }
            to {
                transform: translateX(0);
            }
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
        <h1>Welcome to the Job Portal</h1>
        <a class="button" href="/jobs">View Jobs</a>
        <a class="button" href="/addJob">Post a Job</a>
    </div>
</body>
</html>
