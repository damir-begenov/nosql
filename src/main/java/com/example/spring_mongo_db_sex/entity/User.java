package com.example.spring_mongo_db_sex.entity;

import com.example.spring_mongo_db_sex.entity.enums.Role;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.time.LocalDateTime;
import java.util.*;

@Document(collection = "USER")
@Data
public class User implements UserDetails {
    @Id
    private String id;
    private String email;
    private String numberPhone;
    private String name;
    private boolean active;
    private String password;
    private String password2;

    private Set<Role> roles;
    private List<News> news = new ArrayList<>();
    private LocalDateTime dateOfCreated;

    public boolean isAdmin(){
        return roles.contains(Role.ROLE_ADMIN);
    }
    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return roles;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return active;
    }



}
