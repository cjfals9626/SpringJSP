package org.spring.spring.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class AccountController {

    @GetMapping("/login")
    public String doLogin(){
        return "account/login";
    }

    @GetMapping("/sign_up")
    public String doSignUp(){
        return "account/sign_up";
    }
}
