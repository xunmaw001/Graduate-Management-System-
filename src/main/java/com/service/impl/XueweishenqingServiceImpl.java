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


import com.dao.XueweishenqingDao;
import com.entity.XueweishenqingEntity;
import com.service.XueweishenqingService;
import com.entity.vo.XueweishenqingVO;
import com.entity.view.XueweishenqingView;

@Service("xueweishenqingService")
public class XueweishenqingServiceImpl extends ServiceImpl<XueweishenqingDao, XueweishenqingEntity> implements XueweishenqingService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XueweishenqingEntity> page = this.selectPage(
                new Query<XueweishenqingEntity>(params).getPage(),
                new EntityWrapper<XueweishenqingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XueweishenqingEntity> wrapper) {
		  Page<XueweishenqingView> page =new Query<XueweishenqingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XueweishenqingVO> selectListVO(Wrapper<XueweishenqingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XueweishenqingVO selectVO(Wrapper<XueweishenqingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XueweishenqingView> selectListView(Wrapper<XueweishenqingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XueweishenqingView selectView(Wrapper<XueweishenqingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
