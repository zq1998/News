package com.service.impl;

import com.dao.XinwenDao;
import com.pojo.Xinwen;
import com.service.XinwenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.rmi.RemoteException;
import java.util.LinkedList;
import java.util.List;
@Service
public class XinwenServiceImpl implements XinwenService {
    @Autowired
    private XinwenDao xinwenDao;

    @Override
    public int addXinwen(Xinwen xinwen) {
        return xinwenDao.addXinwen(xinwen);
    }

    @Override
    public int passXinwen(int id) {
        return  xinwenDao.passXinwen(id);
    }

    @Override
    public int noPassXinwen(int id) {
        return xinwenDao.noPassXinwen(id);
    }

    @Override
    public List<Xinwen> queryByTypeXinwen(String type,int status) {
        return xinwenDao.queryByTypeXinwen(type,status);
    }

    @Override
    public List<Xinwen> queryAllXinwen()  {
        return xinwenDao.queryAllXinwen();
    }

    @Override
    public List<String> queryAllType() {
        return xinwenDao.queryAllType();
    }

    @Override
    public List<Xinwen> queryByStatus() {
        return  xinwenDao.queryByStatus();
    }


}
