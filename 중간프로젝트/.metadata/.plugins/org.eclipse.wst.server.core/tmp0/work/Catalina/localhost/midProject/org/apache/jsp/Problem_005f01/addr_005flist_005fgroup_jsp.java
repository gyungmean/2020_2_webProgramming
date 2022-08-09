/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.106
 * Generated at: 2020-12-07 07:50:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Problem_005f01;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Problem01.*;
import java.util.*;

public final class addr_005flist_005fgroup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 
	int rpp = 2; //row per page
	int cnt; //저장된 주소의 개수
	int allPage; //전체 페이지 개수
	int currentPage; //현재 페이지
	int lastIndex; 
	int startIndex;
	
	

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
 request.setCharacterEncoding("UTF-8"); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      Problem01.AddrManager am = null;
      synchronized (application) {
        am = (Problem01.AddrManager) _jspx_page_context.getAttribute("am", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (am == null){
          am = new Problem01.AddrManager();
          _jspx_page_context.setAttribute("am", am, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<style>\r\n");
      out.write("\ttable{\r\n");
      out.write("\t\twidth: 500px;\r\n");
      out.write("\t\tborder: 1px solid #444444;\r\n");
      out.write("\t}\r\n");
      out.write("\ttr, td{\r\n");
      out.write("\t\tborder: 1px solid #444444;\r\n");
      out.write("\t\ttext-align: center;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>주소록 그룹순</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<h2>주소록(그룹보기)</h2>\r\n");
      out.write("<hr>\r\n");
      out.write("<a href=\"addr_form.jsp\">주소추가</a><p>\r\n");

	if(request.getParameter("sindex") == null){
		currentPage = 1;
	}
	else{
		currentPage = Integer.parseInt(request.getParameter("sindex"));
	}

	lastIndex = currentPage * 2 - 1;
	startIndex = lastIndex - 1;

      out.write("\r\n");
      out.write("<table>\r\n");
      out.write("<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td></tr>\r\n");

	List<AddrBean> ab = am.getAddrList();
	List<AddrBean> sort = new ArrayList<AddrBean>(); // 정렬을 해줄 새로운 List 생성
	
	cnt = ab.size();
	
	if(cnt % rpp == 0){
		allPage = cnt / 2;
	}
	else{
		allPage = cnt / 2 + 1;
	}
	
	for(AddrBean a : ab){
		if(a.getGroup().equals("가족")){
			sort.add(a);
		}
	}
	for(AddrBean a : ab){
		if(a.getGroup().equals("친구")){
			sort.add(a);
		}
	}
	for(AddrBean a : ab){
		if(a.getGroup().equals("직장")){
			sort.add(a);
		}
	}
	
	for(int i = startIndex; i <= lastIndex; i++){
		if(i >= cnt || cnt == 0) break; // 현재 저장된 개수보다 index가 커질 경우 종료 또는 저장된 개수가 0이면 출력하지 않음
		

      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t<td>");
      out.print(sort.get(i).getUsername() );
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(sort.get(i).getTel() );
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(sort.get(i).getEmail() );
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(sort.get(i).getSex() );
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(sort.get(i).getGroup() );
      out.write("</td>\r\n");
      out.write("\t\t\t</tr>\r\n");

	}

      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("<p>\r\n");

	for(int i = 1; i <= allPage; i++){
		if(i == currentPage){
			out.print(i);
		}
		else{
			out.print("<a href=\"addr_list_group.jsp?sindex="+ i + "\">" + i + "</a>");
		}
		if(i != allPage){
			out.print(" | ");
		}
	}

      out.write("\r\n");
      out.write("<p>\r\n");
      out.write("<a href=\"addr_list.jsp\">등록 순으로 보기</a> <!-- 추가 기능 그룹순과 등록순 왔다갔다 할 수 있게 sindex값 전달 x -->\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
