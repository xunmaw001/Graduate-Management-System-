package com.dao;

import com.entity.KaojibaomingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KaojibaomingVO;
import com.entity.view.KaojibaomingView;


/**
 * 考级报名
 * 
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface KaojibaomingDao extends BaseMapper<KaojibaomingEntity> {
	
	List<KaojibaomingVO> selectListVO(@Param("ew") Wrapper<KaojibaomingEntity> wrapper);
	
	KaojibaomingVO selectVO(@Param("ew") Wrapper<KaojibaomingEntity> wrapper);
	
	List<KaojibaomingView> selectListView(@Param("ew") Wrapper<KaojibaomingEntity> wrapper);

	List<KaojibaomingView> selectListView(Pagination page,@Param("ew") Wrapper<KaojibaomingEntity> wrapper);
	
	KaojibaomingView selectView(@Param("ew") Wrapper<KaojibaomingEntity> wrapper);
	

}
