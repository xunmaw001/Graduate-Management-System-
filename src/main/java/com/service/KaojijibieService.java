package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KaojijibieEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KaojijibieVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KaojijibieView;


/**
 * 考级级别
 *
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface KaojijibieService extends IService<KaojijibieEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KaojijibieVO> selectListVO(Wrapper<KaojijibieEntity> wrapper);
   	
   	KaojijibieVO selectVO(@Param("ew") Wrapper<KaojijibieEntity> wrapper);
   	
   	List<KaojijibieView> selectListView(Wrapper<KaojijibieEntity> wrapper);
   	
   	KaojijibieView selectView(@Param("ew") Wrapper<KaojijibieEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KaojijibieEntity> wrapper);
   	

}

