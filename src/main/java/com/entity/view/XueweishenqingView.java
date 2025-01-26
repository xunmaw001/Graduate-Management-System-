package com.entity.view;

import com.entity.XueweishenqingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 学位申请
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
@TableName("xueweishenqing")
public class XueweishenqingView  extends XueweishenqingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XueweishenqingView(){
	}
 
 	public XueweishenqingView(XueweishenqingEntity xueweishenqingEntity){
 	try {
			BeanUtils.copyProperties(this, xueweishenqingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
