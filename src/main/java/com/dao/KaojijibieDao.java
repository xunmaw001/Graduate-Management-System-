package com.dao;

import com.entity.KaojijibieEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KaojijibieVO;
import com.entity.view.KaojijibieView;


/**
 * 考级级别
 * 
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface KaojijibieDao extends BaseMapper<KaojijibieEntity> {
	
	List<KaojijibieVO> selectListVO(@Param("ew") Wrapper<KaojijibieEntity> wrapper);
	
	KaojijibieVO selectVO(@Param("ew") Wrapper<KaojijibieEntity> wrapper);
	
	List<KaojijibieView> selectListView(@Param("ew") Wrapper<KaojijibieEntity> wrapper);

	List<KaojijibieView> selectListView(Pagination page,@Param("ew") Wrapper<KaojijibieEntity> wrapper);
	
	KaojijibieView selectView(@Param("ew") Wrapper<KaojijibieEntity> wrapper);
	

}
