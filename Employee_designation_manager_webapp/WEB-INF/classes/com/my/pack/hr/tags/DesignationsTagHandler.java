package com.my.pack.hr.tags;
import java.util.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import com.my.pack.hr.beans.*;
import com.my.pack.hr.dl.*;

public class DesignationsTagHandler extends BodyTagSupport
{
private List<DesignationBean> designations;
private int index;

public DesignationsTagHandler()
{
reset();
}
private void reset()
{
this.index=0;
if(designations!=null)
{
designations.clear();
designations=null;
}
}

public int doStartTag()
{
List<DesignationDTO> dlDesignations=null;
try
{
dlDesignations=new DesignationDAO().getAll();
}catch(DAOException daoException)
{
System.out.println(daoException);
return super.SKIP_BODY;
}
if(dlDesignations.size()==0) return super.SKIP_BODY;
designations=new ArrayList<>();
DesignationBean designationBean;
for(DesignationDTO dlDesignation:dlDesignations)
{
designationBean=new DesignationBean();
designationBean.setCode(dlDesignation.getCode());
designationBean.setTitle(dlDesignation.getTitle());
designations.add(designationBean);
}
this.index=0;
designationBean=designations.get(index);
pageContext.setAttribute("designationBean",designationBean,PageContext.REQUEST_SCOPE); 
pageContext.setAttribute("serialNumber",new Integer(index+1));
return super.EVAL_BODY_INCLUDE;
}

public int doAfterBody()
{
this.index++;
if(designations.size()==index) return super.SKIP_BODY;
DesignationBean designationBean;
designationBean=designations.get(index);
pageContext.setAttribute("designationBean",designationBean,PageContext.REQUEST_SCOPE);
pageContext.setAttribute("serialNumber",new Integer(index+1));
return super.EVAL_BODY_AGAIN;
}

public int doEndTag()
{
reset();
return super.EVAL_PAGE;
}


}//class ends