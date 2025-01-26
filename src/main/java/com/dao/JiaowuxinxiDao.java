package com.dao;

import com.entity.JiaowuxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiaowuxinxiVO;
import com.entity.view.JiaowuxinxiView;


/**
 * 教务信息
 * 
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface JiaowuxinxiDao extends BaseMapper<JiaowuxinxiEntity> {
	
	List<JiaowuxinxiVO> selectListVO(@Param("ew") Wrapper<JiaowuxinxiEntity> wrapper);
	
	JiaowuxinxiVO selectVO(@Param("ew") Wrapper<JiaowuxinxiEntity> wrapper);
	
	List<JiaowuxinxiView> selectListView(@Param("ew") Wrapper<JiaowuxinxiEntity> wrapper);

	List<JiaowuxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<JiaowuxinxiEntity> wrapper);
	
	JiaowuxinxiView selectView(@Param("ew") Wrapper<JiaowuxinxiEntity> wrapper);
	

}
