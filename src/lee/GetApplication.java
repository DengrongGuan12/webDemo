package lee;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by gdr on 2014/10/23.
 */
@webServlet(name="get-application",urlPatterns={"/get-application"})
public class GetApplication extends HttpServlet{
    public void service(HttpServletRequest request,HttpServletResponse response)throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        out.println("<html><head><title>");
        out.println("测试application");
        out.println("</title></head><body>");
        ServletContext sc=getServletConfig().getServletContext();
        out.println("application 中当前的counter 的值为:");
        out.println(sc.getAttribute("counter"));
        out.println("</body></html>");

    }


}
