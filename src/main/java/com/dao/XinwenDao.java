package com.dao;

import com.pojo.Xinwen;
import org.apache.ibatis.annotations.Param;

import java.rmi.RemoteException;
import java.util.List;

public interface XinwenDao {
    int addXinwen(Xinwen xinwen);
    int passXinwen(int id);
    int noPassXinwen(int id);
    List<String> queryAllType();
    List<Xinwen> queryByTypeXinwen(@Param("type") String type,@Param("status") int status);
    List<Xinwen> queryAllXinwen() ;
    List<Xinwen> queryByStatus();

}
