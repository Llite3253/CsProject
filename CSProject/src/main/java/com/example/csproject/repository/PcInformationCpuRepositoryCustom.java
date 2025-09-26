package com.example.csproject.repository;

import com.example.csproject.entity.Pc_information_cpu;

import java.util.List;
import java.util.Map;

public interface PcInformationCpuRepositoryCustom {
    List<Long> findByTypes(Long category, Map<String, List<String>> params);
}
