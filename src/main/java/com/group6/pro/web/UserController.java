package com.group6.pro.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.group6.pro.model.Kitchens;
import com.group6.pro.model.User;
import com.group6.pro.service.KitchensService;
import com.group6.pro.service.SecurityService;
import com.group6.pro.service.UserService;
import com.group6.pro.validator.UserValidator;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;
    
    @Autowired 
    private KitchensService kitchensService;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @GetMapping({"/", "/welcome"})
    public String welcome(Model model) {
    	System.out.println("DONE");
        return "welcome";
    }
    
    @GetMapping("/addKitchen")
    public String addKitchenGet(Kitchens kitchens) {
        System.out.println("ERR");
    	return "RANDOM ERROR PAGE";
    }

    @PostMapping("/addKitchen")
    public @ResponseBody String addKitchenPost(@RequestParam String name, @RequestParam String days, @RequestParam String start, @RequestParam String end) {
        System.out.println("TEST");
        Kitchens kitchen = new Kitchens();
        kitchen.setKitchenName(name);
        kitchen.setKitchen_working_Days(days);
        kitchen.setKitchen_start_time(start);
        kitchen.setKitchen_stop_time(end);
    	kitchensService.save(kitchen);
        return "redirect:/welcome";
    }
}
