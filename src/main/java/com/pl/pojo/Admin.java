package com.pl.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admin {
    //管理员id
    private int a_id;
    //用户名
    private String a_username;
    //密码
    private String a_password;
}
