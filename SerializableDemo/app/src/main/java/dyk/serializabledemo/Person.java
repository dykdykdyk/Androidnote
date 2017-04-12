package dyk.serializabledemo;

import java.io.Serializable;

/**
 * Created by Dengyangkang on 2017/4/12.
 */

public class Person implements Serializable{
    private String name ;
    private int age;

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }
}
