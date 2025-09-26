package com.example.csproject.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.Date;

@Entity
@Builder
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Table(name="pc_major_part")
public class Pc_major_part {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long itemKey;
    private Category category;
    private Long entrepreneurKey;
    private String name;
    private String img1;
    private String img2;
    private String img3;
    private String img4;
    private String img5;
    private String content;
    private Long price;
    private LocalDate rdate;
    private Long cnt;

    public void patch(Pc_major_part pc_major_part) {
        if(pc_major_part.name != null) {
            this.name = pc_major_part.name;
        }
        if(pc_major_part.content != null) {
            this.content = pc_major_part.content;
        }
        if(pc_major_part.price != null) {
            this.price = pc_major_part.price;
        }
        if(pc_major_part.cnt != null) {
            this.cnt = pc_major_part.cnt;
        }

        if(pc_major_part.img1 != null) {
            this.img1 = pc_major_part.img1;
        }
        if(pc_major_part.img2 != null) {
            this.img2 = pc_major_part.img2;
        }
        if(pc_major_part.img3 != null) {
            this.img3 = pc_major_part.img3;
        }
        if(pc_major_part.img4 != null) {
            this.img4 = pc_major_part.img4;
        }
        if(pc_major_part.img5 != null) {
            this.img5 = pc_major_part.img5;
        }
    }
}
