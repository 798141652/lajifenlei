package com.app.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.app.dao.GarbageDao;
import com.app.dao.GarbageTypeDao;
import com.app.model.Garbage;
import com.app.model.GarbageType;

@Controller @Scope("prototype")
public class GarbagetypeAction {
	@Resource GarbageTypeDao garbagetypeDao;
	@Resource GarbageDao garbageDao;
	
	private GarbageType garbagetype;
	private List<Garbage> garbageList;
	private String keywords;



	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public GarbageType getGarbagetype() {
		return garbagetype;
	}

	public void setGarbagetype(GarbageType garbagetype) {
		this.garbagetype = garbagetype;
	}
	
	public List<Garbage> getGarbageList() {
		return garbageList;
	}

	public void setGarbageList(List<Garbage> garbageList) {
		this.garbageList = garbageList;
	}
	
	public String queryGarbageType() {
		garbagetype = (GarbageType)garbagetypeDao.QueryGarbagetypeInfo(garbagetype.getGarbagetypeName()).get(0);
		garbageList = garbageDao.QueryGarbageByType(garbagetype);
		return "baike";
	}

	

}
