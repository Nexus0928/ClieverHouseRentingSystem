package com.pl.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    //用户id
    private int u_id;
    //用户名
    private String u_name;
    //密码
    private String u_password;
    //昵称
    private String u_nickname;
    //联系方式
    private String u_phone;
    //性别
    private String u_sex;
    //年龄
    private int u_age;
    //身份证号，用于更改用户信息
    private String u_evidence;
    private String h_u_img;
    //用户身份，默认是租客，后期一旦注册房源信息可通过方法对其修改
    private String u_type;
}
