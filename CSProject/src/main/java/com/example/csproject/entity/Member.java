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
@Table(name="customer")
public class Member {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long custKey;
    private String id;
    private String password;
    private String nick_name;
    private String email;
    private String ban;
    private String singout;
    private MemberRole role;

    public void patch(Member member) {
        if(member.password != null) { this.password = member.password; }
        if(member.email != null) { this.email = member.email; }
        if(member.nick_name != null) { this.nick_name = member.nick_name; }
    }

}
