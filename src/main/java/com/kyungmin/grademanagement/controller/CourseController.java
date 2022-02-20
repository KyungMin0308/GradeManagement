package com.kyungmin.grademanagement.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kyungmin.grademanagement.model.Course;
import com.kyungmin.grademanagement.service.CourseService;

@Controller
public class CourseController {

	@Autowired
	private CourseService courseService;

	// 1. 전체 수강 과목 및 성적 조회
	@RequestMapping("/all_course")
	public String showAllCourse(Model model) {
		List<Course> courses = courseService.getAllCourse();

		model.addAttribute("all_courses", courses);

		return "all_courses";
	}

	// 2. 학기별 이수 학점 조회
	@RequestMapping("/semester_course")
	public String showSemesterCourse(Model model) {
		List<Course> semesterCourse = new ArrayList<Course>();

		Course course = courseService.getSemesterCourse("2016", "1");
		semesterCourse.add(course);
		course = courseService.getSemesterCourse("2016", "2");
		semesterCourse.add(course);
		course = courseService.getSemesterCourse("2019", "1");
		semesterCourse.add(course);
		course = courseService.getSemesterCourse("2019", "2");
		semesterCourse.add(course);
		course = courseService.getSemesterCourse("2020", "1");
		semesterCourse.add(course);
		course = courseService.getSemesterCourse("2020", "2");
		semesterCourse.add(course);
		course = courseService.getSemesterCourse("2021", "1");
		semesterCourse.add(course);

		model.addAttribute("semester_course", semesterCourse);
		return "semester_course";
	}

	// 2-1. 해당 학기 수강과목 및 성적 조회
	@RequestMapping("/courses_grade")
	public String showCourse(@RequestParam("year") String year, @RequestParam("semester") String semester,
			Model model) {
		List<Course> course = courseService.getCourses(year, semester);

		model.addAttribute("courses_grade", course);

		return "courses_grade";
	}

	// 3. 예비 수강 신청
	@RequestMapping("/enrol")
	public String createCourse(Model model) {

		model.addAttribute("course", new Course());

		return "enrol";
	}

	@RequestMapping("/docreate")
	public String doCreate(Model model, @Valid Course course, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("== Form data does not validated ==");
			List<ObjectError> errors = result.getAllErrors();
			for (ObjectError error : errors) {
				System.out.println(error.getDefaultMessage());
			}
			return "enrol"; // 에러 발생시 다시 enrol.jsp로 이동
		}

		courseService.insertCourse(course);

		return "create_success";
	}

	// 4. 예비 수강 신청 과목 조회
	@RequestMapping("/created")
	public String showCreatedCourse(Model model) {
		List<Course> course = courseService.getCourses("2021", "2");

		model.addAttribute("courses", course);

		return "created";
	}
	
	// 4-1. 예비 수강 신청 과목 삭제
	@RequestMapping("/dodelete")
	public String deleteCourse(Model model, Course course) {

		courseService.deleteCourse(course);
		
		return "delete_success";
	}
}
