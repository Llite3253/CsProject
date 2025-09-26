package com.example.csproject.repository;

import com.example.csproject.entity.Pc_information_cpu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface Pc_cpuRepository extends JpaRepository<Pc_information_cpu, Long> {

}
