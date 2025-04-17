package com.example.backend;

import org.springframework.web.bind.annotation.*;
import java.util.*;

@RestController
@RequestMapping("/api/users")
@CrossOrigin(origins = "*") // Cho phép gọi từ frontend
public class UserController {

    private List<String> users = new ArrayList<>(List.of("Alice", "Bob"));

    @GetMapping
    public List<String> getUsers() {
        return users;
    }

    @PostMapping
    public void addUser(@RequestBody String name) {
        users.add(name);
    }
}
