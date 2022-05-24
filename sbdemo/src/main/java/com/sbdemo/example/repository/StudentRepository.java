package com.sbdemo.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.sbdemo.example.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

}
