<!DOCTYPE HTML>
<html land='en'>
<head>
<title>HR Application</title>
<link rel='stylesheet' type='text/css' href='/styletwo/css/styles.css'>
</head>
<body>
<!-- Main container starts here -->
<div class='main-container'>
<!-- header starts here -->
<div class='header'>
<img src='/styletwo/images/logo.png' class='logo'>
<div class='brand-name'>HR APPLICATION</div>
</div> <!-- header ends here -->
<!-- content-section starts here -->
<div class='content'>  
<!-- left panel starts here -->
<div class='content-left-panel'>


<my:If condition='${module!=HOME}'>
<a href='/styletwo/index.jsp'>Home</a><br>
</my:If>
<my:If condition='${module==HOME}'>
<b>Home</b><br>
</my:If>
<my:If condition='${module==DESIGNATION}'>
<b>Designations</b><br>
</my:If>
<my:If condition='${module!=DESIGNATION}'>
<a href='/styletwo/Designations.jsp'>Designations</a><br>
</my:If>
<my:If condition='${module==EMPLOYEE}'>
<b>Employees</b><br>
</my:If>
<my:If condition='${module!=EMPLOYEE}'>
<a href='/styletwo/Employees.jsp'>Employees</a>
</my:If>



<a href='/styletwo/index.html'>Home</a><br>
<b>Designations</b><br>
<a href='/styletwo/Employees.jsp'>Employees</a>



</div>
<!-- left panel ends here -->
<!-- right panel starts here -->
<div class='content-right-panel'>
