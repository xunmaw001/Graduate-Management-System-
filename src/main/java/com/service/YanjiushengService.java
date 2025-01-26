package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YanjiushengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YanjiushengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YanjiushengView;


/**
 * 研究生
 *
 * @author 
 * @email 
 * @date 2023-01-05 19:00:29
 */
public interface YanjiushengService extends IService<YanjiushengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YanjiushengVO> selectListVO(Wrapper<YanjiushengEntity> wrapper);
   	
   	YanjiushengVO selectVO(@Param("ew") Wrapper<YanjiushengEntity> wrapper);
   	
   	List<YanjiushengView> selectListView(Wrapper<YanjiushengEntity> wrapper);
   	
   	YanjiushengView selectView(@Param("ew") Wrapper<YanjiushengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YanjiushengEntity> wrapper);
   	

}

