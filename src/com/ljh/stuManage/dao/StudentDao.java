package com.ljh.stuManage.dao;

import java.util.List;

import com.ljh.stuManage.model.Student;

public interface StudentDao {

	int insertStudent(Student student);

	int deleteStudent(int id);

	int updateStudent(Student student);

	List<Student> selectStudentByName(String name);

	Student selectStudentById(int id);

	List<Student> selectAllStudent();

	void delclass(int id);
}