package com.administratorinterfacedemo.interfacedemo;

/**
 * Created by Administrator on 2016/12/7 0007.
 */

public class SendData {
    public Listener mListener;//接口实体类
    public SendData(Listener listener){
        this.mListener =listener;
    }
    public void Testsends(){
        mListener.send("都比");
    }

}
