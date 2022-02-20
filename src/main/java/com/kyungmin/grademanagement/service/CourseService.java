package com.kyungmin.academicmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kyungmin.academicmanagement.dao.CourseDao;
import com.kyungmin.academicmanagement.model.Course;

@Service
public class CourseService {
	
	@Autowired
	private CourseDao courseDao;
	
	//모든 Course 조회
	public List<Course> getAllCourse() {
		return courseDao.getAllCourses();
	}
	
	//각 년도와 학기별 전체 수강 정보 조회
	public List<Course> getCourses(String year, String semester) {
		return courseDao.getCourse(year, semester);
	}
	
	//각 년도와 학기별 수강학점 조회
	public Course getSemesterCourse(String year, String semester) {
		return courseDao.getSemesterCourse(year, semester);
	}
	
	//예비 수강 신청
	public void insertCourse(Course course) {
		courseDao.insertCourse(course);
	}
	
	//예비 수강 신청 삭제
	public void deleteCourse(Course course) {
		courseDao.deleteCourse(course);
	}
}
