package com.dao;

import com.entity.XuejixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XuejixinxiVO;
import com.entity.view.XuejixinxiView;


/**
 * 学籍信息
 * 
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface XuejixinxiDao extends BaseMapper<XuejixinxiEntity> {
	
	List<XuejixinxiVO> selectListVO(@Param("ew") Wrapper<XuejixinxiEntity> wrapper);
	
	XuejixinxiVO selectVO(@Param("ew") Wrapper<XuejixinxiEntity> wrapper);
	
	List<XuejixinxiView> selectListView(@Param("ew") Wrapper<XuejixinxiEntity> wrapper);

	List<XuejixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<XuejixinxiEntity> wrapper);
	
	XuejixinxiView selectView(@Param("ew") Wrapper<XuejixinxiEntity> wrapper);
	

}
