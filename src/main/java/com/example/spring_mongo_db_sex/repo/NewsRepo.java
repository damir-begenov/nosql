package com.example.spring_mongo_db_sex.repo;

import com.example.spring_mongo_db_sex.entity.News;
import com.example.spring_mongo_db_sex.entity.User;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;
import java.util.Optional;

public interface NewsRepo extends MongoRepository<News,String> {
    public List<News> findByJob(String job);
    public News getNewsById(String id);
    public News getNewsByUser(User user);
    public List<News> findNewsByUser_Email(String email);
    public News deleteNewsById(String id);

}
