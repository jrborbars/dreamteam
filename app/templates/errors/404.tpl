<!-- app/templates/errors/404.html -->

{% extends "base.tpl" %}
{% block title %}Page Not Found{% endblock %}
{% block body %}
<div class="content-section">
  <div class="outer">
    <div class="middle">
      <div class="inner">
        <div style="text-align: center">
            <h1> 404 Error </h1>
            <h3> The page you're looking for doesn't exist. </h3>
            <hr class="intro-divider">
            <a href="{{ url_for('home.homepage') }}" class="btn btn-default btn-lg">
                <i class="fa fa-home"></i>
                Home
            </a>
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}