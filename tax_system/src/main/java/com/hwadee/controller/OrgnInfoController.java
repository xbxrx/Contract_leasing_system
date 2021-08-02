package com.hwadee.controller;

import com.hwadee.domain.OrgnInfo;
import com.hwadee.service.IOrgnInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class OrgnInfoController {
    @Resource(name = "orgnInfoService")
    IOrgnInfoService orgnInfoService;

    @RequestMapping("toListOrgnInfo")
    public String getOrgnInfos(Model model){
        List<OrgnInfo> list = orgnInfoService.queryAllOrgnInfo();
        model.addAttribute("orgnInfoList",list);
        return "orgn_list";
    }


    @RequestMapping("add")
    public String add(){

        return "orgn_add";
    }

    @RequestMapping("delete")
    public String deleteOrgnInfoById(int orgnId,Model model ){
        orgnInfoService.deleteOrgnInfoById(orgnId);
        List list = orgnInfoService.queryAllOrgnInfo();
        model.addAttribute("orgnInfoList", list);
        return "orgn_list";
    }

    @RequestMapping("updateResult")
    public String updateResult(int orgnId,String orgnLevel,String approvalCreateTime,String adminRank,String orgnType,String areaName,
                               String orgnName,String approvalCreateFileNumber,
                               String approvalDepartment,String address,String postcode,Model model) {

        OrgnInfo orgnInfo = new OrgnInfo();
        orgnInfo.setOrgnId(orgnId);
        orgnInfo.setApprovalDepartment(approvalDepartment);
        orgnInfo.setOrgnLevel(orgnLevel);
        orgnInfo.setAddress(address);
        orgnInfo.setAdminRank(adminRank);
        orgnInfo.setOrgnType(orgnType);
        orgnInfo.setOrgnName(orgnName);
        orgnInfo.setAreaName(areaName);
        orgnInfo.setApprovalCreateFileNumber(approvalCreateFileNumber);
        orgnInfo.setApprovalCreateTime(approvalCreateTime);
        orgnInfo.setPostcode(postcode);


        orgnInfoService.updateOrgnInfo(orgnInfo);


        List list = orgnInfoService.queryAllOrgnInfo();
        model.addAttribute("orgnInfoList", list);
        return "orgn_list";
    }


    @RequestMapping("update")
    public String update(int orgnId,Model model){
        OrgnInfo orgnInfo= orgnInfoService.queryOrgnInfoById(orgnId);

        model.addAttribute("orgnInfo",orgnInfo);
        return "orgn_update";
    }




     @RequestMapping("addOrgInfo")
    public String addOrgInfoInteger ( int orgnId,String orgnLevel,String
    approvalCreateTime,String adminRank,String orgnType,String areaName,
    String orgnName,String approvalCreateFileNumber,
    String approvalDepartment,String address,String postcode,Model model) {
         OrgnInfo orgnInfo = new OrgnInfo();
         orgnInfo.setOrgnId(orgnId);
         orgnInfo.setApprovalDepartment(approvalDepartment);
         orgnInfo.setOrgnLevel(orgnLevel);
         orgnInfo.setAddress(address);
         orgnInfo.setAdminRank(adminRank);
         orgnInfo.setOrgnType(orgnType);
         orgnInfo.setOrgnName(orgnName);
         orgnInfo.setAreaName(areaName);
         orgnInfo.setApprovalCreateFileNumber(approvalCreateFileNumber);
         orgnInfo.setApprovalCreateTime(approvalCreateTime);
         orgnInfo.setPostcode(postcode);
         orgnInfoService.addOrgnInfo(orgnInfo);
         List list = orgnInfoService.queryAllOrgnInfo();
         model.addAttribute("orgnInfoList", list);

         return "orgn_list";

     }
}
