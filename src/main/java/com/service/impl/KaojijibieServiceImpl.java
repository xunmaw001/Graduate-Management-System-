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


import com.dao.KaojijibieDao;
import com.entity.KaojijibieEntity;
import com.service.KaojijibieService;
import com.entity.vo.KaojijibieVO;
import com.entity.view.KaojijibieView;

@Service("kaojijibieService")
public class KaojijibieServiceImpl extends ServiceImpl<KaojijibieDao, KaojijibieEntity> implements KaojijibieService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KaojijibieEntity> page = this.selectPage(
                new Query<KaojijibieEntity>(params).getPage(),
                new EntityWrapper<KaojijibieEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KaojijibieEntity> wrapper) {
		  Page<KaojijibieView> page =new Query<KaojijibieView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KaojijibieVO> selectListVO(Wrapper<KaojijibieEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KaojijibieVO selectVO(Wrapper<KaojijibieEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KaojijibieView> selectListView(Wrapper<KaojijibieEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KaojijibieView selectView(Wrapper<KaojijibieEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
