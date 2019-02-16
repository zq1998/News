package com.service.impl;

import com.dao.AdminDao;
import com.pojo.Admin;
import com.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;
    @Override
    public Admin queryAdmin(Admin admin) {
        return adminDao.queryAdmin(admin);
    }

}
