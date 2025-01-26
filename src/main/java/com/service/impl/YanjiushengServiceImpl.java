package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YanjiushengDao;
import com.entity.YanjiushengEntity;
import com.service.YanjiushengService;
import com.entity.vo.YanjiushengVO;
import com.entity.view.YanjiushengView;

@Service("yanjiushengService")
public class YanjiushengServiceImpl extends ServiceImpl<YanjiushengDao, YanjiushengEntity> implements YanjiushengService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YanjiushengEntity> page = this.selectPage(
                new Query<YanjiushengEntity>(params).getPage(),
                new EntityWrapper<YanjiushengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YanjiushengEntity> wrapper) {
		  Page<YanjiushengView> page =new Query<YanjiushengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YanjiushengVO> selectListVO(Wrapper<YanjiushengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YanjiushengVO selectVO(Wrapper<YanjiushengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YanjiushengView> selectListView(Wrapper<YanjiushengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YanjiushengView selectView(Wrapper<YanjiushengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
