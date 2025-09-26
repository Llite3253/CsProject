package com.example.csproject.dto;

import com.example.csproject.entity.Pc_information_cpu;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Pc_cpuRequest {
    private Long itemKey;
    private String manufacturer;
    private String type;
    private String socket;
    private String core;
    private String thread;

    public Pc_information_cpu toEntity() {
        Pc_information_cpu.Pc_information_cpuBuilder builder = Pc_information_cpu.builder()
                .itemKey(this.itemKey)
                .manufacturer(this.manufacturer)
                .type(this.type)
                .socket(this.socket)
                .core(this.core)
                .thread(this.thread);
        return builder.build();
    }
}
