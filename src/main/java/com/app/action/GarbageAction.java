package com.app.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.app.dao.GarbageDao;
import com.app.dao.GarbageTypeDao;
import com.app.model.Garbage;
import com.app.model.GarbageType;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class GarbageAction extends ActionSupport{
	@Resource GarbageDao garbageDAO;
	@Resource GarbageTypeDao garbagetypeDAO;
	
	private Garbage garbage;
	private GarbageType garbagetype;
	private List<Garbage> garbageList;
	private String keyWords;

	
	
	public GarbageType getGarbagetype() {
		return garbagetype;
	}
	public void setGarbagetype(GarbageType garbageType) {
		this.garbagetype = garbageType;
	}
	public String getKeyWords() {
		return keyWords;
	}
	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	public Garbage getGarbage() {
		return garbage;
	}
	public void setGarbage(Garbage garbage) {
		this.garbage = garbage;
	}
	public List<Garbage> getGarbageList() {
		return garbageList;
	}
	public void setGarbageList(List<Garbage> garbageList) {
		this.garbageList = garbageList;
	}
	/*添加Garbage*/
	public String addGarbage() throws Exception{
		garbageDAO.AddGarbage(garbage);
		return "message";
	}
	/*显示所有Garbage*/
	public String showGarbage() {
		garbageList = garbageDAO.QueryAllGarbage();
		return "show_allgabage";
	}
	/*显示某一Garbage的详细信息*/
	public String showDetail() {
		garbage=garbageDAO.GetGarbageById(garbage.getGarbageId());
		return "detail_view";
	}
	
	/*显示garbage的修改项*/
	
	public String showEdit() throws Exception{
		garbage=garbageDAO.GetGarbageById(garbage.getGarbageId());
		return"edit_view";
	}
	
	/*编辑garbage*/
	
	public String editGarbage() throws Exception{
		garbageDAO.UpdateGarbage(garbage);
		return"edit_message";
	}
	
	/*删除garbage*/
	
	public String deleteGarbage() throws Exception{
		garbageDAO.DeleteGarbage(garbage.getGarbageId());
		return "delete_message";
	}
	
	/*查询garbage*/
	public String queryGarbages()throws Exception{
		garbageList = garbageDAO.QueryGarbageInfo(keyWords);
		return "show_view";
	}
	
}
