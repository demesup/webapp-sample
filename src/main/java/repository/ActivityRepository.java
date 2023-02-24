package repository;

import model.Activity;
import org.hibernate.Session;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static servlet.Util.session;

public class ActivityRepository {
    public  void save(Activity activity) {
        try (Session session = session()) {
            session.beginTransaction();
            session.persist(activity);
            session.getTransaction().commit();
        } catch (Exception ignored) {
        }
    }

    public List<Activity> getActivities() throws SQLException {
        List<Activity> result = new ArrayList<>();
        try (Session session = session()) {
            session.beginTransaction();
            result = session.createNativeQuery("select * from activity", Activity.class).getResultList();
            session.getTransaction().commit();
        } catch (Exception ignored) {
        }
        return result;
    }
}
