package com.dao;

import com.entity.XueweishenqingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XueweishenqingVO;
import com.entity.view.XueweishenqingView;


/**
 * 学位申请
 * 
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface XueweishenqingDao extends BaseMapper<XueweishenqingEntity> {
	
	List<XueweishenqingVO> selectListVO(@Param("ew") Wrapper<XueweishenqingEntity> wrapper);
	
	XueweishenqingVO selectVO(@Param("ew") Wrapper<XueweishenqingEntity> wrapper);
	
	List<XueweishenqingView> selectListView(@Param("ew") Wrapper<XueweishenqingEntity> wrapper);

	List<XueweishenqingView> selectListView(Pagination page,@Param("ew") Wrapper<XueweishenqingEntity> wrapper);
	
	XueweishenqingView selectView(@Param("ew") Wrapper<XueweishenqingEntity> wrapper);
	

}
