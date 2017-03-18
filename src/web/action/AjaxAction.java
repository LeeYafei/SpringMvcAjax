package web.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.mchange.v2.c3p0.ComboPooledDataSource;

import entity.Emp;
import biz.EmpBiz;

@Controller
public class AjaxAction {
	@Autowired
	private EmpBiz empBiz;
	/**
	 * AJAX传值方式1：
	 * @param response
	 */
	@RequestMapping("/d1.do")
	public void deal1(HttpServletResponse response){
		response.setContentType("application/json;charset=utf-8");
		try {			
			PrintWriter out = response.getWriter();
			
			out.print(JSONArray.toJSONString(empBiz.findAll()));
			
			out.flush();
			out.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//方式2
	@RequestMapping("/d2.do")
	public @ResponseBody List<Emp> deal2(){
		return empBiz.findAll();
	}
}
