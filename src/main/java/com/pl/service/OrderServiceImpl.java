package com.pl.service;

import com.pl.dao.OrderMapper;

public class OrderServiceImpl implements OrderService {
    private OrderMapper orderMapper;

    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }
}
