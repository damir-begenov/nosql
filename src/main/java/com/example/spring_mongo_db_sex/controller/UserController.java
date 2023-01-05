package com.example.spring_mongo_db_sex.controller;

import com.example.spring_mongo_db_sex.entity.News;
import com.example.spring_mongo_db_sex.entity.User;
import com.example.spring_mongo_db_sex.service.Service;
import com.example.spring_mongo_db_sex.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final Service service;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }
    @PostMapping("/login")
    public String loginf() {
        return "news";
    }

    @PostMapping("/registration")
    public String createUser(User user) {
        userService.createUser(user);
        return "redirect:/login";
    }

    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable("user") User user, Model model, News news){
        model.addAttribute("user",user);
        System.out.println( news.getUser());
        List<News> nnews = service.findNewsByUserEmail(user.getEmail());
        model.addAttribute("news",nnews);
        return "user-info";
    }


}