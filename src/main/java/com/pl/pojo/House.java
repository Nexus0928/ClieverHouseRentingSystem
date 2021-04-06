package com.pl.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class House {
    //房源编号
    private int h_id;
    //发布该房源的用户编号
    private int u_id;
    //房源名称，例如：如意酒店
    private String h_name;
    //房源描述
    private String h_desc;
    //房源信息，例如：几厅几室
    private String h_model;
    //房屋最大支持入住人数
    private String h_maxNum;
    //出租房源面积
    private String h_area;
    //出租的房源所在楼层数
    private String h_floor;
    //房源月租
    private double h_price;
    //房源所在地址
    private String h_address;
    //发布房源的房东的联系方式
    private String h_linkman;
    //房源朝向
    private String h_direct;
    //发布人昵称
    private String publisher;
    //发布时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date publishTime;
}
