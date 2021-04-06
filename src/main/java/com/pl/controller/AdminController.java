package com.pl.controller;

import com.pl.service.AdminService;
import com.pl.service.HouseService;
import com.pl.service.OrderService;
import com.pl.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
    //获取Service层
    @Autowired
    @Qualifier("AdminServiceImpl")
    private AdminService adminService;
    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;
    @Autowired
    @Qualifier("OrderServiceImpl")
    private OrderService orderService;
    @Autowired
    @Qualifier("HouseServiceImpl")
    private HouseService houseService;
}
