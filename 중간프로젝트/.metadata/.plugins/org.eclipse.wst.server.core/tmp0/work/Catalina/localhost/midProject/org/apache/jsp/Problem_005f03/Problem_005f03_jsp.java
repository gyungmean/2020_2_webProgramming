/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.106
 * Generated at: 2020-12-03 14:49:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Problem_005f03;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import jspbook.pr03.*;
import java.util.*;

public final class Problem_005f03_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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

      out.write('\r');
      out.write('\n');

	request.setCharacterEncoding("UTF-8");

      out.write('\r');
      out.write('\n');
      jspbook.pr03.LectureBean lecture = null;
      lecture = (jspbook.pr03.LectureBean) _jspx_page_context.getAttribute("lecture", javax.servlet.jsp.PageContext.REQUEST_SCOPE);
      if (lecture == null){
        lecture = new jspbook.pr03.LectureBean();
        _jspx_page_context.setAttribute("lecture", lecture, javax.servlet.jsp.PageContext.REQUEST_SCOPE);
      }
      out.write('\r');
      out.write('\n');
      jspbook.pr03.LectureManager lectureMan = null;
      synchronized (session) {
        lectureMan = (jspbook.pr03.LectureManager) _jspx_page_context.getAttribute("lectureMan", javax.servlet.jsp.PageContext.SESSION_SCOPE);
        if (lectureMan == null){
          lectureMan = new jspbook.pr03.LectureManager();
          _jspx_page_context.setAttribute("lectureMan", lectureMan, javax.servlet.jsp.PageContext.SESSION_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("lecture"), request);
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>시간표 작성</title>\r\n");
      out.write("<style>\r\n");
      out.write("* {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("table, tr, th, td {\r\n");
      out.write("\tborder: 1px solid black;\r\n");
      out.write("\tborder-collapse: collapse;\r\n");
      out.write("}\r\n");
      out.write("table{\r\n");
      out.write("\tmargin: auto;\r\n");
      out.write("\tmargin-bottom: 30px;\r\n");
      out.write("}\r\n");
      out.write("th, td {\r\n");
      out.write("\theight: 55px;\r\n");
      out.write("\twidth: 100px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".left_column {\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".전공필수 {\r\n");
      out.write("\tbackground-color: #FFE08C;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".전공선택 {\r\n");
      out.write("\tbackground-color: #B2CCFF;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".교양 {\r\n");
      out.write("\tbackground-color: #BDBDBD;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".자유선택 {\r\n");
      out.write("\tbackground-color: white;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<form method=post action=\"Problem_03.jsp\">\r\n");
      out.write("\t\t\t");

				out.println("과목타입:");
				out.println("<select name=type>");
				for (int i = 0; i < LectureBean.typeNames.length; i++) {
					out.println("<option value=" + i + ">");
					out.println(LectureBean.typeNames[i]);
					out.println("</option>");
				}
				out.println("</select>");
				out.println("과목명:");
				out.println("<select name=title>");
				for (int i = 0; i < LectureBean.titleNames.length; i++) {
					out.println("<option value=" + i + ">");
					out.println(LectureBean.titleNames[i]);
					out.println("</option>");
				}
				out.println("</select>");
				out.println("요일:");
				out.println("<select name=day>");
				for (int i = 0; i < LectureBean.dayNames.length; i++) {
					out.println("<option value=" + i + ">");
					out.println(LectureBean.dayNames[i]);
					out.println("</option>");
				}
				out.println("</select>");
				out.println("시간:");
				out.println("<select name=time>");
				for (int i = 0; i < 6; i++) {
					out.println("<option value=" + i + ">");
					out.println(i + 1);
					out.println("</option>");
				}
				out.println("</select>");
				out.println("연강여부:");
				out.println("<select name=consecutive>");
				for (int i = 0; i < 4; i++) {
					out.println("<option value=" + i + ">");
					out.println(i + 1);
					out.println("</option>");
				}
				out.println("</select>");
			
      out.write("\r\n");
      out.write("\t\t\t<input type=submit value=\"등록\">\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t\t<hr>\r\n");
      out.write("\t\t");

			if (lecture.getType() != -1) {
				lectureMan.add(lecture);
			}
		
      out.write("\r\n");
      out.write("\t\t<h3>강의 시간표</h3>\r\n");
      out.write("\t\t<table>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<th>2학년</th>\r\n");
      out.write("\t\t\t\t");

					lectureMan.buildMatrix();
					int num = 1;

					for (int i = 0; i < 5; i++) {
				
      out.write("\r\n");
      out.write("\t\t\t\t<th>");
      out.print(LectureBean.dayNames[i]);
      out.write("</th>\r\n");
      out.write("\t\t\t\t");

					}
				
      out.write("\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");

				for (int i = 0; i < 6; i++) {
			
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t");

					out.print("<!--" + num + "교시-->");
				
      out.write("\r\n");
      out.write("\t\t\t\t<td class=\"left_column\">");
      out.print(num++);
      out.write("</td>\r\n");
      out.write("\t\t\t\t");

					for (int j = 0; j < 5; j++) {
							if (lectureMan.getTitleMatrix()[i][j] != -1) {
								if (lectureMan.getSpanMatrix()[i][j] == 1) {
									if (lectureMan.getTypeMatrix()[i][j] != 0) {
										out.print("<td class=" + LectureBean.typeNames[lectureMan.getTypeMatrix()[i][j] - 1]
												+ ">");
									} else {
										out.print("<td>");
									}
									out.print(LectureBean.titleNames[lectureMan.getTitleMatrix()[i][j]]);
									out.println("</td>");
								} else if (lectureMan.getSpanMatrix()[i][j] > 1) {
									if (lectureMan.getTypeMatrix()[i][j] != 0) {
										out.print("<td class=" + LectureBean.typeNames[lectureMan.getTypeMatrix()[i][j] - 1]
												+ " rowspan=" + lectureMan.getSpanMatrix()[i][j] + ">");
									} else {
										out.print("<td>");
									}
									out.print(LectureBean.titleNames[lectureMan.getTitleMatrix()[i][j]]);
									out.println("</td>");
								}
							} else {
								if (lectureMan.getSpanMatrix()[i][j] == 1) {
									if (lectureMan.getTypeMatrix()[i][j] != 0) {
										out.print("<td class=" + LectureBean.typeNames[lectureMan.getTypeMatrix()[i][j] - 1]
												+ ">");
									} else {
										out.print("<td>");
									}
									out.print("&nbsp;");
									out.println("</td>");
								} else if (lectureMan.getSpanMatrix()[i][j] > 1) {
									if (lectureMan.getTypeMatrix()[i][j] != 0) {
										out.print("<td class=" + LectureBean.typeNames[lectureMan.getTypeMatrix()[i][j] - 1]
												+ " rowspan=" + lectureMan.getSpanMatrix()[i][j] + ">");
									} else {
										out.print("<td>");
									}
									out.print("&nbsp;");
									out.println("</td>");
								}
							}
						}
					}
				
      out.write("\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t<hr>\r\n");
      out.write("\t\t");

			if (lecture.getType() != -1) {
				for (LectureBean lb : lectureMan.getLectureList()) {
					out.println(LectureBean.typeNames[lb.getType()] + "/");
					out.println(LectureBean.titleNames[lb.getTitle()] + "/");
					out.println(LectureBean.dayNames[lb.getDay()] + "/");
					out.println((lb.getTime() + 1) + "/");
					out.println((lb.getConsecutive() + 1) + "<br>");
				}
			}
		
      out.write("\r\n");
      out.write("\t</div>\r\n");
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
