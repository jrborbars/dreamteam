<!-- app/templates/admin/employees/employee.html -->

{% import "bootstrap/wtf.html" as wtf %}
{% extends "base.tpl" %}
{% block title %}Assign Employee{% endblock %}
{% block body %}
<div class="content-section">
 <div class="outer">
    <div class="middle">
      <div class="inner">
        <div class="center">
            <h1> Assign Departments and Roles </h1>
            <br/>
            <p>
                Select a department and role to assign to
                <span style="color: #aec251;">
                    {{ employee.first_name }} {{ employee.last_name }}
                </span>
            </p>
            <br/>
            {{ wtf.quick_form(form) }}
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}