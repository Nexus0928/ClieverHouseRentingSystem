package com.pl.service;

import com.pl.pojo.User;

import java.util.List;

public interface UserService {
    //共用功能
    //3.用户注册
    int register(User user);
    //4.检查旧密码
    String checkOldPwd(int id);
    //5.修改密码,用户id和旧密码
    int updPassword(int u_id,String newPwd);
    //查询自身所有信息
    User selectUserMsg(String u_name,String u_password);
    //1.查看自己的基本信息
    User selectSelf(int id);
    //2.更改用户自身信息，不支持更改密码，可以更改昵称、手机号、性别、年龄、证件号、房产证件
    int updUser(User user);

    //房客功能
    //3.成为房东
    int changeType(int id);

    //房东功能
    //3.取消房东身份
    int changeOType(int id);

    //管理员功能
    //查询所有用户信息
    List<User> selectAllUser();
}
