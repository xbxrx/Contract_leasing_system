package com.hwadee.dao;

import com.hwadee.domain.OrgnInfo;

import java.util.List;

public interface IOrgnInfoDao {
    public void addOrgnInfo(OrgnInfo orgnInfo);

    public void deleteOrgnInfoById(int orgnId);

    public void updateOrgnInfo(OrgnInfo orgnInfo);

    public OrgnInfo queryOrgnInfoById(Integer orgnId);

    public List<OrgnInfo> queryAllOrgnInfo();
}
