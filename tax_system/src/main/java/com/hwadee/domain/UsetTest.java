package com.hwadee.domain;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UsetTest {
    private String username;
    private Integer password;
    private String[] strs;
    private List<String> list;
    private Set<String> set;
    private Map<String,String> map;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getPassword() {
        return password;
    }

    public void setPassword(Integer password) {
        this.password = password;
    }

    public String[] getStrs() {
        return strs;
    }

    public void setStrs(String[] strs) {
        this.strs = strs;
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

    public Set<String> getSet() {
        return set;
    }

    public void setSet(Set<String> set) {
        this.set = set;
    }

    public Map<String, String> getMap() {
        return map;
    }

    public void setMap(Map<String, String> map) {
        this.map = map;
    }

    @Override
    public String toString() {
        return "UsetTest{" +
                "username='" + username + '\'' +
                ", password=" + password +
                ", strs=" + Arrays.toString(strs) +
                ", list=" + list +
                ", set=" + set +
                ", map=" + map +
                '}';
    }
}
