package com.entity.vo;

import com.entity.XuejixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 学籍信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public class XuejixinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 研究生姓名
	 */
	
	private String yanjiushengxingming;
		
	/**
	 * 专业
	 */
	
	private String zhuanye;
		
	/**
	 * 家庭住址
	 */
	
	private String jiatingzhuzhi;
		
	/**
	 * 身份证
	 */
	
	private String shenfenzheng;
		
	/**
	 * 学校名称
	 */
	
	private String xuexiaomingcheng;
		
	/**
	 * 入学时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date ruxueshijian;
		
	/**
	 * 毕业时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date biyeshijian;
		
	/**
	 * 学籍情况
	 */
	
	private String xuejiqingkuang;
				
	
	/**
	 * 设置：研究生姓名
	 */
	 
	public void setYanjiushengxingming(String yanjiushengxingming) {
		this.yanjiushengxingming = yanjiushengxingming;
	}
	
	/**
	 * 获取：研究生姓名
	 */
	public String getYanjiushengxingming() {
		return yanjiushengxingming;
	}
				
	
	/**
	 * 设置：专业
	 */
	 
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	
	/**
	 * 获取：专业
	 */
	public String getZhuanye() {
		return zhuanye;
	}
				
	
	/**
	 * 设置：家庭住址
	 */
	 
	public void setJiatingzhuzhi(String jiatingzhuzhi) {
		this.jiatingzhuzhi = jiatingzhuzhi;
	}
	
	/**
	 * 获取：家庭住址
	 */
	public String getJiatingzhuzhi() {
		return jiatingzhuzhi;
	}
				
	
	/**
	 * 设置：身份证
	 */
	 
	public void setShenfenzheng(String shenfenzheng) {
		this.shenfenzheng = shenfenzheng;
	}
	
	/**
	 * 获取：身份证
	 */
	public String getShenfenzheng() {
		return shenfenzheng;
	}
				
	
	/**
	 * 设置：学校名称
	 */
	 
	public void setXuexiaomingcheng(String xuexiaomingcheng) {
		this.xuexiaomingcheng = xuexiaomingcheng;
	}
	
	/**
	 * 获取：学校名称
	 */
	public String getXuexiaomingcheng() {
		return xuexiaomingcheng;
	}
				
	
	/**
	 * 设置：入学时间
	 */
	 
	public void setRuxueshijian(Date ruxueshijian) {
		this.ruxueshijian = ruxueshijian;
	}
	
	/**
	 * 获取：入学时间
	 */
	public Date getRuxueshijian() {
		return ruxueshijian;
	}
				
	
	/**
	 * 设置：毕业时间
	 */
	 
	public void setBiyeshijian(Date biyeshijian) {
		this.biyeshijian = biyeshijian;
	}
	
	/**
	 * 获取：毕业时间
	 */
	public Date getBiyeshijian() {
		return biyeshijian;
	}
				
	
	/**
	 * 设置：学籍情况
	 */
	 
	public void setXuejiqingkuang(String xuejiqingkuang) {
		this.xuejiqingkuang = xuejiqingkuang;
	}
	
	/**
	 * 获取：学籍情况
	 */
	public String getXuejiqingkuang() {
		return xuejiqingkuang;
	}
			
}
