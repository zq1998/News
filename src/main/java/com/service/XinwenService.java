package com.service;

import com.pojo.Xinwen;

import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.List;

public interface XinwenService {
    int addXinwen(Xinwen xinwen);
    int passXinwen(int id);
    int noPassXinwen(int id);
    List<Xinwen> queryByTypeXinwen(String type,int status);
    List<Xinwen> queryAllXinwen() ;
    List<String> queryAllType();
    List<Xinwen> queryByStatus();
}
