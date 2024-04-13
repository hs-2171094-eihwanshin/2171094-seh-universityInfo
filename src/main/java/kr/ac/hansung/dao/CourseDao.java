package kr.ac.hansung.dao;

import kr.ac.hansung.model.Course;
import kr.ac.hansung.model.Credits;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

//Repository 어노테이션을 사용하여 스프링이 자동으로 빈으로 등록하게 함
@Repository
//트랜잭션을 사용하기 위해 Transactional 어노테이션을 사용
@Transactional
public class CourseDao {

    //Java Data JPA 사용, EntityManager를 사용하여 데이터베이스 활용
    @PersistenceContext
    private EntityManager entityManager;

    //학년, 학기에 해당하는 과목 리스트를 가져옴
    public List<Course> getCourses(int year, int semester) {
        String hql = "from Course where year = :year and semester = :semester";
        return entityManager.createQuery(hql, Course.class).setParameter("year", year).setParameter("semester", semester).getResultList();
    }

    //과목 추가
    public void insert(Course course) {
        entityManager.persist(course);
    }

    //학년, 학기별 총 학점을 가져옴
    public List<Credits> getSumCredit() {
        String hql = "select new kr.ac.hansung.model.Credits(year, semester, sum(credit)) from Course group by year, semester";
        return entityManager.createQuery(hql, Credits.class).getResultList();
    }
}
