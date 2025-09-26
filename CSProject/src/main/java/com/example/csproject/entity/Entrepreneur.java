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
@Table(name="entepreneur")
public class Entrepreneur {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long EntrepreneurKey;
    private String id;
    private String password;
    private String email;
    private String entrepreneur_name;
    private String company_name;
    private MemberRole role;

    public void patch(Entrepreneur entrepreneur) {
        if(entrepreneur.password != null) { this.password = entrepreneur.password; }
        if(entrepreneur.email != null) { this.email = entrepreneur.email; }
        if(entrepreneur.entrepreneur_name != null) { this.entrepreneur_name = entrepreneur.entrepreneur_name; }
        if(entrepreneur.company_name != null) { this.company_name = entrepreneur.company_name; }
    }
}
