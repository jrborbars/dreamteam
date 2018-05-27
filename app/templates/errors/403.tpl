<!-- app/templates/errors/403.html -->

{% import "bootstrap/utils.html" as utils %}
{% extends "base.tpl" %}
{% block title %}Forbidden{% endblock %}
{% block body %}
<div class="content-section">
  <div class="outer">
    <div class="middle">
      <div class="inner">
        <div style="text-align: center">
            <h1> 403 Error </h1>
            <h3> You do not have sufficient permissions to access this page. </h3>
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