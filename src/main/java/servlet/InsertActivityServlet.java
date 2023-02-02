package servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/InsertActivity")
public class InsertActivityServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            Connection connection = getConnection();

            PreparedStatement statement = connection.prepareStatement("insert ignore  into activity values(?,?,?,?,?,?,?)");
            statement.setString(1, req.getParameter("id"));
            statement.setString(2, req.getParameter("type"));
            statement.setString(3, req.getParameter("activity"));
            statement.setInt(4, Integer.parseInt(req.getParameter("participants")));
            statement.setFloat(5, Float.parseFloat(req.getParameter("price")));
            statement.setString(6, req.getParameter("link"));
            statement.setFloat(7, Float.parseFloat(req.getParameter("accessibility")));

            statement.executeUpdate();

            statement.close();
            connection.close();

            PrintWriter writer = resp.getWriter();
            writer.println("<html><body><b>Successfully Inserted"
                    + "</b></body></html>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SneakyThrows
    private Connection getConnection() {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql:// localhost:3306/http_request_db",
                "root", "152120"
        );
    }
}
