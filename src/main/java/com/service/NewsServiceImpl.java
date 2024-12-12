package com.service;

import com.entity.NewsItem;
import com.util.DataSourcesUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NewsServiceImpl implements AdminService{

    @Override
    public void addNews(String title, String content, Date publish_date) {
        String sql = "INSERT INTO news (title, content, publish_date) VALUES (?, ?, ?)";
        try (Connection conn = DataSourcesUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, title);
            st.setString(2, content);
            st.setDate(3, new java.sql.Date(publish_date.getTime()));
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public List<NewsItem> getAllNews() {
        List<NewsItem> newsList = new ArrayList<>();
        String sql = "SELECT * FROM news ORDER BY publish_date DESC";
        try (Connection conn = DataSourcesUtils.getConnection();
             Statement st = conn.createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            while (rs.next()) {
                NewsItem newsItem = new NewsItem(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("publish_date")
                );
                newsList.add(newsItem);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newsList;
    }
    public void updateNews(int id, String title, String content, Date publish_date) {
        String sql = "UPDATE news SET title = ?, content = ?, publish_date = ? WHERE id = ?";
        try (Connection conn = DataSourcesUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, title);
            st.setString(2, content);
            st.setDate(3, new java.sql.Date(publish_date.getTime()));
            st.setInt(4, id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public NewsItem getNewsById(int id) {
        String sql = "SELECT * FROM news WHERE id = ?";
        try (Connection conn = DataSourcesUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new NewsItem(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("content"),
                        rs.getDate("publish_date")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public void deleteNews(int id) {
        String sql = "DELETE FROM news WHERE id = ?";
        try (Connection conn = DataSourcesUtils.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
