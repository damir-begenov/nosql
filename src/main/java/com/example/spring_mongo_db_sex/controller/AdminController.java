package com.example.spring_mongo_db_sex.controller;

import com.example.spring_mongo_db_sex.entity.User;
import com.example.spring_mongo_db_sex.entity.enums.Role;
import com.example.spring_mongo_db_sex.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@AllArgsConstructor
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
public class AdminController {
    private final UserService userService;

    @GetMapping("/admin")
    public String admin(Model model){
        model.addAttribute("users",userService.list());
        return "admin";
    }
    @PostMapping("/admin/user/ban/{id}")
    public String userBan(@PathVariable("id") String id){
        userService.userBan(id);
        return "redirect:/admin";
    }
    @GetMapping("admin/user/edit/{user}")
    public String userEdit(@PathVariable("user") User user, Model model){
        model.addAttribute("user",user);
        model.addAttribute("roles", Role.values());
        return "user-edit";
    }
}
