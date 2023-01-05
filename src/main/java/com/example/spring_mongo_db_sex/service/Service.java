package com.example.spring_mongo_db_sex.service;

import com.example.spring_mongo_db_sex.entity.News;
import com.example.spring_mongo_db_sex.entity.User;
import com.example.spring_mongo_db_sex.repo.NewsRepo;
import com.example.spring_mongo_db_sex.repo.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.*;

@AllArgsConstructor
@org.springframework.stereotype.Service
public class Service {

    NewsRepo newsRepo;
    UserRepository userRepository;



    public void deleteNews(String id){
        System.out.println("fsfd");
        newsRepo.deleteNewsById(id);
    }

    public News getNewsById(String id){
        return newsRepo.getNewsById(id);
    }

    public List<News> getAllNews(String job){
        if(job!=null) return newsRepo.findByJob(job);
        return newsRepo.findAll();
    }

    public News saveNews(Principal principal, News news, User user, MultipartFile file) {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        if(fileName.contains(".."))
        {
            System.out.println("not a a valid file");
        }
        try {
            news.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        news.setUser(getUserByPrincipal(principal));
        getUserByPrincipal(principal).setNews(Collections.singletonList(news));
        news.setApply(new ArrayList<User>());
        System.out.println( getUserByPrincipal(principal).getEmail());
        return newsRepo.save(news);
    }
    public News apply(Principal principal,String id){
        News newss = newsRepo.getNewsById(id);
        User user = getUserByPrincipal(principal);
        List<User> userz = newss.getApply() ;
        userz.add(user);
        newss.setApply(userz);
        return newsRepo.save(newss);
    }
    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }
    public List<News> findNewsByUserEmail(String email){

        return newsRepo.findNewsByUser_Email(email);
    }

}

