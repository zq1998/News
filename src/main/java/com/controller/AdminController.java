package com.controller;


import com.pojo.Admin;
import com.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/bkindex")
    public String bkindex(Model model){
        return "bkindex";
    }
    @RequestMapping("/check")
    public String login(Model model, Admin admin){
        Admin admin1;
        admin1=adminService.queryAdmin(admin);
        if (admin1==null){
            return "redirect:/admin/bkindex";
        }else {
            return "redirect:/xinwen/check";
        }
    }
}
