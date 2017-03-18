package biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import dao.EmpDao;
import entity.Emp;
import biz.EmpBiz;
@Service("empBiz")
public class EmpBizImpl implements EmpBiz {
	@Autowired
	private EmpDao empDao;

	@Override
	public List<Emp> findAll() {
		return empDao.select(null);
	}

	@Override
	public Emp findById(Emp e) {
		return empDao.select(e).get(0);
	}

}
