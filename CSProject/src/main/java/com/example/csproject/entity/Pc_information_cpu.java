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
@Table(name="pc_information_cpu")
public class Pc_information_cpu {
    @Id
    private Long itemKey;
    private String manufacturer;
    private String type;
    private String socket;
    private String core;
    private String thread;

    public void patch(Pc_information_cpu pc_information_cpu) {
        if(pc_information_cpu.manufacturer != null) {
            this.manufacturer = pc_information_cpu.manufacturer;
        }
        if(pc_information_cpu.type != null) {
            this.type = pc_information_cpu.type;
        }
        if(pc_information_cpu.socket != null) {
            this.socket = pc_information_cpu.socket;
        }
        if(pc_information_cpu.core != null) {
            this.core = pc_information_cpu.core;
        }
        if(pc_information_cpu.thread != null) {
            this.thread = pc_information_cpu.thread;
        }
    }
}
