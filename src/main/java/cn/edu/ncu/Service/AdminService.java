package cn.edu.ncu.Service;

import cn.edu.ncu.Entity.Admin;

import java.util.List;

public interface AdminService {
    /*查询所有管理员信息*/
    public List<Admin> findAll();
}
