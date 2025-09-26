package com.example.csproject.dto;

import com.example.csproject.entity.Pc_information_ram;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Pc_ramRequest {
    private Long itemKey;
    private String manufacturer;
    private String device;
    private String classification;
    private Long capacity;
    private String motion_clock;

    public Pc_information_ram toEntity() {
        Pc_information_ram.Pc_information_ramBuilder builder = Pc_information_ram.builder()
                .itemKey(this.itemKey)
                .manufacturer(this.manufacturer)
                .device(this.device)
                .classification(this.classification)
                .capacity(this.capacity)
                .motion_clock(this.motion_clock);
        return builder.build();
    }
}
