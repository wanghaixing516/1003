package com.kgc.controller;

import com.kgc.entity.Studentinfo;
import com.kgc.service.StudentinfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class IndexController {

    @Resource
    StudentinfoService studentinfoService;
    @RequestMapping("/")
    public String index(Model   model){
        List<Studentinfo> list=studentinfoService.selectAll();
        model.addAttribute("list",list);
        return "index";
    }
    @RequestMapping("/cha")
    public String cha(Model   model,Integer sid){
        Studentinfo Studentinfo = studentinfoService.selectById(sid);
            model.addAttribute("cha",Studentinfo);
           return "/upd";
    }
    @RequestMapping("/upd")
    public String dotinajia(Studentinfo studentinfo, HttpServletRequest request){
        int upd=studentinfoService.upd(studentinfo);
        if(upd>0){
            request.setAttribute("upd1","更新成功");
            return "redirect:/";
        }else{
            return "redirect:/cha";
        }

    }

}
