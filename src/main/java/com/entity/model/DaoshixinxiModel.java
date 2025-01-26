package com.entity.model;

import com.entity.DaoshixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 导师信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public class DaoshixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 导师姓名
	 */
	
	private String daoshixingming;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 教龄
	 */
	
	private String jiaoling;
		
	/**
	 * 所授课程
	 */
	
	private String suoshoukecheng;
		
	/**
	 * 课程分类
	 */
	
	private String kechengfenlei;
		
	/**
	 * 课程类型
	 */
	
	private String kechengleixing;
		
	/**
	 * 导师简介
	 */
	
	private String daoshijianjie;
				
	
	/**
	 * 设置：导师姓名
	 */
	 
	public void setDaoshixingming(String daoshixingming) {
		this.daoshixingming = daoshixingming;
	}
	
	/**
	 * 获取：导师姓名
	 */
	public String getDaoshixingming() {
		return daoshixingming;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：教龄
	 */
	 
	public void setJiaoling(String jiaoling) {
		this.jiaoling = jiaoling;
	}
	
	/**
	 * 获取：教龄
	 */
	public String getJiaoling() {
		return jiaoling;
	}
				
	
	/**
	 * 设置：所授课程
	 */
	 
	public void setSuoshoukecheng(String suoshoukecheng) {
		this.suoshoukecheng = suoshoukecheng;
	}
	
	/**
	 * 获取：所授课程
	 */
	public String getSuoshoukecheng() {
		return suoshoukecheng;
	}
				
	
	/**
	 * 设置：课程分类
	 */
	 
	public void setKechengfenlei(String kechengfenlei) {
		this.kechengfenlei = kechengfenlei;
	}
	
	/**
	 * 获取：课程分类
	 */
	public String getKechengfenlei() {
		return kechengfenlei;
	}
				
	
	/**
	 * 设置：课程类型
	 */
	 
	public void setKechengleixing(String kechengleixing) {
		this.kechengleixing = kechengleixing;
	}
	
	/**
	 * 获取：课程类型
	 */
	public String getKechengleixing() {
		return kechengleixing;
	}
				
	
	/**
	 * 设置：导师简介
	 */
	 
	public void setDaoshijianjie(String daoshijianjie) {
		this.daoshijianjie = daoshijianjie;
	}
	
	/**
	 * 获取：导师简介
	 */
	public String getDaoshijianjie() {
		return daoshijianjie;
	}
			
}
