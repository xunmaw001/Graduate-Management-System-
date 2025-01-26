package com.entity.model;

import com.entity.XueweishenqingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 学位申请
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public class XueweishenqingModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 研究生账号
	 */
	
	private String yanjiushengzhanghao;
		
	/**
	 * 研究生姓名
	 */
	
	private String yanjiushengxingming;
		
	/**
	 * 专业
	 */
	
	private String zhuanye;
		
	/**
	 * 考级级别
	 */
	
	private String kaojijibie;
		
	/**
	 * 申请学位
	 */
	
	private String shenqingxuewei;
		
	/**
	 * 申请时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date shenqingshijian;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：研究生账号
	 */
	 
	public void setYanjiushengzhanghao(String yanjiushengzhanghao) {
		this.yanjiushengzhanghao = yanjiushengzhanghao;
	}
	
	/**
	 * 获取：研究生账号
	 */
	public String getYanjiushengzhanghao() {
		return yanjiushengzhanghao;
	}
				
	
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
	 * 设置：考级级别
	 */
	 
	public void setKaojijibie(String kaojijibie) {
		this.kaojijibie = kaojijibie;
	}
	
	/**
	 * 获取：考级级别
	 */
	public String getKaojijibie() {
		return kaojijibie;
	}
				
	
	/**
	 * 设置：申请学位
	 */
	 
	public void setShenqingxuewei(String shenqingxuewei) {
		this.shenqingxuewei = shenqingxuewei;
	}
	
	/**
	 * 获取：申请学位
	 */
	public String getShenqingxuewei() {
		return shenqingxuewei;
	}
				
	
	/**
	 * 设置：申请时间
	 */
	 
	public void setShenqingshijian(Date shenqingshijian) {
		this.shenqingshijian = shenqingshijian;
	}
	
	/**
	 * 获取：申请时间
	 */
	public Date getShenqingshijian() {
		return shenqingshijian;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
