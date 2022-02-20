package com.kyungmin.grademanagement.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.kyungmin.grademanagement.model.Course;

@Repository
public class CourseDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	// 전체 course 수
	public int getRowCount() {
		String sqlStatement = "select count(*) from courses_and_grade";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);
	}
	
	// 저장된 모든 course의 정보 조회
	public List<Course> getAllCourses() {
    	String sqlStatement = "select * from courses_and_grade";
    	return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {
			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
				Course course = new Course();
				
				course.setId(rs.getInt("id"));
				course.setYear(rs.getString("year"));
				course.setSemester(rs.getString("semester"));
				course.setSubject(rs.getString("subject"));
				course.setCurriculum(rs.getString("curriculum"));
				course.setCredit(rs.getInt("credit"));
				course.setGrade(rs.getString("grade"));
				
				return course;
			}
    	});
    }

	// 각 년도와 학기별 수강학점 조회
	public Course getSemesterCourse(String year, String semester) {
		String sqlStatement = "select year, semester, sum(credit) from courses_and_grade where year=? and semester=?";
		return jdbcTemplate.queryForObject(sqlStatement, new Object[] { year, semester }, new RowMapper<Course>() {
			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
				Course course = new Course();

				course.setYear(rs.getString("year"));
				course.setSemester(rs.getString("semester"));
				course.setCredit(rs.getInt("sum(credit)"));

				return course;
			}
		});
	}

	// 각 년도와 학기별 전체 수강 정보 조회
	public List<Course> getCourse(String year, String semester) {
		String sqlStatement = "select * from courses_and_grade where year=? and semester=?";
		return jdbcTemplate.query(sqlStatement, new Object[] { year, semester }, new RowMapper<Course>() {
			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
				Course course = new Course();

				course.setId(rs.getInt("id"));
				course.setYear(rs.getString("year"));
				course.setSemester(rs.getString("semester"));
				course.setSubject(rs.getString("subject"));
				course.setCurriculum(rs.getString("curriculum"));
				course.setCredit(rs.getInt("credit"));
				course.setGrade(rs.getString("grade"));

				return course;
			}
		});
	}

	// 예비 수강 신청
	public boolean insertCourse(Course course) {

		String year = "2021";
		String semester = "2";
		String subject = course.getSubject();
		String curriculum = course.getCurriculum();
		int credit = course.getCredit();
		String grade = "A+";

		String sqlStatement = 
				"insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (?,?,?,?,?,?)";

		return (jdbcTemplate.update(sqlStatement,
				new Object[] { year, semester, subject, curriculum, credit, grade }) == 1);
	}

	// 예비 수강 신청 삭제
	public boolean deleteCourse(Course course) {

		int id = course.getId();
		
		String sqlStatement = "delete from courses_and_grade where id=?";
		
		return (jdbcTemplate.update(sqlStatement, new Object[] { id }) == 1);
	}

}
