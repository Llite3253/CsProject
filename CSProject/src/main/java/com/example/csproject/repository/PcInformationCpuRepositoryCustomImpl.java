package com.example.csproject.repository;

import com.example.csproject.entity.*;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Slf4j
@Repository
public class PcInformationCpuRepositoryCustomImpl implements PcInformationCpuRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<Long> findByTypes(Long category, Map<String, List<String>> params) {
        List<String> checkedValues = params.get("checkedValues");
        List<String> checkedName = params.get("checkedName");

        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<Long> query = cb.createQuery(Long.class);

        Root<?> root = null;

        if(category == 0) {
            root = query.from(Pc_information_cpu.class);
        } else if(category == 1) {
            root = query.from(Pc_information_ram.class);
        } else if(category == 2) {
            root = query.from(Pc_information_motherboard.class);
        } else if(category == 3) {
            root = query.from(Pc_information_cooler.class);
        } else if(category == 4) {
            root = query.from(Pc_information_vga.class);
        }


        Predicate predicate = createPredicate(cb, root, checkedName, checkedValues);

        query.select(root.get("itemKey")).where(predicate);

        return entityManager.createQuery(query).getResultList();
    }

    private Predicate createPredicate(CriteriaBuilder cb, Root<?> root, List<String> checkedName, List<String> checkedValues) {
        Predicate predicate = cb.conjunction();
        for (String name : checkedName) {
            if (root.get(name) != null) {
                predicate = cb.and(predicate, root.get(name).in(checkedValues));
            }
        }
        return predicate;
    }
}