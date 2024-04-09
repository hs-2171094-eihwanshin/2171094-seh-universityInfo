package kr.ac.hansung.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletResponse;


@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger("kr.ac.hansung.controller.HomeController");

    @GetMapping("/")
    public String home(HttpServletResponse response) {
        return "home";
    }

}
