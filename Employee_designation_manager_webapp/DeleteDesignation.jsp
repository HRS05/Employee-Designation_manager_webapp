<jsp:useBean id='designationBean' scope='request' class='com.my.pack.hr.beans.DesignationBean'/>
<jsp:setProperty name='designationBean' property='*'/>
<jsp:forward page='/deleteDesignation' />