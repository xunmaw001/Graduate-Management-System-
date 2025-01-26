package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XuejixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XuejixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XuejixinxiView;


/**
 * 学籍信息
 *
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface XuejixinxiService extends IService<XuejixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuejixinxiVO> selectListVO(Wrapper<XuejixinxiEntity> wrapper);
   	
   	XuejixinxiVO selectVO(@Param("ew") Wrapper<XuejixinxiEntity> wrapper);
   	
   	List<XuejixinxiView> selectListView(Wrapper<XuejixinxiEntity> wrapper);
   	
   	XuejixinxiView selectView(@Param("ew") Wrapper<XuejixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuejixinxiEntity> wrapper);
   	

}

