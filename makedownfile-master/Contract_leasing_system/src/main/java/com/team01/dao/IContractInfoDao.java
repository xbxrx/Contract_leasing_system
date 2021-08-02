package com.team01.dao;


import com.team01.domain.ContractInfo;
import org.springframework.stereotype.Component;

import java.util.List;


    /*
        服务接口
     */
@Component
public interface IContractInfoDao {

    //上传合同信息
     public int addContractInfo(ContractInfo contractInfo);

    //根据合同编号删除合同信息
    public int deleteContractInfo(int contractId);

    //根据合同编号修改合同信息
    public int updateContractInfo(ContractInfo contractInfo);

    //根据合同编号查询合同信息
    public ContractInfo queryContractInfo(int contractId);

    //查询所有合同信息
    public List<ContractInfo> queryAllContractInfo();

}
