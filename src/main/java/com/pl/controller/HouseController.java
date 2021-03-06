package com.pl.controller;

import com.pl.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/house")
public class HouseController {
    @Autowired
    @Qualifier("HouseServiceImpl")
    private HouseService houseService;
}
