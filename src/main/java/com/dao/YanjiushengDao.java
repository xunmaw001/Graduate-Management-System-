package com.dao;

import com.entity.YanjiushengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YanjiushengVO;
import com.entity.view.YanjiushengView;


/**
 * 研究生
 * 
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface YanjiushengDao extends BaseMapper<YanjiushengEntity> {
	
	List<YanjiushengVO> selectListVO(@Param("ew") Wrapper<YanjiushengEntity> wrapper);
	
	YanjiushengVO selectVO(@Param("ew") Wrapper<YanjiushengEntity> wrapper);
	
	List<YanjiushengView> selectListView(@Param("ew") Wrapper<YanjiushengEntity> wrapper);

	List<YanjiushengView> selectListView(Pagination page,@Param("ew") Wrapper<YanjiushengEntity> wrapper);
	
	YanjiushengView selectView(@Param("ew") Wrapper<YanjiushengEntity> wrapper);
	

}
