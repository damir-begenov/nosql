package com.example.spring_mongo_db_sex.repo;

import com.example.spring_mongo_db_sex.entity.User;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface UserRepository extends MongoRepository<User, String> {
    User findByEmail(String email);



}
