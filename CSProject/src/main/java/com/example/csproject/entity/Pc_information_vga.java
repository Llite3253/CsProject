package com.example.csproject.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Builder
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Table(name="pc_information_vga")
public class Pc_information_vga {
    @Id
    private Long itemKey;
    private String manufacturer;
    private String chipset;
    private String detailed_chipset;
    private Long memory_capacity;
    private Long fan_number;

    public void patch(Pc_information_vga pc_information_vga) {
        if(pc_information_vga.manufacturer != null) {
            this.manufacturer = pc_information_vga.manufacturer;
        }
        if(pc_information_vga.chipset != null) {
            this.chipset = pc_information_vga.chipset;
        }
        if(pc_information_vga.detailed_chipset != null) {
            this.detailed_chipset = pc_information_vga.detailed_chipset;
        }
        if(pc_information_vga.memory_capacity != null) {
            this.memory_capacity = pc_information_vga.memory_capacity;
        }
        if(pc_information_vga.fan_number != null) {
            this.fan_number = pc_information_vga.fan_number;
        }
    }
}
