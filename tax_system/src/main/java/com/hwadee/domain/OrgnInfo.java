package com.hwadee.domain;

import java.io.Serializable;

public class OrgnInfo implements Serializable {
    //机构编码，机构级别，批准设立时间，行政级别，机构类别，行政区名，机构名称，
    // 批准设立文号，批准单位，邮编，地址
    private int orgnId;
    private String orgnLevel;
    private String approvalCreateTime;
    private String adminRank;
    private String orgnType;
    private String areaName;
    private String orgnName;
    private String approvalCreateFileNumber;
    private String approvalDepartment;
    private String address;
    private String postcode;

    public OrgnInfo() {
    }

    public int getOrgnId() {
        return orgnId;
    }

    public void setOrgnId(int orgnId) {
        this.orgnId = orgnId;
    }

    public String getOrgnLevel() {
        return orgnLevel;
    }

    public void setOrgnLevel(String orgnLevel) {
        this.orgnLevel = orgnLevel;
    }

    public String getApprovalCreateTime() {
        return approvalCreateTime;
    }

    public void setApprovalCreateTime(String approvalCreateTime) {
        this.approvalCreateTime = approvalCreateTime;
    }

    public String getAdminRank() {
        return adminRank;
    }

    public void setAdminRank(String adminRank) {
        this.adminRank = adminRank;
    }

    public String getOrgnType() {
        return orgnType;
    }

    public void setOrgnType(String orgnType) {
        this.orgnType = orgnType;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getOrgnName() {
        return orgnName;
    }

    public void setOrgnName(String orgnName) {
        this.orgnName = orgnName;
    }

    public String getApprovalCreateFileNumber() {
        return approvalCreateFileNumber;
    }

    public void setApprovalCreateFileNumber(String approvalCreateFileNumber) {
        this.approvalCreateFileNumber = approvalCreateFileNumber;
    }

    public String getApprovalDepartment() {
        return approvalDepartment;
    }

    public void setApprovalDepartment(String approvalDepartment) {
        this.approvalDepartment = approvalDepartment;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    @Override
    public String toString() {
        return "OrgnInfo{" +
                "orgnId=" + orgnId +
                ", orgnLevel='" + orgnLevel + '\'' +
                ", approvalCreateTime='" + approvalCreateTime + '\'' +
                ", adminRank='" + adminRank + '\'' +
                ", orgnType='" + orgnType + '\'' +
                ", areaName='" + areaName + '\'' +
                ", orgnName='" + orgnName + '\'' +
                ", approvalCreateFileNumber='" + approvalCreateFileNumber + '\'' +
                ", approvalDepartment='" + approvalDepartment + '\'' +
                ", address='" + address + '\'' +
                ", postcode='" + postcode + '\'' +
                '}';
    }
}
