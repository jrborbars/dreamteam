<!-- app/templates/errors/500.html -->

{% extends "base.tpl" %}
{% block title %}Internal Server Error{% endblock %}
{% block body %}
<div class="content-section">
  <div class="outer">
    <div class="middle">
      <div class="inner">
        <div style="text-align: center">
            <h1> 500 Error </h1>
            <h3> The server encountered an internal error. That's all we know. </h3>
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