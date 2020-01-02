package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;

@Configuration
public class DataSourseConfig {

    private final String driverClassName = "org.postgresql.Driver";
    private final String url = "jdbc:postgresql://127.0.0.1:5432/data-hibernate-experiments?currentSchema=public";
    private final String schemaName = "public";
    private final String username = "postgres";
    private final String password = "root";

    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource source = new DriverManagerDataSource();
        source.setDriverClassName(driverClassName);
        source.setUrl(url);
        source.setSchema(schemaName);
        source.setUsername(username);
        source.setPassword(password);
        return source;
    }
}
