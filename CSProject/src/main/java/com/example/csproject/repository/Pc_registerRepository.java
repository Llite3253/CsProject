package com.example.csproject.repository;

import com.example.csproject.entity.Pc_information_cpu;
import com.example.csproject.entity.Pc_major_part;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface Pc_registerRepository extends JpaRepository<Pc_major_part, Long> {

    @Query(value = "select * from pc_major_part order by item_Key asc LIMIT :end OFFSET :start", nativeQuery = true)
    List<Pc_major_part> list_product(int start, int end);

    @Query(value = "select * from pc_major_part where category = :category", nativeQuery = true)
    List<Pc_major_part> findByCategory(String category);

    @Query(value = "select * from pc_major_part where entrepreneur_key = :entrepreneurKey", nativeQuery = true)
    List<Pc_major_part> findByEntrepreneurKey(Long entrepreneurKey);

    @Query(value = "select * from pc_major_part where item_Key IN :itemKey", nativeQuery = true)
    List<Pc_major_part> findByItemKey(List<Long> itemKey);

    @Query(value = "select count(*) from pc_major_part", nativeQuery = true)
    Integer getCount();

    @Query(value = "select count(*) from pc_major_part where category = :category", nativeQuery = true)
    Integer getCount_Category(String category);
}
