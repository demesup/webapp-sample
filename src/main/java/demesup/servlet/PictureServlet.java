package demesup.servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;

@WebServlet("/picture")
public class PictureServlet extends HttpServlet {
    static URL url;

    static {
        try {
            url = new URL("https://api.imgflip.com/get_memes");
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            out.println("<!DOCTYPE html>");
            out.println("<html><head>");
            out.println("<style>" +
                    "img{" +
                    "padding-top:80px;}body{" +
                    "text-align:center;" +
                    "background-image: url(\"https://img.freepik.com/free-photo/grunge-concrete-material-background-texture-wall-concept_53876-42916.jpg?w=2000\");}" +
                    "</style>");
            out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
            out.println("<body>");

            out.println("<img src=\"https://random.imagecdn.app/600/600\">");
            out.println("</body>");
            out.println("</html>");

        } catch (Exception e) {
            out.println(e.getMessage());
        } finally {
            out.close();
        }
    }
}