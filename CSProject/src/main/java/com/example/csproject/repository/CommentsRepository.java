package com.example.csproject.repository;

import com.example.csproject.entity.Comments;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CommentsRepository extends JpaRepository<Comments, Long> {

    @Query(value = "select * from comments where item_key = :itemKey", nativeQuery = true)
    List<Comments> findByItemKey(Long itemKey);
}
