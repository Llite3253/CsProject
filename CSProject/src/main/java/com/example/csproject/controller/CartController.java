package com.example.csproject.controller;

import com.example.csproject.dto.CartRequest;
import com.example.csproject.entity.Cart;
import com.example.csproject.entity.Entrepreneur;
import com.example.csproject.entity.Member;
import com.example.csproject.entity.Pc_major_part;
import com.example.csproject.service.CartService;
import com.example.csproject.service.EntrepreneurService;
import com.example.csproject.service.MemberService;
import com.example.csproject.service.ProductService;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartService cartService;
    @Autowired
    private MemberService memberService;
    @Autowired
    private EntrepreneurService entrepreneurService;
    @Autowired
    private ProductService productService;


    @GetMapping("/list")
    public String cart(HttpSession session, Model model) {
        if(session.getAttribute("memberId") == null) return "no";

        List<Long> cust_list = null;
        List<Cart> cart_list = null;

        if(session.getAttribute("option") != null) {
            Entrepreneur entrepreneur = entrepreneurService.getLoginEntrepreneurById(session.getAttribute("memberId").toString());
            if (entrepreneur == null) {
                return "/member/login";
            }
            cust_list = cartService.list_custKey(entrepreneur.getEntrepreneurKey());
            cart_list = cartService.list_cart(entrepreneur.getEntrepreneurKey());
        }
        else {
            Member member = memberService.getLoginMemberById(session.getAttribute("memberId").toString());
            if (member == null) {
                return "/member/login";
            }
            cust_list = cartService.list_custKey(member.getCustKey());
            cart_list = cartService.list_cart(member.getCustKey());
        }

        List<Pc_major_part> pc_major_part = productService.findByItemKey(cust_list);

        model.addAttribute("cart_list", pc_major_part);
        model.addAttribute("cart", cart_list);

        return "member/cart";
    }

    @PostMapping("/plus")
    @ResponseBody
    public String plusCart(HttpSession session, @RequestBody Map<String, Object> requestData) {
        if(session.getAttribute("memberId") == null) return "no";

        CartRequest cartRequest = new CartRequest();

        if(session.getAttribute("option") != null) {
            Entrepreneur entrepreneur = entrepreneurService.getLoginEntrepreneurById(session.getAttribute("memberId").toString());
            if (entrepreneur == null) {
                return "no";
            }
            cartRequest.setCustKey(entrepreneur.getEntrepreneurKey());
        }
        else {
            Member member = memberService.getLoginMemberById(session.getAttribute("memberId").toString());
            if (member == null) {
                return "no";
            }
            cartRequest.setCustKey(member.getCustKey());
        }

        Long itemKey = Long.valueOf(requestData.get("itemKey").toString());
        Long cnt = Long.valueOf(requestData.get("cnt").toString());

        cartRequest.setCnt(cnt);
        cartRequest.setItemKey(itemKey);

        cartService.cartplus(cartRequest);

        return "ok";
    }

    @GetMapping("/minus/{cartKey}")
    public String minus(@PathVariable("cartKey") Long cartKey, HttpSession session, Model model) {
        Cart cart = cartService.get_cart(cartKey);
        cartService.delete_cart(cart);

        return "redirect:/cart/list";
    }
}
