package com.example.csproject.dto;

import com.example.csproject.entity.Entrepreneur;
import com.example.csproject.entity.MemberRole;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class E_JoinRequest {
    private String id;
    private String password;
    private String email;
    private String email1;
    private String email2;
    private String entrepreneur_name;
    private String company_name;

    public Entrepreneur toEntity() {
        Entrepreneur.EntrepreneurBuilder builder = Entrepreneur.builder()
                .id(this.id)
                .password(this.password)
                .email(this.email)
                .entrepreneur_name(this.entrepreneur_name)
                .company_name(this.company_name)
                .role(MemberRole.Entepreneur);

        if(this.email1 != null && this.email2 != null) {
            builder.email(this.email1 + "@" + this.email2);
        }
        else {
            builder.email(this.email);
        }

        return builder.build();
    }
}
