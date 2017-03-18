package biz;

import java.util.List;

import entity.Emp;

public interface EmpBiz {
	public List<Emp> findAll();
	public Emp findById(Emp e);
}
