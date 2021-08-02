package com.team01.service;


import com.sun.corba.se.pept.transport.ContactInfo;

import java.util.List;

public interface IContractInfoService {
    public void addContractInfo(ContactInfo contactInfo);

    //根据合同编号删除合同信息
    public void deleteContractInfo(int contractId);

    //根据合同编号修改合同信息
    public void updateContractInfo(int contractId);

    //根据合同编号查询合同信息
    public ContactInfo queryContractInfo(int contractId);

    //查询所有合同信息
    public List<ContactInfo> queryAllContactInfo();


}
