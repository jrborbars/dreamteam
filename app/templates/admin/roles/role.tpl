<!-- app/templates/admin/roles/role.html -->

{% import "bootstrap/wtf.html" as wtf %}
{% extends "base.tpl" %}
{% block title %}
    {% if add_department %}
        Add Role
    {% else %}
        Edit Role
    {% endif %}
{% endblock %}
{% block body %}
<div class="content-section">
 <div class="outer">
    <div class="middle">
      <div class="inner">
        <div class="center">
            {% if add_role %}
                <h1>Add Role</h1>
            {% else %}
                <h1>Edit Role</h1>
            {% endif %}
            <br/>
            {{ wtf.quick_form(form) }}
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}