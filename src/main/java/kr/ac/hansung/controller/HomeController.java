package kr.ac.hansung.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletResponse;


@Controller
public class HomeController {

    @GetMapping("/")
    public String home(HttpServletResponse response) {
        return "home";
    }

}
