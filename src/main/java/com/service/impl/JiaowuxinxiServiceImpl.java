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


import com.dao.JiaowuxinxiDao;
import com.entity.JiaowuxinxiEntity;
import com.service.JiaowuxinxiService;
import com.entity.vo.JiaowuxinxiVO;
import com.entity.view.JiaowuxinxiView;

@Service("jiaowuxinxiService")
public class JiaowuxinxiServiceImpl extends ServiceImpl<JiaowuxinxiDao, JiaowuxinxiEntity> implements JiaowuxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiaowuxinxiEntity> page = this.selectPage(
                new Query<JiaowuxinxiEntity>(params).getPage(),
                new EntityWrapper<JiaowuxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiaowuxinxiEntity> wrapper) {
		  Page<JiaowuxinxiView> page =new Query<JiaowuxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiaowuxinxiVO> selectListVO(Wrapper<JiaowuxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiaowuxinxiVO selectVO(Wrapper<JiaowuxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiaowuxinxiView> selectListView(Wrapper<JiaowuxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiaowuxinxiView selectView(Wrapper<JiaowuxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
