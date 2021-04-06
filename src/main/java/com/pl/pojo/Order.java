package com.pl.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order {
    //订单编号
    private int o_id;
    //与订单进行关联的房屋编号
    private int h_id;
    //创建此订单的编号
    private int u_id;
    //创建此订单的租客昵称
    private String order_user;
    //订单生成时间
    private Date order_time;
}
