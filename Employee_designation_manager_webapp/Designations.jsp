<%@taglib uri='/WEB-INF/mytags/mytags.tld' prefix='my' %>
<jsp:include page='MasterPageTopSection.jsp'/>

<h2>Designations</h2>
<table border='1'>
<thead>
<tr>
<th colspan='4' style='text-align:right;padding:5px'>
<a href='/styletwo/DesignationAddForm.jsp'>Add new desigantion</a>
</th>
</tr>
<tr>
<th style='width:60px;text-align:center'>S.NO.</th>
<th style='width:200px;text-align:center'>Designation</th>
<th style='width:100px;text-align:center'>Edit</th>
<th style='width:100px;text-align:center'>Delete</th>
</tr>
</thead>
<tbody>
<my:Designations>
<tr>
<td style='text-align:right'>${serialNumber}.</td>
<td>${designationBean.title}</td>
<td style='text-align:center'><a href='/styletwo/editDesignation?code=${designationBean.code}'>Edit</a></td>
<td style='text-align:center'><a href='/styletwo/confirmDeleteDesignation?code=${designationBean.code}'>Delete</a></td>
</tr>
</my:Designations>
</tbody>
</table>

<jsp:include page='/MasterPageBottomSection.jsp' />