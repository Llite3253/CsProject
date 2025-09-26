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
@Table(name="pc_information_motherboard")
public class Pc_information_motherboard {
    @Id
    private Long itemKey;
    private String manufacturer;
    private String socket;
    private String detailed_chipset;
    private String form_factor;
    private String memory_type;
    private Long memory_slots;
    private Long m2;

    public void patch(Pc_information_motherboard pc_information_motherboard) {
        if(pc_information_motherboard.manufacturer != null) {
            this.manufacturer = pc_information_motherboard.manufacturer;
        }
        if(pc_information_motherboard.socket != null) {
            this.socket = pc_information_motherboard.socket;
        }
        if(pc_information_motherboard.detailed_chipset != null) {
            this.detailed_chipset = pc_information_motherboard.detailed_chipset;
        }
        if(pc_information_motherboard.form_factor != null) {
            this.form_factor = pc_information_motherboard.form_factor;
        }
        if(pc_information_motherboard.memory_type != null) {
            this.memory_type = pc_information_motherboard.memory_type;
        }
        if(pc_information_motherboard.memory_slots != null) {
            this.memory_slots = pc_information_motherboard.memory_slots;
        }
        if(pc_information_motherboard.m2 != null) {
            this.m2 = pc_information_motherboard.m2;
        }
    }
}
