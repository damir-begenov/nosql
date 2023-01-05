package com.example.spring_mongo_db_sex.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

import javax.persistence.Column;
import javax.persistence.Lob;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Document(collection = "news")
public class News {
    @Id
    private String id;
    private String country;
    private String company;
    private String industry;
    private String job;
    private String time;
    private int salary;
    @Lob
    @Column(columnDefinition = "MEDIUMBLOB")
    private String image;
    private int employees;
    private String description;
    private User user;
    private List<User> apply;

    public User getUser(User user) {
        return this.user;
    }
}
