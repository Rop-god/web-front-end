package com.util;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@WebListener
public class DataSourcesUtils implements ServletContextListener {
    @Resource(name = "jdbc/MySQL")
    private static DataSource dSource;
    public static Connection getConnection() throws SQLException {
        return dSource.getConnection();
    }
}
