package com.entity.model;

import com.entity.ChengjixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 成绩信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public class ChengjixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 导师工号
	 */
	
	private String daoshigonghao;
		
	/**
	 * 导师姓名
	 */
	
	private String daoshixingming;
		
	/**
	 * 研究生账号
	 */
	
	private String yanjiushengzhanghao;
		
	/**
	 * 研究生姓名
	 */
	
	private String yanjiushengxingming;
		
	/**
	 * 理论课成绩
	 */
	
	private String lilunkechengji;
		
	/**
	 * 实践课成绩
	 */
	
	private String shijiankechengji;
		
	/**
	 * 是否合格
	 */
	
	private String shifouhege;
		
	/**
	 * 评语
	 */
	
	private String pingyu;
		
	/**
	 * 班级排名
	 */
	
	private String banjipaiming;
		
	/**
	 * 年级排名
	 */
	
	private String nianjipaiming;
		
	/**
	 * 记录时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date jilushijian;
				
	
	/**
	 * 设置：导师工号
	 */
	 
	public void setDaoshigonghao(String daoshigonghao) {
		this.daoshigonghao = daoshigonghao;
	}
	
	/**
	 * 获取：导师工号
	 */
	public String getDaoshigonghao() {
		return daoshigonghao;
	}
				
	
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
	 * 设置：理论课成绩
	 */
	 
	public void setLilunkechengji(String lilunkechengji) {
		this.lilunkechengji = lilunkechengji;
	}
	
	/**
	 * 获取：理论课成绩
	 */
	public String getLilunkechengji() {
		return lilunkechengji;
	}
				
	
	/**
	 * 设置：实践课成绩
	 */
	 
	public void setShijiankechengji(String shijiankechengji) {
		this.shijiankechengji = shijiankechengji;
	}
	
	/**
	 * 获取：实践课成绩
	 */
	public String getShijiankechengji() {
		return shijiankechengji;
	}
				
	
	/**
	 * 设置：是否合格
	 */
	 
	public void setShifouhege(String shifouhege) {
		this.shifouhege = shifouhege;
	}
	
	/**
	 * 获取：是否合格
	 */
	public String getShifouhege() {
		return shifouhege;
	}
				
	
	/**
	 * 设置：评语
	 */
	 
	public void setPingyu(String pingyu) {
		this.pingyu = pingyu;
	}
	
	/**
	 * 获取：评语
	 */
	public String getPingyu() {
		return pingyu;
	}
				
	
	/**
	 * 设置：班级排名
	 */
	 
	public void setBanjipaiming(String banjipaiming) {
		this.banjipaiming = banjipaiming;
	}
	
	/**
	 * 获取：班级排名
	 */
	public String getBanjipaiming() {
		return banjipaiming;
	}
				
	
	/**
	 * 设置：年级排名
	 */
	 
	public void setNianjipaiming(String nianjipaiming) {
		this.nianjipaiming = nianjipaiming;
	}
	
	/**
	 * 获取：年级排名
	 */
	public String getNianjipaiming() {
		return nianjipaiming;
	}
				
	
	/**
	 * 设置：记录时间
	 */
	 
	public void setJilushijian(Date jilushijian) {
		this.jilushijian = jilushijian;
	}
	
	/**
	 * 获取：记录时间
	 */
	public Date getJilushijian() {
		return jilushijian;
	}
			
}
