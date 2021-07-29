package com.team01.service.imp;



import com.team01.dao.IContractInfoDao;
import com.team01.domain.ContractInfo;
import com.team01.service.IContractInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("contractInfoService")
public class ContractInfoServiceImp implements IContractInfoService {

    @Autowired
    IContractInfoDao iContractInfoDao;

    @Override
    public int addContractInfo(ContractInfo contractInfo) {
        System.out.println(contractInfo);
        return iContractInfoDao.addContractInfo(contractInfo);

    }

    @Override
    public int deleteContractInfo(int contractId) {
        return iContractInfoDao.deleteContractInfo(contractId);

    }

    @Override
    public int updateContractInfo(ContractInfo contractInfo) {
        return iContractInfoDao.updateContractInfo(contractInfo);

    }

    @Override
    public ContractInfo queryContractInfo(int contractId) {
        ContractInfo contractInfo = iContractInfoDao.queryContractInfo(contractId);
        return contractInfo;
    }

    @Override
    public List<ContractInfo> queryAllContactInfo() {
        List<ContractInfo> infos= iContractInfoDao.queryAllContractInfo();
        return infos;
    }

    @Override
    public int getListCount() {
        return iContractInfoDao.getListCount();
    }

}
