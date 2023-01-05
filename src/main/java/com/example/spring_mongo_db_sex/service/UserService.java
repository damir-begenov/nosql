package com.example.spring_mongo_db_sex.service;

import com.example.spring_mongo_db_sex.entity.News;
import com.example.spring_mongo_db_sex.entity.User;
import com.example.spring_mongo_db_sex.entity.enums.Role;
import com.example.spring_mongo_db_sex.repo.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.time.LocalDateTime;
import java.util.*;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public boolean createUser(User user) {
        String userEmail = user.getEmail();
        if (userRepository.findByEmail(userEmail) != null) return false;
        user.setActive(true);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        Set<Role> rolee = new HashSet<>();
        rolee.add(Role.ROLE_USER);
        user.setRoles(rolee);
        user.setDateOfCreated(LocalDateTime.now());
        log.info("Saving new User with email: {}", userEmail);
        userRepository.save(user);
        return true;
    }
    public List<User> list(){
       return userRepository.findAll();
    }
    public void userBan(String id){
        User user = userRepository.findById(id).orElse(null);
        if(user != null){
            if(user.isActive()) {
                user.setActive(false);
            }else{
                user.setActive(true);
            }
            log.info("user banned " + user.getEmail());
        }
        userRepository.save(user);
    }
}
