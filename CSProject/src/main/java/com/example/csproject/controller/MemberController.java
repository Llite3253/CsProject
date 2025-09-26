package com.example.csproject.controller;

import com.example.csproject.dto.E_JoinRequest;
import com.example.csproject.dto.JoinRequest;
import com.example.csproject.dto.LoginRequest;
import com.example.csproject.entity.Entrepreneur;
import com.example.csproject.entity.Member;
import com.example.csproject.service.EntrepreneurService;
import com.example.csproject.service.MemberService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private MemberService memberService;
    @Autowired
    private EntrepreneurService entrepreneurService;

    @GetMapping("/login")
    public String login_page_page(Model model) {
        model.addAttribute("LoginRequest", new LoginRequest());
        return "member/login";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute LoginRequest loginRequest, RedirectAttributes rtt, HttpServletRequest httpServletRequest, @RequestParam Long option) {
        httpServletRequest.getSession().invalidate();
        HttpSession session = httpServletRequest.getSession(true);

        if(option == 0) {
            Member member = memberService.login(loginRequest);
            if (member == null) {
                rtt.addFlashAttribute("err", "아이디 또는 비밀번호를 잘못 입력하셨습니다.");
                return "redirect:/member/login";
            }
            session.setAttribute("memberId", member.getId());
        }
        else {
            Entrepreneur member = entrepreneurService.e_login(loginRequest);
            if (member == null) {
                rtt.addFlashAttribute("err", "아이디 또는 비밀번호를 잘못 입력하셨습니다.");
                return "redirect:/member/login";
            }
            session.setAttribute("option", "Y");
            session.setAttribute("memberId", member.getId());
        }

        session.setMaxInactiveInterval(1800);

        return "redirect:/";
    }

    @GetMapping("logout")
    public String logout(HttpSession session) {
        if(session.getAttribute("memberId") != null) {
            session.invalidate();
        }

        return "redirect:/";
    }

    @GetMapping("/kakao_login")
    public String kakao_login_page(@RequestParam(value = "code", required = false) String code) {
        System.out.println("#########" + code);
        return "redirect:/";
    }

    @GetMapping("/mypage")
    public String mypage(Model model, HttpSession session) {
        if(session.getAttribute("option") != null) {
            Entrepreneur entrepreneur = entrepreneurService.getLoginEntrepreneurById(session.getAttribute("memberId").toString());
            if (entrepreneur == null) {
                return "redirect:/member/login";
            }

            model.addAttribute("Member", entrepreneur);
        }
        else {
            Member member = memberService.getLoginMemberById(session.getAttribute("memberId").toString());
            if (member == null) {
                return "redirect:/member/login";
            }

            model.addAttribute("Member", member);
        }
        return "member/mypage";
    }

    @GetMapping("/information")
    public String information_checkMemberPwd(Model model) {
        model.addAttribute("LoginRequest", new LoginRequest());
        return "member/checkMemberPwd";
    }

    @PostMapping("/information")
    public String information(Model model, @ModelAttribute LoginRequest loginRequest, RedirectAttributes rtt, HttpSession session) {
        if(session.getAttribute("option") != null) {
            Entrepreneur entrepreneur = entrepreneurService.e_login(loginRequest);
            if (entrepreneur == null) {
                rtt.addFlashAttribute("err", "비밀번호를 잘못 입력하셨습니다.");
                return "redirect:/member/mypage";
            }

            model.addAttribute("Member", entrepreneur);
            model.addAttribute("E_JoinRequest", new E_JoinRequest());
        } else {
            Member member = memberService.login(loginRequest);
            if (member == null) {
                rtt.addFlashAttribute("err", "비밀번호를 잘못 입력하셨습니다.");
                return "redirect:/member/mypage";
            }

            model.addAttribute("Member", member);
            model.addAttribute("JoinRequest", new JoinRequest());
        }

        return "member/information";
    }

    @PostMapping("/modifyMember")
    public String modifyMember(@ModelAttribute JoinRequest joinRequest, @ModelAttribute E_JoinRequest e_joinRequest, HttpSession session, RedirectAttributes rttr) {
        if(session.getAttribute("memberId") == null) {
            rttr.addFlashAttribute("msg", "로그인을 해주세요.");
            return "redirect:/member/login";
        }

        if(session.getAttribute("option") != null) {
            Entrepreneur entrepreneur = entrepreneurService.getLoginEntrepreneurById(e_joinRequest.getId());
            if(entrepreneur == null) return null;
            entrepreneurService.e_update(entrepreneur, e_joinRequest);
        } else {
            Member member = memberService.getLoginMemberById(joinRequest.getId());
            if(member == null) return null;
            memberService.update(member, joinRequest);
        }

        if(session.getAttribute("memberId") != null) {
            session.invalidate();
        }

        rttr.addFlashAttribute("msg", "수정되었습니다.");
        return "redirect:/member/login";
    }

    @GetMapping("/delete")
    public String delete(@SessionAttribute(name = "memberId", required = false) String memberId, RedirectAttributes rttr, HttpSession session) {
        if(session.getAttribute("memberId") != null) {
            return "redirect:/member/login";
        }

        if(session.getAttribute("option") != null) {
            Entrepreneur loginEntrepreneur = entrepreneurService.getLoginEntrepreneurById(memberId);
            Entrepreneur entrepreneur = entrepreneurService.e_delete(loginEntrepreneur);
            if (entrepreneur != null) {
                rttr.addFlashAttribute("msg", "탈퇴되었습니다.");
                session.invalidate();
            }

        } else {
            Member loginMember = memberService.getLoginMemberById(memberId);
            Member member = memberService.delete(loginMember);
            if(member != null) {
                rttr.addFlashAttribute("msg", "탈퇴되었습니다.");
                session.invalidate();
            }
        }

        return "redirect:/";
    }

    @GetMapping("/simple_join")
    public String simple_join_page() {
        return "member/simple_join";
    }

    @GetMapping("/email_join")
    public String email_join_page(Model model) {
        model.addAttribute("JoinRequest", new JoinRequest());
        return "member/email_join";
    }

    @PostMapping("/email_join")
    public String email_join(@ModelAttribute JoinRequest joinRequest) {
        Member joinMember = memberService.join(joinRequest);
        return "redirect:/member/login";
    }

    @GetMapping("/entrepreneur_join")
    public String entrepreneur_join_page(Model model) {
        model.addAttribute("E_JoinRequest", new E_JoinRequest());
        return "member/entrepreneur_join";
    }

    @PostMapping("/entrepreneur_join")
    public String entrepreneur_join(@ModelAttribute E_JoinRequest e_JoinRequest) {
        Entrepreneur e_joinMember = entrepreneurService.e_join(e_JoinRequest);
        return "redirect:/member/login";
    }

    @PostMapping("/idCheck")
    @ResponseBody
    public String idCheck(@RequestParam String id) {
        boolean res = memberService.idCheck(id);
        return res ? "NO" : "OK";
    }

}
