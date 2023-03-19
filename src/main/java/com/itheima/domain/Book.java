package com.itheima.domain;

import java.io.Serializable;

public class Book implements Serializable {

    private Integer id;
    private String name;
    private Double price;
    private Integer pnum;
    private String category;

    public Book() {
    }

    public Book(Integer id, String name, Double price, Integer pnum, String category) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.pnum = pnum;
        this.category = category;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getPnum() {
        return pnum;
    }

    public void setPnum(Integer pnum) {
        this.pnum = pnum;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
