package com.codegym.service.impl;

import com.codegym.entity.Student;
import com.codegym.service.StudentService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@Service
public class StudentServiceImpl implements StudentService {

    private static Map<Integer, Student> studentMap;

    static {
        studentMap = new TreeMap<>();
        studentMap.put(242, new Student(242, "Din", "14/10/2020"));
        studentMap.put(742, new Student(742, "Din1", "14/11/2020"));
        studentMap.put(142, new Student(142, "Din2", "14/12/2020"));
    }

    @Override
    public List<Student> findAll() {
        return new ArrayList<>(studentMap.values());
    }

    @Override
    public Student findById(Integer id) {
        return studentMap.get(id);
    }

    @Override
    public void save(Student student) {
        Integer idRandom = (int) (Math.random() * 1000);
        student.setId(idRandom);

        studentMap.put(idRandom, student);
    }
}
