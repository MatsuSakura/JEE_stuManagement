package com.ljh.stuManage.dao;

import java.util.List;

import com.ljh.stuManage.model.Chengji;

public interface ChengjiDao {

	int insert(Chengji classs);

	int delete(int id);

	int update(Chengji classs);

	List<Chengji> selectByName(String name);

	Chengji selectById(int id);

	List<Chengji> selectAll();
}