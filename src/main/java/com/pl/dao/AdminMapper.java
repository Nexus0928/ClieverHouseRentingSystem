package com.pl.dao;

import com.pl.pojo.Admin;

public interface AdminMapper {
    //管理员登录，查询全部信息
    Admin selectAdminMsg(String username, String password);
    //检查旧密码
    String checkAdminOldPwd(int id);
    //修改密码,需要电话号码和用户id
    int updAdminPassword(int id,String newPwd);
}
