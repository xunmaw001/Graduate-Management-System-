package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XuankebaomingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XuankebaomingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XuankebaomingView;


/**
 * 选课报名
 *
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface XuankebaomingService extends IService<XuankebaomingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuankebaomingVO> selectListVO(Wrapper<XuankebaomingEntity> wrapper);
   	
   	XuankebaomingVO selectVO(@Param("ew") Wrapper<XuankebaomingEntity> wrapper);
   	
   	List<XuankebaomingView> selectListView(Wrapper<XuankebaomingEntity> wrapper);
   	
   	XuankebaomingView selectView(@Param("ew") Wrapper<XuankebaomingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuankebaomingEntity> wrapper);
   	

}

