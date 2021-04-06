package com.pl.service;

import com.pl.pojo.House;

import java.sql.Date;
import java.util.List;

public interface HouseService {
    //发布时间存储
    int transformatDate(int u_id, Date publishTime);
    //房客
    //房屋信息注册
    int addHouse(House house);
    //按户型查询
    List<House> selectByType(String type);
    //按地址+出租方式(几室几厅)查询
    List<House> selectByModel(String address,String model);
    //按面积查询
    List<House> selectByArea(double area);
    //按价格区间查询
    List<House> selectByPrice(double price1,double price2);


    //房东
    //查询本人所有出租房屋信息
    List<House> sel_O_AllHouse(int u_id);
    //修改出租房屋信息申请
    House updHouse(int h_id);
    //删除房屋出租信息
    int deleteHouse(int h_id);


    //管理员
    //查看所有房源信息
    List<House> selectAllHouse();
    //房屋信息修改处理
    int applyUpdHouse(House house);


    //管理员和租客共有
    //按地址查询,模糊查询
    List<House> selectByAds(String address);
    //按地址+小区名称查询
    List<House> selectByName(String address,String name);
    //按地址+面积查询
    List<House> selectByAdsArea(String address,String area);
}
