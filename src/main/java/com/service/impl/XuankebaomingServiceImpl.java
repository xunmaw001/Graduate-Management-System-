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


import com.dao.XuankebaomingDao;
import com.entity.XuankebaomingEntity;
import com.service.XuankebaomingService;
import com.entity.vo.XuankebaomingVO;
import com.entity.view.XuankebaomingView;

@Service("xuankebaomingService")
public class XuankebaomingServiceImpl extends ServiceImpl<XuankebaomingDao, XuankebaomingEntity> implements XuankebaomingService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuankebaomingEntity> page = this.selectPage(
                new Query<XuankebaomingEntity>(params).getPage(),
                new EntityWrapper<XuankebaomingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuankebaomingEntity> wrapper) {
		  Page<XuankebaomingView> page =new Query<XuankebaomingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XuankebaomingVO> selectListVO(Wrapper<XuankebaomingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XuankebaomingVO selectVO(Wrapper<XuankebaomingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XuankebaomingView> selectListView(Wrapper<XuankebaomingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuankebaomingView selectView(Wrapper<XuankebaomingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
