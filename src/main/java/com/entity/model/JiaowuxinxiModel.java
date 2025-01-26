package com.entity.model;

import com.entity.JiaowuxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 教务信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public class JiaowuxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 课程名称
	 */
	
	private String kechengmingcheng;
		
	/**
	 * 课程分类
	 */
	
	private String kechengfenlei;
		
	/**
	 * 课程类型
	 */
	
	private String kechengleixing;
		
	/**
	 * 教学任务
	 */
	
	private String jiaoxuerenwu;
		
	/**
	 * 发布时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fabushijian;
		
	/**
	 * 研究生账号
	 */
	
	private String yanjiushengzhanghao;
		
	/**
	 * 研究生姓名
	 */
	
	private String yanjiushengxingming;
		
	/**
	 * 导师工号
	 */
	
	private String daoshigonghao;
		
	/**
	 * 导师姓名
	 */
	
	private String daoshixingming;
				
	
	/**
	 * 设置：课程名称
	 */
	 
	public void setKechengmingcheng(String kechengmingcheng) {
		this.kechengmingcheng = kechengmingcheng;
	}
	
	/**
	 * 获取：课程名称
	 */
	public String getKechengmingcheng() {
		return kechengmingcheng;
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
	 * 设置：教学任务
	 */
	 
	public void setJiaoxuerenwu(String jiaoxuerenwu) {
		this.jiaoxuerenwu = jiaoxuerenwu;
	}
	
	/**
	 * 获取：教学任务
	 */
	public String getJiaoxuerenwu() {
		return jiaoxuerenwu;
	}
				
	
	/**
	 * 设置：发布时间
	 */
	 
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
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
			
}
