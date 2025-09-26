package com.example.csproject.repository;

import com.example.csproject.entity.Entrepreneur;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EntrepreneurRepository extends JpaRepository<Entrepreneur, Long> {
    boolean existsById(String id);
    Entrepreneur findById(String id);
}
