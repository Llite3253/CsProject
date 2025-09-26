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
@Table(name="pc_information_cooler")
public class Pc_information_cooler {
    @Id
    private Long itemKey;
    private String manufacturer;
    private String cooling_system;
    private Long height;
    private Long radiator;
    private Long fan_size;

    public void patch(Pc_information_cooler pc_information_cooler) {
        if(pc_information_cooler.manufacturer != null) {
            this.manufacturer = pc_information_cooler.manufacturer;
        }
        if(pc_information_cooler.cooling_system != null) {
            this.cooling_system = pc_information_cooler.cooling_system;
        }
        if(pc_information_cooler.height != null) {
            this.height = pc_information_cooler.height;
        }
        if(pc_information_cooler.radiator != null) {
            this.radiator = pc_information_cooler.radiator;
        }
        if(pc_information_cooler.fan_size != null) {
            this.fan_size = pc_information_cooler.fan_size;
        }
    }
}
