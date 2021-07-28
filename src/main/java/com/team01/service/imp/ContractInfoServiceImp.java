package com.team01.service.imp;


import com.sun.corba.se.pept.transport.ContactInfo;
import com.team01.dao.IContractInfoDao;
import com.team01.service.IContractInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("contractInfoService")
public class ContractInfoServiceImp implements IContractInfoService {
    @Autowired
    IContractInfoDao iContractInfoDao;

    @Override
    public void addContractInfo(ContactInfo contactInfo) {
        iContractInfoDao.addContractInfo(contactInfo);

    }

    @Override
    public void deleteContractInfo(int contractId) {
        iContractInfoDao.deleteContractInfo(contractId);

    }

    @Override
    public void updateContractInfo(int contractId) {
        iContractInfoDao.updateContractInfo(contractId);

    }

    @Override
    public ContactInfo queryContractInfo(int contractId) {
        return iContractInfoDao.queryContractInfo(contractId);
    }

    @Override
    public List<ContactInfo> queryAllContactInfo() {
        return iContractInfoDao.queryAllContactInfo();
    }
}
