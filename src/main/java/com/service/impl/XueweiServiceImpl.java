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


import com.dao.XueweiDao;
import com.entity.XueweiEntity;
import com.service.XueweiService;
import com.entity.vo.XueweiVO;
import com.entity.view.XueweiView;

@Service("xueweiService")
public class XueweiServiceImpl extends ServiceImpl<XueweiDao, XueweiEntity> implements XueweiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XueweiEntity> page = this.selectPage(
                new Query<XueweiEntity>(params).getPage(),
                new EntityWrapper<XueweiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XueweiEntity> wrapper) {
		  Page<XueweiView> page =new Query<XueweiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XueweiVO> selectListVO(Wrapper<XueweiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XueweiVO selectVO(Wrapper<XueweiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XueweiView> selectListView(Wrapper<XueweiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XueweiView selectView(Wrapper<XueweiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
