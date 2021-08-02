package dao;

import domain.OrgnInfo;

import java.util.List;

public interface OrgDao {
    public void addOrgInfo(OrgnInfo orgnInfo);

    public void deleteOrgInfoById(Integer orgnId);

    public void updateOrgnInfo(OrgnInfo orgnInfo);

    public void queryOrgnInfoById(Integer orgnId);

    public List<OrgnInfo> queryAllOrgnInfo();
}
