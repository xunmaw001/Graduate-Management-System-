package com.dao;

import com.entity.XuankebaomingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XuankebaomingVO;
import com.entity.view.XuankebaomingView;


/**
 * 选课报名
 * 
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface XuankebaomingDao extends BaseMapper<XuankebaomingEntity> {
	
	List<XuankebaomingVO> selectListVO(@Param("ew") Wrapper<XuankebaomingEntity> wrapper);
	
	XuankebaomingVO selectVO(@Param("ew") Wrapper<XuankebaomingEntity> wrapper);
	
	List<XuankebaomingView> selectListView(@Param("ew") Wrapper<XuankebaomingEntity> wrapper);

	List<XuankebaomingView> selectListView(Pagination page,@Param("ew") Wrapper<XuankebaomingEntity> wrapper);
	
	XuankebaomingView selectView(@Param("ew") Wrapper<XuankebaomingEntity> wrapper);
	

}
