package com.example.csproject.dto;

import com.example.csproject.entity.Category;
import com.example.csproject.entity.Pc_major_part;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class Pc_registerRequest {
    private String name;
    private String content;
    private Long price;
    private Long cnt;

    private String image1;
    private String image2;
    private String image3;
    private String image4;
    private String image5;

    private String select;
    private Long entrepreneurKey;
    private LocalDate date;

    public Pc_major_part toEntity() {
        Pc_major_part.Pc_major_partBuilder builder = Pc_major_part.builder()
                .name(this.name)
                .content(this.content)
                .price(this.price)
                .cnt(this.cnt)
                .img1(this.image1)
                .img2(this.image2)
                .img3(this.image3)
                .img4(this.image4)
                .img5(this.image5)
                .rdate(this.date)
                .entrepreneurKey(this.getEntrepreneurKey());

        if(this.select.equals("cpu")) {
            builder.category(Category.CPU);
        } else if(this.select.equals("mb")) {
            builder.category(Category.MotherBoard);
        } else if(this.select.equals("cooler")) {
            builder.category(Category.Cooler);
        } else if(this.select.equals("ram")) {
            builder.category(Category.RAM);
        } else if(this.select.equals("vga")) {
            builder.category(Category.VGA);
        }

        return builder.build();
    }
}
