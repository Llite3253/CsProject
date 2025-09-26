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
@Table(name="pc_information_ram")
public class Pc_information_ram {
    @Id
    private Long itemKey;
    private String manufacturer;
    private String device;
    private String classification;
    private Long capacity;
    private String motion_clock;

    public void patch(Pc_information_ram pc_information_ram) {
        if(pc_information_ram.manufacturer != null) {
            this.manufacturer = pc_information_ram.manufacturer;
        }
        if(pc_information_ram.device != null) {
            this.device = pc_information_ram.device;
        }
        if(pc_information_ram.classification != null) {
            this.classification = pc_information_ram.classification;
        }
        if(pc_information_ram.capacity != null) {
            this.capacity = pc_information_ram.capacity;
        }
        if(pc_information_ram.motion_clock != null) {
            this.motion_clock = pc_information_ram.motion_clock;
        }
    }
}
