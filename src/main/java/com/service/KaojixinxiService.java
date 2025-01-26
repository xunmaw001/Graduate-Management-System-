package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KaojixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KaojixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KaojixinxiView;


/**
 * 考级信息
 *
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface KaojixinxiService extends IService<KaojixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KaojixinxiVO> selectListVO(Wrapper<KaojixinxiEntity> wrapper);
   	
   	KaojixinxiVO selectVO(@Param("ew") Wrapper<KaojixinxiEntity> wrapper);
   	
   	List<KaojixinxiView> selectListView(Wrapper<KaojixinxiEntity> wrapper);
   	
   	KaojixinxiView selectView(@Param("ew") Wrapper<KaojixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KaojixinxiEntity> wrapper);
   	

}

