package servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/activity")
public class ActivityServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.sendRedirect(request.getContextPath() + "/activity.jsp");


//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//        try {
//            out.println("<!DOCTYPE html>");
//            out.println("<html><head>");
//            out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
//            out.println("<body>");
//
//            out.println("<table border=\"2\">");
//            out.println("<tr>" +
//                    "<td>id</td>" +
//                    "<td>type</td>" +
//                    "<td>activity</td>" +
//                    "<td>participants</td>" +
//                    "<td>link</td>" +
//                    "<td>price</td>" +
//                    "<td>accessibility</td>" +
//                    "</tr>");
//
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/http_request_db", "root", "152120");
//            Statement statement = connection.createStatement();
//
//            statement.executeQuery("select * from activity");
//            ResultSet set = statement.getResultSet();
//            while (set.next()) {
//                String link = set.getString("link");
//                out.println("<tr>" +
//                        "<td>" + set.getString("key_num") + "</td>" +
//                        "<td>" + set.getString("type") + "</td>" +
//                        "<td>" + set.getString("activity") + "</td>" +
//                        "<td>" + set.getString("participants") + "</td>" +
//                        "<td><a href=\"" + link + "\" target=\"_blank\">" + link + "</a></td>" +
//                        "<td>" + set.getString("price") + "</td>" +
//                        "<td>" + set.getString("accessibility") + "</td>" +
//                        "</tr>");
//            }
//            out.println("</table>");
//            out.println("</body>");
//            out.println("</html>");
//
//        } catch (ClassNotFoundException | SQLException e) {
//            out.println(e.getMessage());
//        } finally {
//            out.close();
//        }
    }

    private static void greetUser(String username, PrintWriter printWriter) {
        if (username == null) {
            printWriter.write("Hello, Anonymous" + "<br>");
        } else {
            printWriter.write("Hello, " + username + "<br>");
        }
    }

    private static Integer getVisitCounter(HttpSession session) {
        Integer visitCounter = (Integer) session.getAttribute("visitCounter");
        if (visitCounter == null) {
            visitCounter = 1;
        } else {
            visitCounter++;
        }
        return visitCounter;
    }
}