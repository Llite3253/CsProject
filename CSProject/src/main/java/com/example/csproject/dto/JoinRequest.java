package com.example.csproject.dto;

import com.example.csproject.entity.Member;
import com.example.csproject.entity.MemberRole;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class JoinRequest {
    private String id;
    private String password;
    private String passwordCheck;
    private String nick_name;
    private String email;
    private String email1;
    private String email2;

    public Member toEntity() {
        Member.MemberBuilder builder = Member.builder()
                .id(this.id)
                .password(this.password)
                .nick_name(this.nick_name)
                .ban("N")
                .singout("N")
                .role(MemberRole.USER);

        if(this.email1 != null && this.email2 != null) {
            builder.email(this.email1 + "@" + this.email2);
        }
        else {
            builder.email(this.email);
        }

        return builder.build();
    }
}
