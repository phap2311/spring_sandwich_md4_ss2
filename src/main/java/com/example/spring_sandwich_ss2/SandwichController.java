package com.example.spring_sandwich_ss2;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/sandwich")
public class SandwichController {
    @GetMapping("")
    public String formSandwich() {
        return "form";
    }
    @GetMapping("/list")
    public String listSandwich(@RequestParam(value = "item", defaultValue = "no choice") String[] condiments, Model model){
        model.addAttribute("condiments",condiments);
        return "form";
    }
}
