package com.school.life.bean;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @author pd
 * DateTime: 2022/6/5 9:27
 */
public class PopData {
    private String name;
    private Object value;

    public PopData(String name,Object value) {
        this.name = name;
        this.value = value;
    }

    public PopData() {
    }

    public Object getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
