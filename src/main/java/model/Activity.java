package model;

import jakarta.persistence.*;
import jakarta.servlet.http.HttpServletRequest;
import lombok.*;

@Entity
@Setter
@Getter
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@Table(name = "activity")
@ToString
@NoArgsConstructor
@Builder
public class Activity {
    @Column(name = "type")
    String type;
    @Column(name = "activity")
    String activity;
    @Column(name = "participants")
    int participants;
    @Column(name = "price", precision = 2)
    float price;
    @Column(name = "link")
    String link;
    @Id
    @Column(name = "key_num")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequence")
    @SequenceGenerator(name = "sequence", sequenceName = "sequence", allocationSize = 1)
    int key;
    @Column(name = "accessibility", precision = 2)
    float accessibility;

    public static Activity activityFromRequest(HttpServletRequest request) {
        return Activity.builder()
            .type(request.getParameter("type"))
            .activity(request.getParameter("activity"))
            .participants(Integer.parseInt(request.getParameter("participants")))
            .price(Float.parseFloat(request.getParameter("price")))
            .link(request.getParameter("link"))
            .accessibility(Float.parseFloat(request.getParameter("accessibility")))
            .build();
    }
}