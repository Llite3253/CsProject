package com.example.csproject.service;

import com.example.csproject.dto.E_JoinRequest;
import com.example.csproject.dto.LoginRequest;
import com.example.csproject.entity.Entrepreneur;
import com.example.csproject.repository.EntrepreneurRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@Transactional
@RequiredArgsConstructor
public class EntrepreneurService {

    private final EntrepreneurRepository entrepreneurRepository;

    public Entrepreneur getLoginEntrepreneurById(String id) {
        if(id == null) return null;
        Entrepreneur member = entrepreneurRepository.findById(id);
        if(member == null) return null;
        return member;
    }

    public Entrepreneur e_join(E_JoinRequest e_joinRequest) {
        return entrepreneurRepository.save(e_joinRequest.toEntity());
    }

    public Entrepreneur e_login(LoginRequest loginRequest) {
        Entrepreneur member = entrepreneurRepository.findById(loginRequest.getId());
        if(member == null) return null;
        if(!member.getPassword().equals(loginRequest.getPassword())) return null;
        return member;
    }

    public Entrepreneur e_update(Entrepreneur entrepreneur, E_JoinRequest e_joinRequest) {
        if(entrepreneur == null) return null;
        entrepreneur.patch(e_joinRequest.toEntity());
        return entrepreneurRepository.save(entrepreneur);
    }

    public Entrepreneur e_delete(Entrepreneur entrepreneur) {
        if(entrepreneur == null) return null;
        entrepreneurRepository.delete(entrepreneur);
        return entrepreneur;
    }
}
