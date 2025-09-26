package com.example.csproject.dto;

import com.example.csproject.entity.Pc_information_cooler;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Pc_coolerRequest {
    private Long itemKey;
    private String manufacturer;
    private String cooling_system;
    private Long height;
    private Long radiator;
    private Long fan_size;

    public Pc_information_cooler toEntity() {
        Pc_information_cooler.Pc_information_coolerBuilder builder = Pc_information_cooler.builder()
                .itemKey(this.itemKey)
                .manufacturer(this.manufacturer)
                .cooling_system(this.cooling_system)
                .height(this.height)
                .radiator(this.radiator)
                .fan_size(this.fan_size);
        return builder.build();
    }
}
