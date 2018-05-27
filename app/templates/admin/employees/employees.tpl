<!-- app/templates/admin/employees/employees.html -->

{% import "bootstrap/utils.html" as utils %}
{% extends "base.tpl" %}
{% block title %}Employees{% endblock %}
{% block body %}
<div class="content-section">
  <div class="outer">
    <div class="middle">
      <div class="inner">
        <br/>
        {{ utils.flashed_messages() }}
        <br/>
        <h1 style="text-align:center;">Employees</h1>
        {% if employees %}
          <hr class="intro-divider">
          <div class="center">
            <table class="table table-striped table-bordered">
              <thead>
                <tr>
                  <th width="15%"> Name </th>
                  <th width="30%"> Department </th>
                  <th width="30%"> Role </th>
                  <th width="15%"> Assign </th>
                </tr>
              </thead>
              <tbody>
              {% for employee in employees %}
                {% if employee.is_admin %}
                    <tr style="background-color: #aec251; color: white;">
                        <td> <i class="fa fa-key"></i> Admin </td>
                        <td> N/A </td>
                        <td> N/A </td>
                        <td> N/A </td>
                    </tr>
                {% else %}
                    <tr>
                      <td> {{ employee.first_name }} {{ employee.last_name }} </td>
                      <td>
                        {% if employee.department %}
                          {{ employee.department.name }}
                        {% else %}
                          -
                        {% endif %}
                      </td>
                      <td>
                        {% if employee.role %}
                          {{ employee.role.name }}
                        {% else %}
                          -
                        {% endif %}
                      </td>
                      <td>
                        <a href="{{ url_for('admin.assign_employee', id=employee.id) }}">
                          <i class="fa fa-user-plus"></i> Assign
                        </a>
                      </td>
                    </tr>
                {% endif %}
              {% endfor %}
              </tbody>
            </table>
          </div>
        {% endif %}
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}