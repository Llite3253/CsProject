package com.example.csproject.dto;

import com.example.csproject.entity.Pc_information_vga;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Pc_vgaRequest {
    private Long itemKey;
    private String manufacturer;
    private String chipset;
    private String detailed_chipset;
    private Long memory_capacity;
    private Long fan_number;

    public Pc_information_vga toEntity() {
        Pc_information_vga.Pc_information_vgaBuilder builder = Pc_information_vga.builder()
                .itemKey(this.itemKey)
                .manufacturer(this.manufacturer)
                .chipset(this.chipset)
                .detailed_chipset(this.detailed_chipset)
                .memory_capacity(this.memory_capacity)
                .fan_number(this.fan_number);
        return builder.build();
    }
}
