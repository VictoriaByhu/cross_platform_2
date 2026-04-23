package com.example.project2;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class MainController {

    @GetMapping("/")
    public String index(Model model) {
        // Displaying data
        model.addAttribute("name", "Student");
        model.addAttribute("age", 20);

        // If statements
        model.addAttribute("isLoggedIn", true);

        // Loops
        model.addAttribute("fruits", List.of("Apple", "Banana", "Cherry"));

        return "index";
    }
}
