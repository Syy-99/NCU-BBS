package cn.edu.ncu.Service.impl;

import cn.edu.ncu.Dao.AdminDao;
import cn.edu.ncu.Entity.Admin;
import cn.edu.ncu.Service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    @Override
    public List<Admin> findAll() {
        return adminDao.findAll();
    }
}
