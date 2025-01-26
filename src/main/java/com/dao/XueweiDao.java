package com.dao;

import com.entity.XueweiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XueweiVO;
import com.entity.view.XueweiView;


/**
 * 学位
 * 
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface XueweiDao extends BaseMapper<XueweiEntity> {
	
	List<XueweiVO> selectListVO(@Param("ew") Wrapper<XueweiEntity> wrapper);
	
	XueweiVO selectVO(@Param("ew") Wrapper<XueweiEntity> wrapper);
	
	List<XueweiView> selectListView(@Param("ew") Wrapper<XueweiEntity> wrapper);

	List<XueweiView> selectListView(Pagination page,@Param("ew") Wrapper<XueweiEntity> wrapper);
	
	XueweiView selectView(@Param("ew") Wrapper<XueweiEntity> wrapper);
	

}
