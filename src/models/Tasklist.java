package models;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@NamedQueries({
    @NamedQuery(
            name = "getTask",
            query = "SELECT m FROM Tasklist AS m ORDER BY m.id DESC"
            ),
    @NamedQuery(
            name = "getCount",
            query = "SELECT COUNT(m) FROM Tasklist AS m"
            )
})
@Table(name = "tasks")
public class Tasklist {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "ent_date", nullable = false)
    private Timestamp ent_date;
    @Column(name = "upd_date", nullable = false)
    private Timestamp upd_date;


    @Column(name = "content", length = 255, nullable = false)
    private String content;


    public Integer getId() {
        return id;
    }


    public void setId(Integer id) {
        this.id = id;
    }


    public Timestamp getEnt_date() {
        return ent_date;
    }


    public void setEnt_date(Timestamp ent_date) {
        this.ent_date = ent_date;
    }


    public Timestamp getUpd_date() {
        return upd_date;
    }


    public void setUpd_date(Timestamp upd_date) {
        this.upd_date = upd_date;
    }


    public String getContent() {
        return content;
    }


    public void setContent(String content) {
        this.content = content;
    }


}
