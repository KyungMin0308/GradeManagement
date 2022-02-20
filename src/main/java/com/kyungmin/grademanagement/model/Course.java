package com.kyungmin.academicmanagement.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Course {
	
	//DB에서 Course를 구분하기 위한 ID
	private int id;
	
	//수강년도
	private String year;
	
	//학기
	private String semester;
	
	//과목명
	@Size(min=2, max=100, message="과목명은 최소2, 최대100 글자입니다.")
	@NotEmpty(message="과목명은 필수로 입력해야 합니다.")
	private String subject;
	
	//교과구분(전공 또는 교양)
	@NotEmpty(message="교과구분은 필수로 입력해야 합니다.(전공 또는 교양)")
	private String curriculum;
	
	//학점
	@Min(1)
	@Max(3)
	private int credit;
	
	//성적
	private String grade;
}
