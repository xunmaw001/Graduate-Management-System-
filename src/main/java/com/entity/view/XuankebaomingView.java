package com.entity.view;

import com.entity.XuankebaomingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 选课报名
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
@TableName("xuankebaoming")
public class XuankebaomingView  extends XuankebaomingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XuankebaomingView(){
	}
 
 	public XuankebaomingView(XuankebaomingEntity xuankebaomingEntity){
 	try {
			BeanUtils.copyProperties(this, xuankebaomingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
