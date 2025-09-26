package com.example.csproject.dto;

import com.example.csproject.entity.Cart;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class CartRequest {
    private Long cnt;
    private Long custKey;
    private Long itemKey;

    public Cart toEntity() {
        Cart.CartBuilder builder = Cart.builder()
                .cnt(this.cnt)
                .custKey(this.custKey)
                .itemKey(this.itemKey);

        return builder.build();
    }
}
