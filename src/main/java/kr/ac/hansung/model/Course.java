package kr.ac.hansung.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

//JPA를 사용하여 데이터베이스와 연동하기 위해 Entity 어노테이션을 사용
//Table 어노테이션을 사용하여 데이터베이스의 테이블과 매핑
//Getter, Setter, ToString, NoArgsConstructor 어노테이션을 사용하여 getter, setter, toString, 생성자를 자동으로 생성
@Getter
@Setter
@ToString
@NoArgsConstructor
@Entity
@Table(name = "courses")
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    //1900~2100년도 검증
    @Min(value = 1900, message = "Year must be greater than 1900")
    @Max(value = 2100, message = "Year must be less than 2100")
    private int year;

    //1학기, 2학기 검증
    @Min(value = 1, message = "Semester must be greater than 1")
    @Max(value = 2, message = "Semester must be less than 2")
    private int semester;

    //7자리 코드 검증
    @Size(min = 7, max = 7, message = "Code must be 7 digits")
    private String code;

    //1~255자 검증, 한글은 2바이트라 충분히 크게 줌
    @Size(min = 1, max = 255, message = "Title must be between 1 and 255 characters")
    private String title;

    //2~10자 검증, 한글 3자리까지 되니 충분히 크게 줌
    @Size(min = 2, max = 10, message = "Division must be between 2 and 10 characters")
    private String division;

    //1~255자 검증, 한글은 2바이트라 충분히 크게 줌
    @Size(min = 1, max = 255, message = "Professor must be between 1 and 255 characters")
    private String professor;

    //1~3학점 검증
    @Min(value = 1, message = "Credit must be greater than 1")
    @Max(value = 3, message = "Credit must be less than 3")
    private int credit;
}
