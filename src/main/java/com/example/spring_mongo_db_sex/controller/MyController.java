package com.example.spring_mongo_db_sex.controller;

import com.example.spring_mongo_db_sex.entity.News;
import com.example.spring_mongo_db_sex.entity.User;
import com.example.spring_mongo_db_sex.service.Service;
import com.example.spring_mongo_db_sex.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.security.Principal;
import java.util.List;

@Controller
@AllArgsConstructor
public class MyController {
    private final Service service;
    private final UserService userService;

    @GetMapping("/")
    public String helloPage(@RequestParam(name = "job" ,required = false) String job,Model model,Principal principal){
        List<News> news = service.getAllNews(job);
        model.addAttribute("news",news);
        model.addAttribute("user",service.getUserByPrincipal(principal));
        return "news";
    }
    @GetMapping("/vacancies")
    public String allvac(@RequestParam(name = "job" ,required = false) String job,Model model,Principal principal){
        List<News> news = service.getAllNews(job);
        model.addAttribute("news",news);
        model.addAttribute("user",service.getUserByPrincipal(principal));
        return "vacancies";
    }
    @GetMapping("/userNews")
    public String userNews(Model model,Principal principal,News news, User user){
        String emaill = service.getUserByPrincipal(principal).getEmail();
        model.addAttribute("user",service.getUserByPrincipal(principal));
        model.addAttribute("newss",service.findNewsByUserEmail(emaill));
        return "userNews";
    }
    @GetMapping("/createvacanci")
    public String createvacanci(Principal principal,Model model){
        model.addAttribute("user",service.getUserByPrincipal(principal));
        return "createvacanci";
    }

    @PostMapping("/news/create")
    public String createVacancy(@RequestParam("file") MultipartFile file,News news, Principal principal){
        service.saveNews(principal,news,service.getUserByPrincipal(principal),file);
        return "redirect:/createvacanci";
    }
    @GetMapping("/help")
    public String helpPage(Principal principal,Model model){
        model.addAttribute("user",service.getUserByPrincipal(principal));
        return "help";
    }
    @GetMapping("/news/{id}")
    public String newsById(@PathVariable String id ,Model model ,Principal principal){
        model.addAttribute("newss",service.getNewsById(id));
        model.addAttribute("user",service.getUserByPrincipal(principal));
        return "/news-info";
    }
    @PostMapping("/news/delete/{id}")
    public String deleteNews(@PathVariable String id){
        System.out.println("fsfd");
        service.deleteNews(id);
        return "redirect:/userNews";
    }
    @PostMapping("/news/apply/{id}")
    public String applyToNews(@PathVariable String id, Principal principal){
        System.out.println("fsdffff");
        service.apply(principal,id);
        System.out.println("apply");
        return "redirect:/vacancies";
    }
    @GetMapping("/user-page")
    public String userPage(Principal principal,Model model){
        model.addAttribute("user",service.getUserByPrincipal(principal));
        return "user-page";
    }

}