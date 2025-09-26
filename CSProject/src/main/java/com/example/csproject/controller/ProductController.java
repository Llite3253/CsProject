package com.example.csproject.controller;

import com.example.csproject.dto.*;
import com.example.csproject.entity.*;
import com.example.csproject.service.EntrepreneurService;
import com.example.csproject.service.MemberService;
import com.example.csproject.service.ProductService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.text.SimpleDateFormat;
import java.time.LocalDate;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private EntrepreneurService entrepreneurService;
    @Autowired
    private ProductService productService;
    @Autowired
    private MemberService memberService;

    @GetMapping("/product_home")
    public String product_home(Model model, HttpSession session) {
        if(session.getAttribute("memberId") == null) {
            return "redirect:/member/login";
        }

        Entrepreneur entrepreneur = entrepreneurService.getLoginEntrepreneurById(session.getAttribute("memberId").toString());

        List<Pc_major_part> list = productService.findByEntrepreneurKey(entrepreneur.getEntrepreneurKey());
        model.addAttribute("list", list);

        return "product/product_home";
    }

    @GetMapping("/registration")
    public String registration_page(Model model) {
        model.addAttribute("Pc_registerRequest", new Pc_registerRequest());
        model.addAttribute("Pc_cpuRequest", new Pc_cpuRequest());
        model.addAttribute("Pc_ramRequest", new Pc_ramRequest());
        model.addAttribute("Pc_motherboardRequest", new Pc_motherboardRequest());
        model.addAttribute("Pc_coolerRequest", new Pc_coolerRequest());
        model.addAttribute("Pc_vgaRequest", new Pc_vgaRequest());

        return "product/product_register";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute Pc_registerRequest pc_registerRequest, @ModelAttribute Pc_cpuRequest pc_cpuRequest,
                               @ModelAttribute Pc_ramRequest pc_ramRequest, @ModelAttribute Pc_motherboardRequest pc_motherboardRequest,
                               @ModelAttribute Pc_coolerRequest pc_coolerRequest, @ModelAttribute Pc_vgaRequest pc_vgaRequest, @RequestParam String select,
                               HttpSession session, HttpServletRequest req) throws IOException {

        if(session.getAttribute("memberId") == null) {
            return "redirect:/member/login";
        }

        Entrepreneur entrepreneur = entrepreneurService.getLoginEntrepreneurById(session.getAttribute("memberId").toString());

        LocalDate now = LocalDate.now();
        pc_registerRequest.setDate(now);

        pc_registerRequest.setEntrepreneurKey(entrepreneur.getEntrepreneurKey());
        pc_registerRequest.setSelect(select);

        MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
        String upPath = req.getServletContext().getRealPath("/img/upload");
        File uploadDir = new File(upPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs(); // 업로드 디렉토리가 존재하지 않으면 생성합니다
        }

        List<String> filenames = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String[] imageParams = {"img1", "img2", "img3", "img4", "img5"};

        for (String param : imageParams) {
            MultipartFile file = mr.getFile(param);
            if (file != null && !file.isEmpty()) {
                String originalFilename = file.getOriginalFilename();
                String extension = "";
                int dotIndex = originalFilename.lastIndexOf(".");
                if (dotIndex > 0 && dotIndex < originalFilename.length() - 1) {
                    extension = originalFilename.substring(dotIndex);
                    originalFilename = originalFilename.substring(0, dotIndex);
                }

                String timestamp = dateFormat.format(new Date());
                String filename = originalFilename + "_" + timestamp + extension;

                File serverFile = new File(upPath, filename);
                file.transferTo(serverFile);
                filenames.add(filename);
            } else {
                filenames.add(null); // 선택되지 않은 파일의 경우 null 추가
            }
        }

        // 파일 이름들을 Pc_registerRequest 객체에 설정합니다
        pc_registerRequest.setImage1(filenames.size() > 0 ? filenames.get(0) : null);
        pc_registerRequest.setImage2(filenames.size() > 1 ? filenames.get(1) : null);
        pc_registerRequest.setImage3(filenames.size() > 2 ? filenames.get(2) : null);
        pc_registerRequest.setImage4(filenames.size() > 3 ? filenames.get(3) : null);
        pc_registerRequest.setImage5(filenames.size() > 4 ? filenames.get(4) : null);

        Pc_major_part pcMajorPart = productService.register(pc_registerRequest);

        switch (select) {
            case "cpu" -> {
                pc_cpuRequest.setItemKey(pcMajorPart.getItemKey());
                productService.register_cpu(pc_cpuRequest);
            }
            case "mb" -> {
                pc_motherboardRequest.setItemKey(pcMajorPart.getItemKey());
                productService.register_motherboard(pc_motherboardRequest);
            }
            case "cooler" -> {
                pc_coolerRequest.setItemKey(pcMajorPart.getItemKey());
                productService.register_cooler(pc_coolerRequest);
            }
            case "ram" -> {
                pc_ramRequest.setItemKey(pcMajorPart.getItemKey());
                productService.register_ram(pc_ramRequest);
            }
            case "vga" -> {
                pc_vgaRequest.setItemKey(pcMajorPart.getItemKey());
                productService.register_vga(pc_vgaRequest);
            }
        }

        return "redirect:/shop";
    }

    @GetMapping("/info/{itemKey}")
    public String info(@PathVariable Long itemKey, Model model) {
        Pc_major_part pc_major_part = productService.getProduct(itemKey);
        model.addAttribute("product", pc_major_part);

        String category = pc_major_part.getCategory().toString();

        switch (category) {
            case "CPU" -> {
                Pc_information_cpu pc_information_cpu = productService.getCpu(itemKey);
                model.addAttribute("product_info", pc_information_cpu);
            }
            case "MotherBoard" -> {
                Pc_information_motherboard pc_information_motherboard = productService.getMotherboard(itemKey);
                model.addAttribute("product_info", pc_information_motherboard);
            }
            case "Cooler" -> {
                Pc_information_cooler pc_information_cooler = productService.getCooler(itemKey);
                model.addAttribute("product_info", pc_information_cooler);
            }
            case "RAM" -> {
                Pc_information_ram pc_information_ram = productService.getRam(itemKey);
                model.addAttribute("product_info", pc_information_ram);
            }
            case "VGA" -> {
                Pc_information_vga pc_information_vga = productService.getVga(itemKey);
                model.addAttribute("product_info", pc_information_vga);
            }
        }

        return "product/product_single";
    }

    @GetMapping("/update/{itemKey}")
    public String update_page(Model model, @PathVariable Long itemKey) {
        Pc_major_part pc_major_part = productService.getProduct(itemKey);
        model.addAttribute("product", pc_major_part);

        String category = pc_major_part.getCategory().toString();

        switch (category) {
            case "CPU" -> {
                Pc_information_cpu pc_information_cpu = productService.getCpu(itemKey);
                model.addAttribute("product_info", pc_information_cpu);
            }
            case "MotherBoard" -> {
                Pc_information_motherboard pc_information_motherboard = productService.getMotherboard(itemKey);
                model.addAttribute("product_info", pc_information_motherboard);
            }
            case "Cooler" -> {
                Pc_information_cooler pc_information_cooler = productService.getCooler(itemKey);
                model.addAttribute("product_info", pc_information_cooler);
            }
            case "RAM" -> {
                Pc_information_ram pc_information_ram = productService.getRam(itemKey);
                model.addAttribute("product_info", pc_information_ram);
            }
            case "VGA" -> {
                Pc_information_vga pc_information_vga = productService.getVga(itemKey);
                model.addAttribute("product_info", pc_information_vga);
            }
        }

        model.addAttribute("Pc_registerRequest", new Pc_registerRequest());
        model.addAttribute("Pc_cpuRequest", new Pc_cpuRequest());
        model.addAttribute("Pc_ramRequest", new Pc_ramRequest());
        model.addAttribute("Pc_motherboardRequest", new Pc_motherboardRequest());
        model.addAttribute("Pc_coolerRequest", new Pc_coolerRequest());
        model.addAttribute("Pc_vgaRequest", new Pc_vgaRequest());

        return "product/product_update";
    }

    @PostMapping("/update")
    public String update(Model model, @ModelAttribute Pc_registerRequest pc_registerRequest, @ModelAttribute Pc_cpuRequest pc_cpuRequest,
                         @ModelAttribute Pc_ramRequest pc_ramRequest, @ModelAttribute Pc_motherboardRequest pc_motherboardRequest,
                         @ModelAttribute Pc_coolerRequest pc_coolerRequest, @ModelAttribute Pc_vgaRequest pc_vgaRequest,
                         @RequestParam Long itemKey, @RequestParam String select, HttpServletRequest req) throws IOException {

        Pc_major_part pc_major_part = productService.getProduct(itemKey);

        MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
        String upPath = req.getServletContext().getRealPath("/img/upload");
        File uploadDir = new File(upPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs(); // 업로드 디렉토리가 존재하지 않으면 생성합니다
        }

        String[] oldImageFiles = { pc_major_part.getImg1(), pc_major_part.getImg2(), pc_major_part.getImg3(), pc_major_part.getImg4(), pc_major_part.getImg5() };

        List<String> filenames = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String[] imageParams = {"img1", "img2", "img3", "img4", "img5"};

        for (int i = 0; i < imageParams.length; i++) {
            MultipartFile file = mr.getFile(imageParams[i]);
            if (file != null && !file.isEmpty()) {
                String originalFilename = file.getOriginalFilename();
                String extension = "";
                int dotIndex = originalFilename.lastIndexOf(".");
                if (dotIndex > 0 && dotIndex < originalFilename.length() - 1) {
                    extension = originalFilename.substring(dotIndex);
                    originalFilename = originalFilename.substring(0, dotIndex);
                }

                String timestamp = dateFormat.format(new Date());
                String newFilename = originalFilename + "_" + timestamp + extension;

                // 기존 파일과 새 파일을 비교하여 다르면 기존 파일 삭제
                if (oldImageFiles[i] != null && !oldImageFiles[i].equals(newFilename)) {
                    File oldFile = new File(upPath, oldImageFiles[i]);
                    if (oldFile.exists()) {
                        oldFile.delete();
                    }
                }

                File serverFile = new File(upPath, newFilename);
                file.transferTo(serverFile);
                filenames.add(newFilename);
            } else {
                filenames.add(null); // 선택되지 않은 파일의 경우 null 추가
            }
        }

        // 파일 이름들을 Pc_registerRequest 객체에 설정합니다
        pc_registerRequest.setImage1(filenames.size() > 0 ? filenames.get(0) : null);
        pc_registerRequest.setImage2(filenames.size() > 1 ? filenames.get(1) : null);
        pc_registerRequest.setImage3(filenames.size() > 2 ? filenames.get(2) : null);
        pc_registerRequest.setImage4(filenames.size() > 3 ? filenames.get(3) : null);
        pc_registerRequest.setImage5(filenames.size() > 4 ? filenames.get(4) : null);

        Pc_major_part pc_major_part_update = productService.update_Product(itemKey, pc_registerRequest);

        switch (select) {
            case "cpu" -> {
                Pc_information_cpu pc_information_cpu = productService.update_CPU(itemKey, pc_cpuRequest);
            }
            case "mb" -> {
                Pc_information_motherboard pc_information_motherboard = productService.update_Motherboard(itemKey, pc_motherboardRequest);
            }
            case "cooler" -> {
                Pc_information_cooler pc_information_cooler = productService.update_Cooler(itemKey, pc_coolerRequest);
            }
            case "ram" -> {
                Pc_information_ram pc_information_ram = productService.update_Ram(itemKey, pc_ramRequest);
            }
            case "vga" -> {
                Pc_information_vga pc_information_vga = productService.update_Vga(itemKey, pc_vgaRequest);
            }
        }

        return "redirect:/product/product_home";
    }

    @GetMapping("/delete/{itemKey}")
    public String delete(@PathVariable Long itemKey, HttpSession session, HttpServletRequest req) {
        if(session.getAttribute("memberId") == null) {
            return "redirect:/member/login";
        }

        Pc_major_part pc_major_part = productService.getProduct(itemKey);
        if(pc_major_part == null) {
            return "redirect:/product/product_home";
        };

        String[] oldImageFiles = { pc_major_part.getImg1(), pc_major_part.getImg2(), pc_major_part.getImg3(), pc_major_part.getImg4(), pc_major_part.getImg5() };
        String upPath = req.getServletContext().getRealPath("/img/upload");

        for (String oldImageFile : oldImageFiles) {
            if (oldImageFile != null && !oldImageFile.isEmpty()) {
                File oldFile = new File(upPath, oldImageFile);
                if (oldFile.exists()) {
                    boolean deleted = oldFile.delete();
                    if (!deleted) {
                        // 파일 삭제 실패 처리 (예: 로그 기록)
                        System.err.println("Failed to delete file: " + oldImageFile);
                    }
                }
            }
        }

        productService.delete_Product(itemKey);
        return "redirect:/product/product_home";
    }

    @PostMapping("/search/{category}")
    @ResponseBody
    public List<Pc_major_part> search(@PathVariable Long category, @RequestBody Map<String, List<String>> request) {
        List<Long> itemKey = List.of();

        itemKey = productService.findByTypes(category, request);

        return productService.findByItemKey(itemKey);
    }

    @PostMapping("/comments")
    @ResponseBody
    public String comments(@RequestBody Map<String, String> request, HttpSession session) {
        if(session.getAttribute("memberId") == null) return "no";

        CommentsRequest commentsRequest = new CommentsRequest();

        if(session.getAttribute("option") != null) {
            Entrepreneur entrepreneur = entrepreneurService.getLoginEntrepreneurById(session.getAttribute("memberId").toString());
            if (entrepreneur == null) {
                return "no";
            }
            commentsRequest.setCustKey(entrepreneur.getEntrepreneurKey());
            commentsRequest.setNick_name(entrepreneur.getCompany_name());
        }
        else {
            Member member = memberService.getLoginMemberById(session.getAttribute("memberId").toString());
            if (member == null) {
                return "no";
            }
            commentsRequest.setCustKey(member.getCustKey());
            commentsRequest.setNick_name(member.getNick_name());
        }

        commentsRequest.setItemKey(Long.valueOf(request.get("itemKey").toString()));
        commentsRequest.setNtype(request.get("ntype").toString());
        commentsRequest.setContent(request.get("content").toString());
        commentsRequest.setRdate(LocalDate.now());

        productService.write(commentsRequest);

        return "ok";
    }

}
