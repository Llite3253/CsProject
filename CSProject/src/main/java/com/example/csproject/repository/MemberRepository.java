package com.example.csproject.repository;

import com.example.csproject.entity.Member;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MemberRepository extends JpaRepository<Member, Long> {
    boolean existsById(String id);
    Member findById(String id);
}
