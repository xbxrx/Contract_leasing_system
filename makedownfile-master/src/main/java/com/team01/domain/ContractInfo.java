package com.team01.domain;

public class ContractInfo {
    private int contractId;
    private String contractName;
    private String partyA;
    private String PartyB;
    private String startTime;
    private String deadline;
    private double rent;

    public double getRent() {
        return rent;
    }

    public int getContractId() {
        return contractId;
    }

    public String getContractName() {
        return contractName;
    }

    public String getDeadline() {
        return deadline;
    }

    public String getPartyA() {
        return partyA;
    }

    public String getPartyB() {
        return PartyB;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setContractName(String contractName) {
        this.contractName = contractName;
    }

    public void setContractId(int contractId) {
        this.contractId = contractId;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public void setPartyA(String partyA) {
        this.partyA = partyA;
    }

    public void setPartyB(String partyB) {
        PartyB = partyB;
    }

    public void setRent(double rent) {
        this.rent = rent;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }
}
