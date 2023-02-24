package demesup.servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import demesup.model.Activity;
import demesup.repository.ActivityRepository;

import java.io.IOException;

@WebServlet("/activity")
public class ActivityServlet extends HttpServlet {
    public static ActivityRepository repository = new ActivityRepository();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException {
        response.sendRedirect(request.getContextPath() + "/activity.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        repository.save(Activity.activityFromRequest(req));
        resp.sendRedirect(req.getContextPath() + "/activity.jsp");
    }

}