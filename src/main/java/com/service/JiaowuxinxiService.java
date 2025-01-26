package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiaowuxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiaowuxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiaowuxinxiView;


/**
 * 教务信息
 *
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface JiaowuxinxiService extends IService<JiaowuxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiaowuxinxiVO> selectListVO(Wrapper<JiaowuxinxiEntity> wrapper);
   	
   	JiaowuxinxiVO selectVO(@Param("ew") Wrapper<JiaowuxinxiEntity> wrapper);
   	
   	List<JiaowuxinxiView> selectListView(Wrapper<JiaowuxinxiEntity> wrapper);
   	
   	JiaowuxinxiView selectView(@Param("ew") Wrapper<JiaowuxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiaowuxinxiEntity> wrapper);
   	

}

