<!-- app/templates/admin/departments/department.html -->

{% import "bootstrap/wtf.html" as wtf %}
{% extends "base.tpl" %}
{% block title %}
    {% if add_department %}
        Add Department
    {% else %}
        Edit Department
    {% endif %}
{% endblock %}
{% block body %}
<div class="content-section">
 <div class="outer">
    <div class="middle">
      <div class="inner">
        <div class="center">
            {% if add_department %}
                <h1>Add Department</h1>
            {% else %}
                <h1>Edit Department</h1>
            {% endif %}
            <br/>
            {{ wtf.quick_form(form) }}
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}