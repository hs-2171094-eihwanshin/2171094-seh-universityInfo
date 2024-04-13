package kr.ac.hansung.service;

import kr.ac.hansung.dao.CourseDao;
import kr.ac.hansung.model.Course;
import kr.ac.hansung.model.Credits;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {

    //객체 주입
    @Autowired
    private CourseDao courseDao;

    //모두 dao의 메소드를 단순 호출함
    public List<Course> getCourses(int year, int semester) {
        return courseDao.getCourses(year, semester);
    }

    public void insert(Course course) {
        courseDao.insert(course);
    }

    public List<Credits> getSumCredit() {
        return courseDao.getSumCredit();
    }
}
