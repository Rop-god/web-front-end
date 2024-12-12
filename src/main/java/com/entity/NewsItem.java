package com.entity;
import java.sql.*;
public class NewsItem {
    private int id;
    private String title;
    private String content;
    private Date publish_date;

    public NewsItem(int id, String title, String content, Date publish_date) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.publish_date = publish_date;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPublish_date() {
        return publish_date;
    }

    public void setPublish_date(Date publish_date) {
        this.publish_date = publish_date;
    }
}
