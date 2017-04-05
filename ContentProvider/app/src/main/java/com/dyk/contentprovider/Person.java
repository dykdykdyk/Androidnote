package com.dyk.contentprovider;

/**
 * Created by Dengyangkang on 2017/4/5.
 */

public class Person {

    private Integer _id;
    private String name;
    private String age;

    public Integer get_id() {
        return _id;
    }
    public void set_id(Integer _id) {
        this._id = _id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getAge() {
        return age;
    }
    public void setAge(String age) {
        this.age = age;
    }

}
