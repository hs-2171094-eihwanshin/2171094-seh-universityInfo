package kr.ac.hansung.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    //GET으로 로그인 페이지를 보여줌
    //Spring Security에서 제공하는 파라미터를 이용하여 로그인 실패, 로그아웃 성공 메시지를 보여줌
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin(@RequestParam(value = "error", required = false) String error,
                            @RequestParam(value = "logout", required = false) String logout,
                            Model model) {
        if (error != null) {
            model.addAttribute("errorMsg", "잘못된 유저이름 / 비밀번호입니다. 다시 시도해주세요.");
        }
        if (logout != null) {
            model.addAttribute("logoutMsg", "로그아웃 되었습니다.");
        }

        return "login";
    }
}
