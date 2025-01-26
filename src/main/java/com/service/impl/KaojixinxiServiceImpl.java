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


import com.dao.KaojixinxiDao;
import com.entity.KaojixinxiEntity;
import com.service.KaojixinxiService;
import com.entity.vo.KaojixinxiVO;
import com.entity.view.KaojixinxiView;

@Service("kaojixinxiService")
public class KaojixinxiServiceImpl extends ServiceImpl<KaojixinxiDao, KaojixinxiEntity> implements KaojixinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KaojixinxiEntity> page = this.selectPage(
                new Query<KaojixinxiEntity>(params).getPage(),
                new EntityWrapper<KaojixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KaojixinxiEntity> wrapper) {
		  Page<KaojixinxiView> page =new Query<KaojixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KaojixinxiVO> selectListVO(Wrapper<KaojixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KaojixinxiVO selectVO(Wrapper<KaojixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KaojixinxiView> selectListView(Wrapper<KaojixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KaojixinxiView selectView(Wrapper<KaojixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
