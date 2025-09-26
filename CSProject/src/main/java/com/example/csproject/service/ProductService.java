package com.example.csproject.service;

import com.example.csproject.dto.*;
import com.example.csproject.entity.*;
import com.example.csproject.repository.*;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class ProductService {

    @Autowired
    private PcInformationCpuRepositoryCustom pcInformationCpuRepositoryCustom;

    private final Pc_registerRepository pc_registerRepository;
    private final Pc_cpuRepository pc_cpuRepository;
    private final Pc_coolerRepository pc_coolerRepository;
    private final Pc_motherboardRepository pc_motherboardRepository;
    private final Pc_ramRepository pc_ramRepository;
    private final Pc_vgaRepository pc_vgaRepository;

    private final CommentsRepository commentsRepository;


    public Pc_major_part register(Pc_registerRequest pc_registerRequest) { return pc_registerRepository.save(pc_registerRequest.toEntity()); }

    public Pc_information_cpu register_cpu(Pc_cpuRequest pc_cpuRequest) { return pc_cpuRepository.save(pc_cpuRequest.toEntity()); }

    public Pc_information_motherboard register_motherboard(Pc_motherboardRequest pc_motherboardRequest) { return pc_motherboardRepository.save(pc_motherboardRequest.toEntity()); }

    public Pc_information_cooler register_cooler(Pc_coolerRequest pc_coolerRequest) { return pc_coolerRepository.save(pc_coolerRequest.toEntity()); }

    public Pc_information_ram register_ram(Pc_ramRequest pc_ramRequest) { return pc_ramRepository.save(pc_ramRequest.toEntity()); }

    public Pc_information_vga register_vga(Pc_vgaRequest pc_vgaRequest) { return pc_vgaRepository.save(pc_vgaRequest.toEntity()); }


    public List<Pc_major_part> list_product(int start, int end) { return pc_registerRepository.list_product(start, end); }

    public List<Pc_major_part> findCategory(String category) { return pc_registerRepository.findByCategory(category); }

    public List<Pc_major_part> findByEntrepreneurKey(Long entrepreneurKey) { return pc_registerRepository.findByEntrepreneurKey(entrepreneurKey); }

    public Pc_major_part getProduct(Long itemKey) { return pc_registerRepository.findById(itemKey).orElse(null); }

    public Pc_information_cpu getCpu(Long itemKey) { return pc_cpuRepository.findById(itemKey).orElse(null); }

    public Pc_information_motherboard getMotherboard(Long itemKey) { return pc_motherboardRepository.findById(itemKey).orElse(null); }

    public Pc_information_cooler getCooler(Long itemKey) { return pc_coolerRepository.findById(itemKey).orElse(null); }

    public Pc_information_ram getRam(Long itemKey) { return pc_ramRepository.findById(itemKey).orElse(null); }

    public Pc_information_vga getVga(Long itemKey) { return pc_vgaRepository.findById(itemKey).orElse(null); }

    public Integer getCount() { return pc_registerRepository.getCount(); }

    public Integer getCount_Category(String category) { return pc_registerRepository.getCount_Category(category); }


    public Pc_major_part update_Product(Long itemKey, Pc_registerRequest pc_registerRequest) {
        Pc_major_part target = pc_registerRepository.findById(itemKey).orElse(null);
        Pc_major_part pc_major_part = pc_registerRequest.toEntity();

        if(target == null) return null;

        target.patch(pc_major_part);
        return pc_registerRepository.save(target);
    }

    public Pc_information_cpu update_CPU(Long itemKey, Pc_cpuRequest pc_cpuRequest) {
        Pc_information_cpu target = pc_cpuRepository.findById(itemKey).orElse(null);
        Pc_information_cpu pc_information_cpu = pc_cpuRequest.toEntity();

        if(target == null || target.getItemKey() != pc_information_cpu.getItemKey()) return null;

        target.patch(pc_information_cpu);
        return pc_cpuRepository.save(target);
    }

    public Pc_information_motherboard update_Motherboard(Long itemKey, Pc_motherboardRequest pc_motherboardRequest) {
        Pc_information_motherboard target = pc_motherboardRepository.findById(itemKey).orElse(null);
        Pc_information_motherboard pc_information_motherboard = pc_motherboardRequest.toEntity();

        if(target == null || target.getItemKey() != pc_information_motherboard.getItemKey()) return null;

        target.patch(pc_information_motherboard);
        return pc_motherboardRepository.save(target);
    }

    public Pc_information_cooler update_Cooler(Long itemKey, Pc_coolerRequest pc_coolerRequest) {
        Pc_information_cooler target = pc_coolerRepository.findById(itemKey).orElse(null);
        Pc_information_cooler pc_information_cooler = pc_coolerRequest.toEntity();

        if(target == null || target.getItemKey() != pc_information_cooler.getItemKey()) return null;

        target.patch(pc_information_cooler);
        return pc_coolerRepository.save(target);
    }

    public Pc_information_ram update_Ram(Long itemKey, Pc_ramRequest pc_ramRequest) {
        Pc_information_ram target = pc_ramRepository.findById(itemKey).orElse(null);
        Pc_information_ram pc_information_ram = pc_ramRequest.toEntity();

        if(target == null || target.getItemKey() != pc_information_ram.getItemKey()) return null;

        target.patch(pc_information_ram);
        return pc_ramRepository.save(target);
    }

    public Pc_information_vga update_Vga(Long itemKey, Pc_vgaRequest pc_vgaRequest) {
        Pc_information_vga target = pc_vgaRepository.findById(itemKey).orElse(null);
        Pc_information_vga pc_information_vga = pc_vgaRequest.toEntity();

        if(target == null || target.getItemKey() != pc_information_vga.getItemKey()) return null;

        target.patch(pc_information_vga);
        return pc_vgaRepository.save(target);
    }


    public Pc_major_part delete_Product(Long itemKey) {
        Pc_major_part pc_major_part = pc_registerRepository.findById(itemKey).orElse(null);

        if(pc_major_part == null) return null;

        switch (pc_major_part.getCategory()) {
            case CPU -> {
                Pc_information_cpu pc_information_cpu = pc_cpuRepository.findById(itemKey).orElse(null);
                if(pc_information_cpu == null) return null;
                pc_cpuRepository.delete(pc_information_cpu);
            }
            case MotherBoard -> {
                Pc_information_motherboard pc_information_motherboard = pc_motherboardRepository.findById(itemKey).orElse(null);
                if(pc_information_motherboard == null) return null;
                pc_motherboardRepository.delete(pc_information_motherboard);
            }
            case Cooler -> {
                Pc_information_cooler pc_information_cooler = pc_coolerRepository.findById(itemKey).orElse(null);
                if(pc_information_cooler == null) return null;
                pc_coolerRepository.delete(pc_information_cooler);
            }
            case RAM -> {
                Pc_information_ram pc_information_ram = pc_ramRepository.findById(itemKey).orElse(null);
                if(pc_information_ram == null) return null;
                pc_ramRepository.delete(pc_information_ram);
            }
            case VGA -> {
                Pc_information_vga pc_information_vga = pc_vgaRepository.findById(itemKey).orElse(null);
                if(pc_information_vga == null) return null;
                pc_vgaRepository.delete(pc_information_vga);
            }
        }

        pc_registerRepository.delete(pc_major_part);
        return pc_major_part;
    }


    public List<Pc_major_part> findByItemKey(List<Long> itemKey) {
        return pc_registerRepository.findByItemKey(itemKey);
    }

    public List<Long> findByTypes(Long category, Map<String, List<String>> params) {
        return pcInformationCpuRepositoryCustom.findByTypes(category, params);
    }


    public Comments write(CommentsRequest commentsRequest) { return commentsRepository.save(commentsRequest.toEntity()); }

    public List<Comments> read(Long itemKey) { return commentsRepository.findByItemKey(itemKey); }
}
