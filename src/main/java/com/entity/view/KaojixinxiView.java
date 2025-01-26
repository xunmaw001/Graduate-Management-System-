package com.entity.view;

import com.entity.KaojixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 考级信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
@TableName("kaojixinxi")
public class KaojixinxiView  extends KaojixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public KaojixinxiView(){
	}
 
 	public KaojixinxiView(KaojixinxiEntity kaojixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, kaojixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
