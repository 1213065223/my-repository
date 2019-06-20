package com.billiard.entity;

public class Dictionary {
    private Integer id;

    private String dicName;

    private Integer dicType;

    private Integer dicParent;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDicName() {
        return dicName;
    }

    public void setDicName(String dicName) {
        this.dicName = dicName == null ? null : dicName.trim();
    }

    public Integer getDicType() {
        return dicType;
    }

    public void setDicType(Integer dicType) {
        this.dicType = dicType;
    }

    public Integer getDicParent() {
        return dicParent;
    }

    public void setDicParent(Integer dicParent) {
        this.dicParent = dicParent;
    }
}