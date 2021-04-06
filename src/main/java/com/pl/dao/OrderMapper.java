package com.pl.dao;

import com.pl.pojo.Order;

import java.util.List;

public interface OrderMapper {
    //用户功能
    //租房申请
    Order rentHouse(int u_id, int h_id);
    //退房申请
    int checkOut(int o_id);
    //租房申请查看
    List<Order> selectRentHouse(int o_id);
    //退房申请查看
    List<Order> selectCheckOut(int o_id);


    //房东功能
    //同意租房申请
    int applyRentHouse(Order order);
    //同意退房申请
    int applyCheckOut(int o_id);


    //用户和房东功能
    //查看所有订单
    List<Order> sel_O_AllOrder(int id);
}
