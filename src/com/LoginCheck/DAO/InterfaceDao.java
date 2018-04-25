package com.LoginCheck.DAO;

/**
 * Created by LHF on 2017/7/9.
 */
//此泛型接口未有详尽设计方案，暂且压下
public interface InterfaceDao<T> {
    public T SelectRecord(String sql);
    public T UpdateRecord(String sql);

}
