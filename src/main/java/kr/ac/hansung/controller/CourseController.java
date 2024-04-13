package kr.ac.hansung.controller;

import kr.ac.hansung.model.Course;
import kr.ac.hansung.model.Credits;
import kr.ac.hansung.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
public class CourseController {

    //객체 주입
    @Autowired
    private CourseService courseService;

    //학년별 학점 조회
    @GetMapping("/courseinfo")
    public String showCourseInfo(Model model) {
        //Credits 객체로 Year, Semester, SumCredit을 받아와 view에 전달
        List<Credits> credits = courseService.getSumCredit();
        model.addAttribute("credits", credits);
        return "courseinfo";
    }

    //상세보기 페이지
    //기존의 경로에 동적 라우팅으로 상세보기 구현
    @GetMapping("/courseinfo/{year}/{semester}")
    public String showCourseInfo(@PathVariable int year, @PathVariable int semester, Model model) {
        List<Credits> credits = courseService.getSumCredit();
        model.addAttribute("credits", credits);
        //상세보기 - 해당 년도, 학기의 수강과목 리스트를 받아와 view에 전달
        List<Course> courses = courseService.getCourses(year, semester);
        model.addAttribute("courses", courses);
        return "courseinfo";
    }

    //수강신청 페이지
    @GetMapping("/courseenroll")
    public String showCourseEnroll(Model model) {
        //객체 주입
        model.addAttribute("course", new Course());
        return "courseenroll";
    }

    //수강 신청 시도
    //검증을 넣고 오류 발생 시 데이터 유지하고 메세지 출력
    //성공시 enrollsuccess 페이지로 이동
    @PostMapping("/doenroll")
    public String doEnroll(Model model, @Valid Course course, BindingResult result) {
        if (result.hasErrors()) {
            return "courseenroll";
        }
        courseService.insert(course);
        return "enrollsuccess";
    }

    //수강신청 조회 페이지
    @GetMapping("/courseenrollinfo")
    public String showCourseEnrollInfo(Model model) {
        //2024년 2학기 수강과목 리스트 = 수강신청한 과목 리스트를 받아와 view에 전달
        List<Course> courses = courseService.getCourses(2024, 2);
        model.addAttribute("courses", courses);
        return "courseenrollinfo";
    }
}
