package com.controller;

import com.pojo.Xinwen;
import com.service.XinwenService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/xinwen")
public class XinwenController {
    @Autowired
    private XinwenService xinwenService;

    @RequestMapping("/index")
    public String list(Model model){
        List<Xinwen> list=xinwenService.queryAllXinwen();
        model.addAttribute("list", list);

        return "index";
    }
    @RequestMapping("/fabu")
    public String fabu(Model model){
        return "fabu";
    }
    @RequestMapping("/addXinwen")
    public String fabuNews(Xinwen xinwen){
        xinwenService.addXinwen(xinwen);
        return "redirect:/xinwen/fabu";
    }
    @RequestMapping("/all")
    public String all(Model model){
        List<Xinwen> list=xinwenService.queryAllXinwen();
        model.addAttribute("list", list);
        return "success";
    }
    @RequestMapping("/other/{type}")
    public String shizheng(Model model,@Param("type") String type){
        List<Xinwen> list=xinwenService.queryByTypeXinwen("时政",1);
        model.addAttribute("list", list);

        return "index-shizheng";
    }
    @RequestMapping("/other1/{type}")
    public String shizheng1(Model model,@Param("type") String type){
        List<Xinwen> list=xinwenService.queryByTypeXinwen("时政",1);
        model.addAttribute("list", list);
        return "success-shizheng";
    }
    @RequestMapping("/check")
    public String check(Model model){
        List<Xinwen> list=xinwenService.queryByStatus();
        model.addAttribute("list",list);
        return "check";
    }
    @RequestMapping("/number")
    public String number(Model model){
        return "number";
    }
    @RequestMapping("/pass/{id}")
    public String pass(Model model,@PathVariable("id") int id){
        xinwenService.passXinwen(id);
        return "redirect:/xinwen/check";
    }
    @RequestMapping("/nopass/{id}")
    public String nopass(Model model,@PathVariable("id") int id){
        xinwenService.noPassXinwen(id);
        return "redirect:/xinwen/check";
    }
    @RequestMapping("/searchNum")
    public String searchNum(Model model){

        return "redirect:/xinwen/check";
    }
    @RequestMapping("/charts")
    public String charts(){
        return "charts";
    }
//    @ResponseBody
//    public Map<String,Integer> charts(){
//        List<String> types=xinwenService.queryAllType();
//        List<Xinwen> results=new ArrayList<>();
//        Map<String,Integer> mMap=new HashMap<String, Integer>();
//        for(String type:types){
//            results=xinwenService.queryByTypeXinwen(type,1);
//            int num=results.size();
//            mMap.put(type,num);
//        }
//        return mMap;
//    }
}
