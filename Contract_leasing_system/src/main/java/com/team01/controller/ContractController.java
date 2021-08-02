package com.team01.controller;

import com.team01.domain.ContractInfo;
import com.team01.service.IContractInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller

public class ContractController {
    @Autowired
    private IContractInfoService contractInfoService;

    @RequestMapping("/")
    public String getIndex(){
        return "index";
    }

    @RequestMapping("/toContractInfo")
    public String toContractInfo(Model model){
        System.out.println("contract");
        List<ContractInfo> contractInfoList=contractInfoService.queryAllContactInfo();
        model.addAttribute("contractList",contractInfoList);
        return "contractInfo";
    }

    @RequestMapping("/toAddContract")
    public String toAddContract(){
        System.out.println("addContract");
        return "addContract";
    }

    @RequestMapping("/toAddResult")
    public String toAddResult(String contractName,String partyA,String partyB,String startTime,String deadline,double rent,Model model){
        ContractInfo contractInfo=new ContractInfo(contractName,partyA,partyB,startTime,deadline,rent);
        contractInfoService.addContractInfo(contractInfo);
        List<ContractInfo> contractInfoList=contractInfoService.queryAllContactInfo();
        model.addAttribute("contractList",contractInfoList);
        return "contractInfo";
    }

    @RequestMapping("/toUpdateContract")
    public String toUpdateContract(int contractId,Model model){
        System.out.println("updateContract");
        ContractInfo contractInfo= contractInfoService.queryContractInfo(contractId);
        model.addAttribute("contractInfo",contractInfo);
        return "updateContract";
    }

    @RequestMapping("/toUpdateResult")
    public String toUpdateResult(int contractId, String contractName,String partyA,String partyB,String startTime,String deadline,double rent,Model model){
        ContractInfo contractInfo=new ContractInfo(contractName,partyA,partyB,startTime,deadline,rent);
        contractInfo.setContractId(contractId);
        contractInfoService.updateContractInfo(contractInfo);
        List<ContractInfo> contractInfoList=contractInfoService.queryAllContactInfo();
        model.addAttribute("contractList",contractInfoList);
        return "contractInfo";
    }

    @RequestMapping("/toDeleteContract")
    public String toDeleteContract(int contractId,Model model){
        System.out.println("deleteContract");
        contractInfoService.deleteContractInfo(contractId);
        List<ContractInfo> contractList=contractInfoService.queryAllContactInfo();
        model.addAttribute("contractList",contractList);
        return "contractInfo";
    }

    @RequestMapping("/toCancel")
    public String toCancel(Model model){
        List<ContractInfo> contractInfoList=contractInfoService.queryAllContactInfo();
        model.addAttribute("contractList",contractInfoList);
        return "contractInfo";
    }

    @RequestMapping("/toSearchContract")
    public String toSearchContract(int contractId,Model model){
        ContractInfo contractInfo=contractInfoService.queryContractInfo(contractId);
        contractInfo.setContractId(contractId);
        List<ContractInfo> contractList=new ArrayList<>();
        contractList.add(contractInfo);
        model.addAttribute("contractList",contractList);
        return "contractInfo";
    }



}
