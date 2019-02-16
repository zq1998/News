package com.controller;

import com.pojo.User;
import com.pojo.Xinwen;
import com.service.UserService;
import com.service.XinwenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private XinwenService xinwenService;

    @RequestMapping("/addUser")
    public String addUser(User user){
        userService.addUser(user);
        return "redirect:/xinwen/index";
    }
    @RequestMapping("/loginUser")
    public  String login(Model model,User user){
        User user1;
        user1=userService.queryUser(user);
        if(user1==null){
            return "redirect:/xinwen/index";
        }else {
            List<Xinwen> list=xinwenService.queryAllXinwen();
            model.addAttribute("list", list);
            return "success";
        }
    }
}
