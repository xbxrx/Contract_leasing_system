package com.team01.service;




import com.team01.domain.ContractInfo;

import java.util.List;

public interface IContractInfoService {
    public int addContractInfo(ContractInfo contractInfo);

    //根据合同编号删除合同信息
    public int deleteContractInfo(int contractId);

    //根据合同编号修改合同信息
    public int updateContractInfo(ContractInfo contractInfo);

    //根据合同编号查询合同信息
    public ContractInfo queryContractInfo(int contractId);

    //查询所有合同信息
    public List<ContractInfo> queryAllContactInfo();

    public int getListCount();


}
