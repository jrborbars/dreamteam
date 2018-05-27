<!-- app/templates/base.html -->

<!DOCTYPE html>
<html lang="en">
<head>
    <title>{{ title }} | Project Dream Team</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{ url_for('static', filename='css/style.css') }}" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="{{ url_for('static', filename='img/favicon.ico') }}">
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand topnav" href="{{ url_for('home.homepage') }}">Project Dream Team</a>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
           <ul class="nav navbar-nav navbar-right">
                {% if current_user.is_authenticated %}
                  {% if current_user.is_admin %}
                    <li><a href="{{ url_for('home.admin_dashboard') }}">Dashboard</a></li>
                    <li><a href="{{ url_for('admin.list_departments') }}">Departments</a></li>
                    <li><a href="{{ url_for('admin.list_roles') }}">Roles</a></li>
                    <li><a href="{{ url_for('admin.list_employees') }}">Employees</a></li>
                  {% else %}
                    <li><a href="{{ url_for('home.dashboard') }}">Dashboard</a></li>
                  {% endif %}
                  <li><a href="{{ url_for('auth.logout') }}">Logout</a></li>
                  <li><a><i class="fa fa-user"></i>  Hi, {{ current_user.username }}!</a></li>
                {% else %}
                  <li><a href="{{ url_for('home.homepage') }}">Home</a></li>
                  <li><a href="{{ url_for('auth.register') }}">Register</a></li>
                  <li><a href="{{ url_for('auth.login') }}">Login</a></li>
                {% endif %}
            </ul>
          </div>
        </div>
    </nav>
    <div class="wrapper">
      {% block body %}
      {% endblock %}
      <div class="push"></div>
    </div>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li><a href="{{ url_for('home.homepage') }}">Home</a></li>
                        <li class="footer-menu-divider">⋅</li>
                        {% if current_user.is_authenticated %}
                          <li><a href="{{ url_for('auth.logout') }}">Logout</a></li>
                        {% else %}
                          <li><a href="{{ url_for('auth.register') }}">Register</a></li>
                          <li class="footer-menu-divider">⋅</li>
                          <li><a href="{{ url_for('auth.login') }}">Login</a></li>
                        {% endif %}
                    </ul>
                    <p class="copyright text-muted small">Copyright © 2018 - All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>