package com.util;

import com.entity.NewsItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DataBaseUtils {

    public static NewsItem getNewsById(int id) {
        NewsItem newsItem = null;
        String query = "SELECT * FROM news WHERE id = ?";
        try (Connection conn = DataSourcesUtils.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    newsItem = new NewsItem(
                            rs.getInt("id"),
                            rs.getString("title"),
                            rs.getString("content"),
                            rs.getDate("publish_date")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newsItem;
    }
    public static List<NewsItem> getLatestNews(int limit) {
        List<NewsItem> newsList = new ArrayList<>();
        String sql = "SELECT * FROM news ORDER BY publish_date DESC LIMIT ?";
        try (Connection conn = DataSourcesUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, limit);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    NewsItem newsItem = new NewsItem(
                            rs.getInt("id"),
                            rs.getString("title"),
                            rs.getString("content"),
                            rs.getDate("publish_date")
                    );
                    newsList.add(newsItem);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newsList;
    }
    public static List<NewsItem> getAllNews() {
        List<NewsItem> newsList = new ArrayList<>();
        String sql = "SELECT * FROM news ORDER BY publish_date DESC"; // 不限制数量
        try (Connection conn = DataSourcesUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql);
             ResultSet rs = st.executeQuery()) {
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
            e.printStackTrace(); // 或者使用日志记录
        }
        return newsList;
    }
}
