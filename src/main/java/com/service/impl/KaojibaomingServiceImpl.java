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


import com.dao.KaojibaomingDao;
import com.entity.KaojibaomingEntity;
import com.service.KaojibaomingService;
import com.entity.vo.KaojibaomingVO;
import com.entity.view.KaojibaomingView;

@Service("kaojibaomingService")
public class KaojibaomingServiceImpl extends ServiceImpl<KaojibaomingDao, KaojibaomingEntity> implements KaojibaomingService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KaojibaomingEntity> page = this.selectPage(
                new Query<KaojibaomingEntity>(params).getPage(),
                new EntityWrapper<KaojibaomingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KaojibaomingEntity> wrapper) {
		  Page<KaojibaomingView> page =new Query<KaojibaomingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KaojibaomingVO> selectListVO(Wrapper<KaojibaomingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KaojibaomingVO selectVO(Wrapper<KaojibaomingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KaojibaomingView> selectListView(Wrapper<KaojibaomingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KaojibaomingView selectView(Wrapper<KaojibaomingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
