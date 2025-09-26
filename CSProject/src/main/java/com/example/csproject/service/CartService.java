package com.example.csproject.service;

import com.example.csproject.dto.CartRequest;
import com.example.csproject.entity.Cart;
import com.example.csproject.repository.CartRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class CartService {

    private final CartRepository cartRepository;

    public Cart cartplus (CartRequest cartRequest) { return cartRepository.save(cartRequest.toEntity()); }


    public List<Long> list_custKey(Long custKey) { return cartRepository.findByCustKey(custKey); }

    public List<Cart> list_cart(Long custKey) { return cartRepository.findByCnt(custKey); }

    public Cart get_cart(Long cartKey) { return cartRepository.findById(cartKey).orElse(null); }


    public void delete_cart(Cart cart) {
        cartRepository.delete(cart);
    }

}
