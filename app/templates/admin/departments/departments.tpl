<!-- app/templates/admin/departments/departments.html -->

{% import "bootstrap/utils.html" as utils %}
{% extends "base.tpl" %}
{% block title %}Departments{% endblock %}
{% block body %}
<div class="content-section">
  <div class="outer">
    <div class="middle">
      <div class="inner">
        <br/>
        {{ utils.flashed_messages() }}
        <br/>
        <h1 style="text-align:center;">Departments</h1>
        {% if departments %}
          <hr class="intro-divider">
          <div class="center">
            <table class="table table-striped table-bordered">
              <thead>
                <tr>
                  <th width="15%"> Name </th>
                  <th width="40%"> Description </th>
                  <th width="15%"> Employee Count </th>
                  <th width="15%"> Edit </th>
                  <th width="15%"> Delete </th>
                </tr>
              </thead>
              <tbody>
              {% for department in departments %}
                <tr>
                  <td> {{ department.name }} </td>
                  <td> {{ department.description }} </td>
                  <td>
                    {% if department.employees %}
                      {{ department.employees.count() }}
                    {% else %}
                      0
                    {% endif %}
                  </td>
                  <td>
                    <a href="{{ url_for('admin.edit_department', id=department.id) }}">
                      <i class="fa fa-pencil"></i> Edit 
                    </a>
                  </td>
                  <td>
                    <a href="{{ url_for('admin.delete_department', id=department.id) }}">
                      <i class="fa fa-trash"></i> Delete 
                    </a>
                  </td>
                </tr>
              {% endfor %}
              </tbody>
            </table>
          </div>
          <div style="text-align: center">
        {% else %}
          <div style="text-align: center">
            <h3> No departments have been added. </h3>
            <hr class="intro-divider">
        {% endif %}
          <a href="{{ url_for('admin.add_department') }}" class="btn btn-default btn-lg">
            <i class="fa fa-plus"></i>
            Add Department
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}