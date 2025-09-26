package com.example.csproject.dto;

import com.example.csproject.entity.Comments;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
public class CommentsRequest {
    private Long custKey;
    private Long itemKey;
    private String ntype;
    private LocalDate rdate;
    private String content;
    private String nick_name;

    public Comments toEntity() {
        Comments.CommentsBuilder builder  = Comments.builder()
                .custKey(this.custKey)
                .itemKey(this.itemKey)
                .ntype(this.ntype)
                .rdate(this.rdate)
                .content(this.content)
                .nick_name(this.nick_name);

        return builder.build();
    }
}
