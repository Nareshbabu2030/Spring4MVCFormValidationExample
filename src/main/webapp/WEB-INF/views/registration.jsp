<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/custom.css' />" rel="stylesheet"></link>
</head>
<body>

	<div class="form-container">
		<h1>Register Form</h1>
		<form:form method="POST" modelAttribute="student"
			class="form-horizontal">

			<!-- create firstName field -->
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="firstName">First
						Name</label>
					<div class="col-md-7">
						<form:input type="text" path="firstName" id="firstName"
							class="form-control input-sm" />
							<div class="has-error">
							  <form:errors path="firstName" class="help-inline"/>
							</div>
					</div>
				</div>
			</div>

			<!-- create lastName field -->
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="lastName">Last
						Name</label>
					<div class="col-md-7">
						<form:input type="text" path="lastName" id="lastName"
							class="form-control input-sm" />
							<div class="has-error">
							  <form:errors path="lastName" class="help-inline" />
							</div>
							
					</div>
				</div>
			</div>

			<!-- create gender field -->
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable">Gender</label>
					<div class="col-md-7" class="form-control input-sm ">
						<form:radiobutton path="gender" value="M"  checked="checked"/>
						Male
						<form:radiobutton path="gender" value="F" />
						Female
						<div class="has-error">
						 <form:errors path="gender" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<!-- create DateOfBirth field -->
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="dob">Date Of
						Birth</label>
					<div class="col-md-7">
						<form:input type="text" path="dob" id="dob"
							class="form-control input-sm" />
							<div class="has-error">
							  <form:errors path="dob" class="help-inline" />
							</div>
					</div>
				</div>
			</div>

			<!-- create Email field -->
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="email">Email</label>
					<div class="col-md-7">
						<form:input type="text" path="email" id="email"
							class="form-control input-sm" />
							<div class="has-error">
							 <form:errors path="email" class="help-inline" />
							</div>
					</div>
				</div>
			</div>

			<!-- create Section field -->
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="section">Section</label>
					<div class="col-md-7" class="form-control input-sm">
						<form:radiobuttons path="section" items="${sections}" checked="checked"/><br/>
					</div>
				</div>
			</div>

			<!-- create Country field -->
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="country">Country</label>
					<div class="col-md-7">
						<form:select path="country" id="country"
							class="form-control input-sm">
							<form:option value="">Select Country</form:option>
							<form:options items="${countries}" />
						</form:select>
						<div class="has-error">
						  <form:errors path="country" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<!-- create firstAttempt field -->
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="firstAttempt">First
						Attempt ?</label>
					<div class="col-md-1">
						<form:checkbox path="firstAttempt" id="firstAttempt"
							class="form-control input-sm" />
					</div>
				</div>
			</div>

			<!-- create subject field -->
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="subjects">Subjects</label>
					<div class="col-md-7">
						<form:select path="subjects" items="${subjects}" multiple="true"
							class="form-control input-sm" />
							<div class="has-error">
							  <form:errors path="subjects" class="help-inline" />
							</div>
					</div>
				</div>
			</div>

			<!-- create Register button -->
			<div class="row">
				<div class="form-actions floatRight">
					<input type="submit" value="Register"
						class="btn btn-primary btn-sm" />
				</div>
			</div>

		</form:form>
	</div>

</body>
</html>