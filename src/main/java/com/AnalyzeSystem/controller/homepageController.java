package com.AnalyzeSystem.controller;

import com.AnalyzeSystem.common.ReturnCodes.CommonReturnCode;
import com.AnalyzeSystem.common.ReturnCodes.LoginReturnCode;
import com.AnalyzeSystem.common.WebResult;
import com.AnalyzeSystem.model.UserInfo;
import com.AnalyzeSystem.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class homepageController {
    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private HttpSession session;


    @GetMapping(value = "/homepage")
    public String homepage(Model model) {
        return "/homepage";
    }
}