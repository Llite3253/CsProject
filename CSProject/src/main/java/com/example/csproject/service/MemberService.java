package com.example.csproject.service;

import com.example.csproject.dto.E_JoinRequest;
import com.example.csproject.dto.JoinRequest;
import com.example.csproject.dto.LoginRequest;
import com.example.csproject.entity.Entrepreneur;
import com.example.csproject.entity.Member;
import com.example.csproject.repository.EntrepreneurRepository;
import com.example.csproject.repository.MemberRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@Transactional
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;

    public boolean idCheck(String id) {
        return memberRepository.existsById(id);
    }

    public Member getLoginMemberById(String id) {
        if(id == null) return null;
        Member member = memberRepository.findById(id);
        if(member == null) return null;
        return member;
    }

    public Member join(JoinRequest joinRequest) {
        return memberRepository.save(joinRequest.toEntity());
    }

    public Member login(LoginRequest loginRequest) {
        Member member = memberRepository.findById(loginRequest.getId());
        if(member == null) return null;
        if(!member.getPassword().equals(loginRequest.getPassword())) return null;
        return member;
    }

    public Member update(Member member, JoinRequest joinRequest) {
        if(member == null)  return null;
        member.patch(joinRequest.toEntity());
        return memberRepository.save(member);
    }

    public Member delete(Member member) {
        if(member == null) return null;
        memberRepository.delete(member);
        return member;
    }

}
