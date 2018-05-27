<!-- app/templates/auth/register.html -->

{% import "bootstrap/wtf.html" as wtf %}
{% extends "base.tpl" %}
{% block title %}Register{% endblock %}
{% block body %}
<div class="content-section">
  <div class="center">
    <h1>Register for an account</h1>
    <br/>
    {{ wtf.quick_form(form) }}
  </div>
</div>
{% endblock %}