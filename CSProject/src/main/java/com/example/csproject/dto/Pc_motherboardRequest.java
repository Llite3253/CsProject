package com.example.csproject.dto;

import com.example.csproject.entity.Pc_information_motherboard;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Pc_motherboardRequest {
    private Long itemKey;
    private String manufacturer;
    private String socket;
    private String detailed_chipset;
    private String form_factor;
    private String memory_type;
    private Long memory_slots;
    private Long m2;

    public Pc_information_motherboard toEntity() {
        Pc_information_motherboard.Pc_information_motherboardBuilder builder = Pc_information_motherboard.builder()
                .itemKey(this.itemKey)
                .manufacturer(this.manufacturer)
                .socket(this.socket)
                .detailed_chipset(this.detailed_chipset)
                .form_factor(this.form_factor)
                .memory_type(this.memory_type)
                .memory_slots(this.memory_slots)
                .m2(this.m2);
        return builder.build();
    }
}
