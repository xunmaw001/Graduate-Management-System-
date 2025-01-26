package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KaojibaomingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KaojibaomingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KaojibaomingView;


/**
 * 考级报名
 *
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface KaojibaomingService extends IService<KaojibaomingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KaojibaomingVO> selectListVO(Wrapper<KaojibaomingEntity> wrapper);
   	
   	KaojibaomingVO selectVO(@Param("ew") Wrapper<KaojibaomingEntity> wrapper);
   	
   	List<KaojibaomingView> selectListView(Wrapper<KaojibaomingEntity> wrapper);
   	
   	KaojibaomingView selectView(@Param("ew") Wrapper<KaojibaomingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KaojibaomingEntity> wrapper);
   	

}

