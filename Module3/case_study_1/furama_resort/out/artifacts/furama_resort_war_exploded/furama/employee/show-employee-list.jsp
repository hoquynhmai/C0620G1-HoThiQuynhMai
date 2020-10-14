<%--
  Created by IntelliJ IDEA.
  User: laptop88
  Date: 10/6/2020
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>List Customer</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
          integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body {
            color: #566787;
            background: #f5f5f5;
            font-family: 'Varela Round', sans-serif;
            font-size: 13px;
        }

        .table-responsive {
            margin: 30px 0;
        }

        .table-wrapper {
            min-width: 1000px;
            background: #fff;
            padding: 20px 25px;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
        }

        .table-title {
            padding-bottom: 15px;
            background: #29e4e442;
            color: #fff;
            padding: 16px 30px;
            margin: -20px -25px 10px;
            border-radius: 3px 3px 0 0;
        }

        .table-title h2 {
            margin: 5px 0 0;
            font-size: 24px;
            color: black;
        }

        .table-title .btn {
            color: #566787;
            float: right;
            font-size: 13px;
            background: #fff;
            border: none;
            min-width: 50px;
            border-radius: 2px;
            border: none;
            outline: none !important;
            margin-left: 10px;
        }

        .table-title .btn:hover, .table-title .btn:focus {
            color: #566787;
            background: #f2f2f2;
        }

        .table-title .btn i {
            float: left;
            font-size: 21px;
            margin-right: 5px;
        }

        .table-title .btn span {
            float: left;
            margin-top: 2px;
        }

        table.table tr th, table.table tr td {
            border-color: #e9e9e9;
            padding: 12px 15px;
            vertical-align: middle;
        }

        table.table tr th:first-child {
            width: 60px;
        }

        table.table tr th:last-child {
            width: 100px;
        }

        table.table-striped tbody tr:nth-of-type(odd) {
            background-color: #fcfcfc;
        }

        table.table-striped.table-hover tbody tr:hover {
            background: #f5f5f5;
        }

        table.table th i {
            font-size: 13px;
            margin: 0 5px;
            cursor: pointer;
        }

        table.table td:last-child i {
            opacity: 0.9;
            font-size: 22px;
            margin: 0 5px;
        }

        table.table td a {
            font-weight: bold;
            color: #566787;
            display: inline-block;
            text-decoration: none;
        }

        table.table td a:hover {
            color: #2196F3;
        }

        table.table td a.settings {
            color: #2196F3;
        }

        table.table td a.delete {
            color: #F44336;
        }

        table.table td i {
            font-size: 19px;
        }

        table.table .avatar {
            border-radius: 50%;
            vertical-align: middle;
            margin-right: 10px;
        }

        .status {
            font-size: 30px;
            margin: 2px 2px 0 0;
            display: inline-block;
            vertical-align: middle;
            line-height: 10px;
        }

        .text-success {
            color: #10c469;
        }

        .text-info {
            color: #62c9e8;
        }

        .text-warning {
            color: #FFC107;
        }

        .text-danger {
            color: #ff5b5b;
        }

        .pagination {
            float: right;
            margin: 0 0 5px;
        }

        .pagination li a {
            border: none;
            font-size: 13px;
            min-width: 30px;
            min-height: 30px;
            color: #999;
            margin: 0 2px;
            line-height: 30px;
            border-radius: 2px !important;
            text-align: center;
            padding: 0 6px;
        }

        .pagination li a:hover {
            color: #666;
        }

        .pagination li.active a, .pagination li.active a.page-link {
            background: #03A9F4;
        }

        .pagination li.active a:hover {
            background: #0397d6;
        }

        .pagination li.disabled i {
            color: #ccc;
        }

        .pagination li i {
            font-size: 16px;
            padding-top: 6px
        }

        .hint-text {
            float: left;
            margin-top: 10px;
            font-size: 13px;
        }
    </style>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
</head>
<body>
<div class="container">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-xs-3">
                        <h2>List <b>Employee</b></h2>
                    </div>
                    <div class="col-xs-4">
                        <input type="text" name="nameCustomer" class="form-control" id="keywordEmployeeDisplay"
                               placeholder="Search by Name">
                        <input style="margin-left: 130px; margin-top:3px" type="button" value="Search"
                               class="btn btn-primary" onclick="submitFormSearchEmployee()">
                    </div>
                    <div class="col-xs-5">
                        <a href="/employee?actionFurama=showCreateNewEmployee" class="btn btn-primary"><i
                                class="material-icons">&#xE147;</i> <span>Create to Employee </span></a>
                        <a href="/furama" class="btn btn-primary"><i class="fas fa-bars"></i> <span>Home</span></a>

                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Salary</th>
                        <th>Phone Number</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Action</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="employee" items="${employeeList}">
                        <tr>
                            <td>${employee.name}</td>
                            <td>${employee.salary}</td>
                            <td>${employee.phone}</td>
                            <td>${employee.email}</td>
                            <td>${employee.address}</td>
                            <td>
                                <a href="/employee?actionFurama=showEditEmployee&id=${employee.id}" class="edit"
                                   title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                                <a data-toggle="modal" data-target="#deleteEmployeeModal" href="#"
                                   onclick="setEmployeeId('${employee.id}')" class="delete" title="Delete"
                                   data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>

                </table>
                <%--            <div class="clearfix">--%>
                <%--                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>--%>
                <%--                <ul class="pagination">--%>
                <%--                    <li class="page-item disabled"><a href="#">Previous</a></li>--%>
                <%--                    <li class="page-item"><a href="#" class="page-link">1</a></li>--%>
                <%--                    <li class="page-item"><a href="#" class="page-link">2</a></li>--%>
                <%--                    <li class="page-item active"><a href="#" class="page-link">3</a></li>--%>
                <%--                    <li class="page-item"><a href="#" class="page-link">4</a></li>--%>
                <%--                    <li class="page-item"><a href="#" class="page-link">5</a></li>--%>
                <%--                    <li class="page-item"><a href="#" class="page-link">Next</a></li>--%>
                <%--                </ul>--%>
                <%--            </div>--%>
            </div>
        </div>
    </div>
</div>
<form method="post" action="/employee" id="formSearchEmployee">
    <input type="hidden" name="actionFurama" value="searchEmployee">
    <input type="hidden" name="nameEmployee" id="keywordEmployeeHidden"/>
    <input hidden type="submit" value="Search"/>
</form>
<div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/employee">
                <input type="hidden" name="actionFurama" value="deleteEmployee"/>
                <input type="hidden" name="idEmployee" id="id"/>
                <div class="modal-header">
                    <h4 class="modal-title">Delete Employee</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;
                    </button>
                </div>
                <div class="modal-body">
<%--                    <input type="text" id="warning" style="width: 100%; background-color: #ed143d1c"/>--%>
                    <p>Are you sure you want to delete this Employee?</p>
                    <p class="text-warning"><small style="color: blue">This action cannot be undone.</small>
                    </p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-danger" value="Delete">
                </div>
            </form>
        </div>
    </div>
</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
    function setEmployeeId(id) {
        document.getElementById("id").value = id;
        document.getElementById("warning").value = "Are you sure you want to delete Employee have id is " + id + " ?";
    }

    function submitFormSearchEmployee() {
        let keywordHidden = document.getElementById("keywordEmployeeHidden");
        let keywordDisplay = document.getElementById("keywordEmployeeDisplay");
        keywordHidden.value = keywordDisplay.value;
        document.getElementById("formSearchEmployee").submit();
    }

    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
    $(document).ready(function () {
        $('#tableEmployee').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
</body>
</html>
