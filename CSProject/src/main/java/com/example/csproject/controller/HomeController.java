package com.example.csproject.controller;

import com.example.csproject.entity.*;
import com.example.csproject.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HomeController {

    private static final Logger log = LoggerFactory.getLogger(HomeController.class);
    @Autowired
    private ProductService productService;

//    @GetMapping("/")
//    public String home() {
//        return "main";
//    }

    @GetMapping({"/","/shop", "/shop/{category}"})
    public String shop(Model model, @PathVariable(value = "category", required = false) String category,
                    @RequestParam(value = "pageNum", required = false) String pageNum) {
        List<Pc_major_part> list;

        int pageSize = 8;
        if(pageNum == null) pageNum = "1";
        int currentPage = Integer.parseInt(pageNum);
        int startRow = (currentPage - 1) * pageSize;
        int endRow = startRow + pageSize;
        int count;

        if(category == null) {
            count = productService.getCount();
        } else {
            count = productService.getCount_Category(category);
        }

        if(endRow > count) endRow = count;

        if (category == null) {
            list = productService.list_product(startRow, endRow);
        } else {
            list = productService.findCategory(category);
        }

        if(count > 0) {
            int pageCount = count / pageSize + (count%pageSize == 0 ? 0 : 1);//2
            int pageBlock = 3;
            int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
            int endPage = startPage + pageBlock - 1;
            if(endPage > pageCount) endPage = pageCount;

            model.addAttribute("count", count);
            model.addAttribute("pageCount", pageCount);
            model.addAttribute("pageBlock", pageBlock);
            model.addAttribute("startPage", startPage);
            model.addAttribute("endPage", endPage);
        }

        model.addAttribute("list_product", list);
        model.addAttribute("category", category);
        return "shop";
    }

//    @GetMapping("/contact")
//    public String contact() { return "contact"; }

    @GetMapping("/shop-single/{itemKey}")
    public String shop_single(@PathVariable Long itemKey, Model model) {
        Pc_major_part pc_major_part = productService.getProduct(itemKey);
        model.addAttribute("product", pc_major_part);

        List<Comments> comments = productService.read(itemKey);
        model.addAttribute("comments", comments);

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

        return "shop-single";
    }

}
