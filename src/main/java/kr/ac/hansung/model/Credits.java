package kr.ac.hansung.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.Size;

//총 학점 저장을 위한 Credits 클래스
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Credits {
    public int year;

    public int semester;

    public long sumCredit;
}
