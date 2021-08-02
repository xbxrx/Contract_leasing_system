package com.hwadee.service.impl;

import com.hwadee.dao.IOrgnInfoDao;
import com.hwadee.domain.OrgnInfo;
import com.hwadee.service.IOrgnInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("orgnInfoService")
public class OrgnInfoServiceImpl implements IOrgnInfoService {

    @Autowired
    IOrgnInfoDao orgnInfoDao;

    @Override
    public void addOrgnInfo(OrgnInfo orgnInfo) {
         orgnInfoDao.addOrgnInfo(orgnInfo);
    }

    @Override
    public void deleteOrgnInfoById(int orgnId) {
        orgnInfoDao.deleteOrgnInfoById(orgnId);

    }

    @Override
    public void updateOrgnInfo(OrgnInfo orgnInfo) {
        orgnInfoDao.updateOrgnInfo(orgnInfo);

    }

    @Override
    public OrgnInfo queryOrgnInfoById(Integer orgnId) {
        return orgnInfoDao.queryOrgnInfoById(orgnId);

    }

    @Override
    public List<OrgnInfo> queryAllOrgnInfo() {
        return orgnInfoDao.queryAllOrgnInfo();
    }
}
