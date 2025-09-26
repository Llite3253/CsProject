package com.example.csproject.repository;

import com.example.csproject.entity.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CartRepository extends JpaRepository<Cart, Long> {

    @Query(value = "select item_key from cart where cust_key = :custKey", nativeQuery = true)
    List<Long> findByCustKey(Long custKey);

    @Query(value = "select * from cart where cust_key = :custKey", nativeQuery = true)
    List<Cart> findByCnt(Long custKey);

}
