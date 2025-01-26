package com.dao;

import com.entity.KaojixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KaojixinxiVO;
import com.entity.view.KaojixinxiView;


/**
 * 考级信息
 * 
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface KaojixinxiDao extends BaseMapper<KaojixinxiEntity> {
	
	List<KaojixinxiVO> selectListVO(@Param("ew") Wrapper<KaojixinxiEntity> wrapper);
	
	KaojixinxiVO selectVO(@Param("ew") Wrapper<KaojixinxiEntity> wrapper);
	
	List<KaojixinxiView> selectListView(@Param("ew") Wrapper<KaojixinxiEntity> wrapper);

	List<KaojixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<KaojixinxiEntity> wrapper);
	
	KaojixinxiView selectView(@Param("ew") Wrapper<KaojixinxiEntity> wrapper);
	

}
