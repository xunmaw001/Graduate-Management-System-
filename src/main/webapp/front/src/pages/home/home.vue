<template>
<div class="home-preview" :style='{"width":"1200px","margin":"10px auto"}'>
	<el-row type="flex" :gutter="5" justify="center" style="width: 100%">
		<el-col :span="3" v-if="queryList.length>1">
			<el-select v-model="queryIndex">
				<el-option
				  v-for="(item,index) in queryList"
				  :key="index"
				  :label="item.queryName"
				  :value="index"
				></el-option>
			</el-select>
		</el-col>
		<el-col :span="3" v-if="queryIndex==0">
			<el-input v-model="kechengxinxikechengmingcheng" placeholder="课程名称"></el-input>
		</el-col>
		<el-col :span="3" v-if="queryIndex==0">
			<el-button type="primary" @click="search('kechengxinxi')">搜索</el-button>
		</el-col>
	</el-row>




	
<div class="news" :style='{"padding":"20px 0 0","margin":"0 0 10px","position":"relative","background":"url(http://codegen.caihongy.cn/20220905/d92a6209dd444337ad86809c54c30fc1.png) center center/cover no-repeat"}'>
	<div v-if="false" class="idea newsIdea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"margin":"10px auto","borderColor":"#4D8CD0","top":"20px","textAlign":"center","background":"#fff","borderWidth":"10px 1px 0","width":"570px","lineHeight":"60px","position":"absolute","right":"20px","borderStyle":"solid","height":"60px"}'>
		<span :style='{"color":"#4D8CD0","fontSize":"18px"}'>公告信息</span>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	<!-- 样式十 -->
	<div v-if="newsList.length" class="list list10 index-pv1" :style='{"width":"100%","padding":"10px","background":"transparent","display":"flex","height":"auto"}'>
	  <div v-if="newsList.length>0" @click="toDetail('newsDetail', newsList[0])" :style='{"margin":"0 10px","overflow":"hidden","borderRadius":"10px","background":"transparent","width":"570px","position":"relative","height":"400px"}' class="new10-list-item animation-box">
	    <img :style='{"width":"100%","objectFit":"cover","display":"block","height":"100%"}' :src="baseUrl + newsList[0].picture" alt="">
		<div :style='{"padding":"0 10px","whiteSpace":"nowrap","color":"#fff","bottom":"34px","display":"inline-block","overflow":"hidden","background":"rgba(0,0,0,.5)","width":"80%","fontSize":"16px","lineHeight":"44px","textOverflow":"ellipsis","position":"absolute","height":"44px"}' class="new9-list-item-title line1">{{newsList[0].title}}</div>
		<div :style='{"color":"#fff","alignItems":"center","bottom":"0","background":"rgba(0,0,0,.5)","display":"flex","width":"20%","fontSize":"12px","position":"absolute","right":"0","justifyContent":"center","height":"78px"}' class="new9-list-item-time">{{newsList[0].addtime.split(' ')[0]}}</div>
	    <div :style='{"padding":"0 10px","whiteSpace":"nowrap","color":"#fff","bottom":"0","display":"inline-block","overflow":"hidden","background":"rgba(0,0,0,.5)","width":"80%","fontSize":"14px","lineHeight":"34px","position":"absolute","textOverflow":"ellipsis","height":"34px"}' class="new9-list-item-descript line2">{{newsList[0].introduction}}</div>
		<div :style='{"padding":"0","margin":"0","color":"#999","background":"0","bottom":"0","display":"inline-block","fontSize":"0","lineHeight":"24px","position":"absolute"}' class="new9-list-item-identification"> </div>
	  </div>
	  <div v-if="newsList.length>1" :style='{"border":"1px solid #000","width":"570px","margin":"60px 10px 0","position":"relative","background":"#fff","height":"auto"}'>
	    <div v-for="(item,index) in newsList" v-if="index<4 && index>0" :key="index" @click="toDetail('newsDetail', item)" :style='{"background":"#fff","flexDirection":"column","display":"flex","width":"100%","position":"relative","justifyContent":"center","height":"calc(100% / 3)"}' class="new10-list-item animation-box">
	        <div :style='{"padding":"0 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#9E9E9E","display":"inline-block","width":"100%","fontSize":"16px","lineHeight":"2","textOverflow":"ellipsis"}' class="new9-list-item-title line1">{{ item.title }}</div>
	        <div :style='{"fontSize":"0","lineHeight":"24px","position":"absolute","right":"10px","color":"#999","top":"10px"}' class="new9-list-item-time">{{ item.addtime.split(' ')[0] }}</div>
			<div :style='{"padding":"0 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#9E9E9E","display":"inline-block","width":"100%","fontSize":"14px","lineHeight":"2","textOverflow":"ellipsis"}' class="new9-list-item-descript line2">{{ item.introduction }}</div>
			<div :style='{"padding":"0","fontSize":"0","lineHeight":"24px","color":"#999","background":"#fff","display":"inline-block"}' class="new9-list-item-identification"> </div>
	    </div>
	  </div>
	</div>
	
	<div @click="moreBtn('news')" :style='{"border":"0","margin":"10px auto","borderColor":"#4D8CD0","textAlign":"center","background":"#fff","borderWidth":"1px 1px 10px","display":"block","width":"210px","lineHeight":"50px","borderStyle":"solid"}'>
		<span :style='{"color":"#4D8CD0","fontSize":"16px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#f5f5f5","fontSize":"0"}' class="el-icon-d-arrow-right"></i>
	</div>
	
</div>


<div class="lists" :style='{"margin":"0 0 10px","background":"url(http://codegen.caihongy.cn/20220905/fc873fa55141411684b348d75525756a.png) center center/cover no-repeat"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"width":"100%","padding":"40px 0 40px 240px","lineHeight":"54px","textAlign":"center","background":"transparent"}'>
	  <span :style='{"color":"#4D8CD0","fontSize":"24px","fontWeight":"bold"}'>导师信息展示</span>
	</div>
	
	
	
	
	
	
	
	
	
	
	<!-- 样式九 -->
	<div class="list list9 index-pv1" :style='{"width":"100%","padding":"10px","background":"transparent","height":"auto"}'>
		<div class="list-4-body" :style='{"width":"1180px","margin":"0 0 20px","alignItems":"center","display":"flex","height":"auto"}'>
			<div v-if="daoshixinxiList.length>0" @click="toDetail('daoshixinxiDetail', daoshixinxiList[0])" class="list-4-item animation-box item-1" :style='{"padding":"10px 20px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","borderRadius":"10px","background":"#4D8CD0","width":"570px","position":"relative","height":"200px"}'>
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-if="daoshixinxiList[0].tupian.substr(0,4)=='http'" :src="daoshixinxiList[0].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-else :src="baseUrl + (daoshixinxiList[0].tupian?daoshixinxiList[0].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#fff","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>{{daoshixinxiList[0].daoshixingming}}</div>
			</div>
			<div v-if="daoshixinxiList.length>1" @click="toDetail('daoshixinxiDetail', daoshixinxiList[1])" class="list-4-item animation-box item-2" :style='{"padding":"10px 20px","boxShadow":" 0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","borderRadius":"10px","background":"#fff","width":"570px","position":"relative","height":"200px"}'>
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-if="daoshixinxiList[1].tupian.substr(0,4)=='http'" :src="daoshixinxiList[1].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-else :src="baseUrl + (daoshixinxiList[1].tupian?daoshixinxiList[1].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>{{daoshixinxiList[1].daoshixingming}}</div>
			</div>
		</div>
		<div class="list-4-body" :style='{"width":"1180px","alignItems":"flex-start","justifyContent":"space-between","display":"flex","height":"auto"}'>
			<div v-if="daoshixinxiList.length>2" @click="toDetail('daoshixinxiDetail', daoshixinxiList[2])" class="list-4-item animation-box item-3" :style='{"border":"4px solid #4D8CD0","padding":"10px 20px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","borderRadius":"10px","background":"#fff","width":"570px","position":"relative","height":"200px"}'>
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-if="daoshixinxiList[2].tupian.substr(0,4)=='http'" :src="daoshixinxiList[2].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-else :src="baseUrl + (daoshixinxiList[2].tupian?daoshixinxiList[2].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>{{daoshixinxiList[2].daoshixingming}}</div>
			</div>
			<div v-if="daoshixinxiList.length>3" @click="toDetail('daoshixinxiDetail', daoshixinxiList[3])" class="list-4-item animation-box item-4" :style='{"width":"270px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"10px","height":"auto"}'>
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-if="daoshixinxiList[3].tupian.substr(0,4)=='http'" :src="daoshixinxiList[3].tupian.split(',')[0]" alt="" />
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-else :src="baseUrl + (daoshixinxiList[3].tupian?daoshixinxiList[3].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>{{daoshixinxiList[3].daoshixingming}}</div>
			</div>
			<div v-if="daoshixinxiList.length>4" @click="toDetail('daoshixinxiDetail', daoshixinxiList[4])" class="list-4-item animation-box item-5" :style='{"width":"270px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"10px","height":"auto"}'>
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-if="daoshixinxiList[4].tupian.substr(0,4)=='http'" :src="daoshixinxiList[4].tupian.split(',')[0]" alt="" />
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-else :src="baseUrl + (daoshixinxiList[4].tupian?daoshixinxiList[4].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>{{daoshixinxiList[4].daoshixingming}}</div>
			</div>
		</div>
	</div>
	
	<div @click="moreBtn('daoshixinxi')" :style='{"border":"0","margin":"10px auto","borderColor":"#4D8CD0","textAlign":"center","background":"#fff","borderWidth":"1px 1px 10px","display":"block","width":"210px","lineHeight":"50px","borderStyle":"solid"}'>
		<span :style='{"color":"#4D8CD0","fontSize":"16px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#f5f5f5","fontSize":"0"}' class="el-icon-d-arrow-right"></i>
	</div>
	

</div>
<div class="lists" :style='{"margin":"0 0 10px","background":"url(http://codegen.caihongy.cn/20220905/fc873fa55141411684b348d75525756a.png) center center/cover no-repeat"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"width":"100%","padding":"40px 0 40px 240px","lineHeight":"54px","textAlign":"center","background":"transparent"}'>
	  <span :style='{"color":"#4D8CD0","fontSize":"24px","fontWeight":"bold"}'>课程信息展示</span>
	</div>
	
	
	
	
	
	
	
	
	
	
	<!-- 样式九 -->
	<div class="list list9 index-pv1" :style='{"width":"100%","padding":"10px","background":"transparent","height":"auto"}'>
		<div class="list-4-body" :style='{"width":"1180px","margin":"0 0 20px","alignItems":"center","display":"flex","height":"auto"}'>
			<div v-if="kechengxinxiList.length>0" @click="toDetail('kechengxinxiDetail', kechengxinxiList[0])" class="list-4-item animation-box item-1" :style='{"padding":"10px 20px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","borderRadius":"10px","background":"#4D8CD0","width":"570px","position":"relative","height":"200px"}'>
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-if="kechengxinxiList[0].tupian.substr(0,4)=='http'" :src="kechengxinxiList[0].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-else :src="baseUrl + (kechengxinxiList[0].tupian?kechengxinxiList[0].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#fff","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程名称:{{kechengxinxiList[0].kechengmingcheng}}</div>
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#fff","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程类型:{{kechengxinxiList[0].kechengleixing}}</div>
			</div>
			<div v-if="kechengxinxiList.length>1" @click="toDetail('kechengxinxiDetail', kechengxinxiList[1])" class="list-4-item animation-box item-2" :style='{"padding":"10px 20px","boxShadow":" 0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","borderRadius":"10px","background":"#fff","width":"570px","position":"relative","height":"200px"}'>
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-if="kechengxinxiList[1].tupian.substr(0,4)=='http'" :src="kechengxinxiList[1].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-else :src="baseUrl + (kechengxinxiList[1].tupian?kechengxinxiList[1].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程名称:{{kechengxinxiList[1].kechengmingcheng}}</div>
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程类型:{{kechengxinxiList[1].kechengleixing}}</div>
			</div>
		</div>
		<div class="list-4-body" :style='{"width":"1180px","alignItems":"flex-start","justifyContent":"space-between","display":"flex","height":"auto"}'>
			<div v-if="kechengxinxiList.length>2" @click="toDetail('kechengxinxiDetail', kechengxinxiList[2])" class="list-4-item animation-box item-3" :style='{"border":"4px solid #4D8CD0","padding":"10px 20px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","borderRadius":"10px","background":"#fff","width":"570px","position":"relative","height":"200px"}'>
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-if="kechengxinxiList[2].tupian.substr(0,4)=='http'" :src="kechengxinxiList[2].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-else :src="baseUrl + (kechengxinxiList[2].tupian?kechengxinxiList[2].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程名称:{{kechengxinxiList[2].kechengmingcheng}}</div>
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程类型:{{kechengxinxiList[2].kechengleixing}}</div>
			</div>
			<div v-if="kechengxinxiList.length>3" @click="toDetail('kechengxinxiDetail', kechengxinxiList[3])" class="list-4-item animation-box item-4" :style='{"width":"270px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"10px","height":"auto"}'>
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-if="kechengxinxiList[3].tupian.substr(0,4)=='http'" :src="kechengxinxiList[3].tupian.split(',')[0]" alt="" />
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-else :src="baseUrl + (kechengxinxiList[3].tupian?kechengxinxiList[3].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程名称:{{kechengxinxiList[3].kechengmingcheng}}</div>
				<div class="list-4-item-title line1" :style='{"color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程类型:{{kechengxinxiList[3].kechengleixing}}</div>
			</div>
			<div v-if="kechengxinxiList.length>4" @click="toDetail('kechengxinxiDetail', kechengxinxiList[4])" class="list-4-item animation-box item-5" :style='{"width":"270px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"10px","height":"auto"}'>
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-if="kechengxinxiList[4].tupian.substr(0,4)=='http'" :src="kechengxinxiList[4].tupian.split(',')[0]" alt="" />
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-else :src="baseUrl + (kechengxinxiList[4].tupian?kechengxinxiList[4].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程名称:{{kechengxinxiList[4].kechengmingcheng}}</div>
				<div class="list-4-item-title line1" :style='{"color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程类型:{{kechengxinxiList[4].kechengleixing}}</div>
			</div>
		</div>
	</div>
	
	<div @click="moreBtn('kechengxinxi')" :style='{"border":"0","margin":"10px auto","borderColor":"#4D8CD0","textAlign":"center","background":"#fff","borderWidth":"1px 1px 10px","display":"block","width":"210px","lineHeight":"50px","borderStyle":"solid"}'>
		<span :style='{"color":"#4D8CD0","fontSize":"16px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#f5f5f5","fontSize":"0"}' class="el-icon-d-arrow-right"></i>
	</div>
	

</div>
<div class="lists" :style='{"margin":"0 0 10px","background":"url(http://codegen.caihongy.cn/20220905/fc873fa55141411684b348d75525756a.png) center center/cover no-repeat"}'>
	<div v-if="false" class="idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
		<div class="box1" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box2" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box3" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box4" :style='{"width":"20%","background":"#fff","height":"80px"}'></div>
		<div class="box5" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box6" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box7" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box8" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box9" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
		<div class="box10" :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}'></div>
	</div>
	
	<div class="title" :style='{"width":"100%","padding":"40px 0 40px 240px","lineHeight":"54px","textAlign":"center","background":"transparent"}'>
	  <span :style='{"color":"#4D8CD0","fontSize":"24px","fontWeight":"bold"}'>考级信息展示</span>
	</div>
	
	
	
	
	
	
	
	
	
	
	<!-- 样式九 -->
	<div class="list list9 index-pv1" :style='{"width":"100%","padding":"10px","background":"transparent","height":"auto"}'>
		<div class="list-4-body" :style='{"width":"1180px","margin":"0 0 20px","alignItems":"center","display":"flex","height":"auto"}'>
			<div v-if="kaojixinxiList.length>0" @click="toDetail('kaojixinxiDetail', kaojixinxiList[0])" class="list-4-item animation-box item-1" :style='{"padding":"10px 20px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","borderRadius":"10px","background":"#4D8CD0","width":"570px","position":"relative","height":"200px"}'>
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-if="kaojixinxiList[0].tupian.substr(0,4)=='http'" :src="kaojixinxiList[0].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-else :src="baseUrl + (kaojixinxiList[0].tupian?kaojixinxiList[0].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#fff","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程名称:{{kaojixinxiList[0].kechengmingcheng}}</div>
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#fff","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>考级级别:{{kaojixinxiList[0].kaojijibie}}</div>
			</div>
			<div v-if="kaojixinxiList.length>1" @click="toDetail('kaojixinxiDetail', kaojixinxiList[1])" class="list-4-item animation-box item-2" :style='{"padding":"10px 20px","boxShadow":" 0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","borderRadius":"10px","background":"#fff","width":"570px","position":"relative","height":"200px"}'>
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-if="kaojixinxiList[1].tupian.substr(0,4)=='http'" :src="kaojixinxiList[1].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-else :src="baseUrl + (kaojixinxiList[1].tupian?kaojixinxiList[1].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程名称:{{kaojixinxiList[1].kechengmingcheng}}</div>
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>考级级别:{{kaojixinxiList[1].kaojijibie}}</div>
			</div>
		</div>
		<div class="list-4-body" :style='{"width":"1180px","alignItems":"flex-start","justifyContent":"space-between","display":"flex","height":"auto"}'>
			<div v-if="kaojixinxiList.length>2" @click="toDetail('kaojixinxiDetail', kaojixinxiList[2])" class="list-4-item animation-box item-3" :style='{"border":"4px solid #4D8CD0","padding":"10px 20px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","borderRadius":"10px","background":"#fff","width":"570px","position":"relative","height":"200px"}'>
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-if="kaojixinxiList[2].tupian.substr(0,4)=='http'" :src="kaojixinxiList[2].tupian.split(',')[0]" alt="" />
				<img :style='{"width":"calc(50% - 20px)","position":"absolute","objectFit":"cover","top":"10px","left":"20px","height":"calc(100% - 20px)"}' v-else :src="baseUrl + (kaojixinxiList[2].tupian?kaojixinxiList[2].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程名称:{{kaojixinxiList[2].kechengmingcheng}}</div>
				<div class="list-4-item-title line1" :style='{"margin":"0 0 0 50%","color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"calc(50% - 20px)","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>考级级别:{{kaojixinxiList[2].kaojijibie}}</div>
			</div>
			<div v-if="kaojixinxiList.length>3" @click="toDetail('kaojixinxiDetail', kaojixinxiList[3])" class="list-4-item animation-box item-4" :style='{"width":"270px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"10px","height":"auto"}'>
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-if="kaojixinxiList[3].tupian.substr(0,4)=='http'" :src="kaojixinxiList[3].tupian.split(',')[0]" alt="" />
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-else :src="baseUrl + (kaojixinxiList[3].tupian?kaojixinxiList[3].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程名称:{{kaojixinxiList[3].kechengmingcheng}}</div>
				<div class="list-4-item-title line1" :style='{"color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>考级级别:{{kaojixinxiList[3].kaojijibie}}</div>
			</div>
			<div v-if="kaojixinxiList.length>4" @click="toDetail('kaojixinxiDetail', kaojixinxiList[4])" class="list-4-item animation-box item-5" :style='{"width":"270px","boxShadow":"0px 4px 10px 0px rgba(0,0,0,0.302)","margin":"0 10px","overflow":"hidden","borderRadius":"10px","height":"auto"}'>
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-if="kaojixinxiList[4].tupian.substr(0,4)=='http'" :src="kaojixinxiList[4].tupian.split(',')[0]" alt="" />
				<img :style='{"objectFit":"cover","width":"100%","height":"280px"}' v-else :src="baseUrl + (kaojixinxiList[4].tupian?kaojixinxiList[4].tupian.split(',')[0]:'')" alt="" />
				<div class="list-4-item-title line1" :style='{"color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>课程名称:{{kaojixinxiList[4].kechengmingcheng}}</div>
				<div class="list-4-item-title line1" :style='{"color":"#4D8CD0","alignItems":"center","textAlign":"center","display":"flex","width":"100%","lineHeight":"32px","fontSize":"15px","justifyContent":"center","fontWeight":"bold"}'>考级级别:{{kaojixinxiList[4].kaojijibie}}</div>
			</div>
		</div>
	</div>
	
	<div @click="moreBtn('kaojixinxi')" :style='{"border":"0","margin":"10px auto","borderColor":"#4D8CD0","textAlign":"center","background":"#fff","borderWidth":"1px 1px 10px","display":"block","width":"210px","lineHeight":"50px","borderStyle":"solid"}'>
		<span :style='{"color":"#4D8CD0","fontSize":"16px"}'>查看更多</span>
		<i v-if="true" :style='{"color":"#f5f5f5","fontSize":"0"}' class="el-icon-d-arrow-right"></i>
	</div>
	

</div>


</div>
</template>

<script>
  export default {
    //数据集合
    data() {
      return {
        baseUrl: '',
        aboutUsDetail: {},
        systemIntroductionDetail: {},
        queryList:[
          {
              queryName:"课程名称",
          },
        ],
        queryIndex: 0,
        kechengxinxikechengmingcheng: '',
        newsList: [],

        daoshixinxiList: [],
        kechengxinxiList: [],
        kaojixinxiList: [],
      }
    },
    created() {
      this.baseUrl = this.$config.baseUrl;
      this.getNewsList();
      this.getAboutUs();
      this.getSystemIntroduction();
      this.getList();
    },
    //方法集合
    methods: {
      getAboutUs() {
          this.$http.get('aboutus/detail/1', {}).then(res => {
            if(res.data.code == 0) {
              this.aboutUsDetail = res.data.data;
            }
          })
      },
      getSystemIntroduction() {
          this.$http.get('systemintro/detail/1', {}).then(res => {
            if(res.data.code == 0) {
              this.systemIntroductionDetail = res.data.data;
            }
          })
      },
      search(tablename) {
        if (this.queryIndex == 0 && this.kechengxinxikechengmingcheng) {
          this.$router.push({path: '/index/' + tablename, query: {indexQueryCondition: this.kechengxinxikechengmingcheng}});
        }
      },
		getNewsList() {
			this.$http.get('news/list', {params: {
				page: 1,
				limit: 6,
			order: 'desc'}}).then(res => {
				if (res.data.code == 0) {
					this.newsList = res.data.data.list;
					
					
				}
			});
		},
		getList() {
          let autoSortUrl = "";
			
			this.$http.get('daoshixinxi/list', {params: {
				page: 1,
				limit: 6,
			}}).then(res => {
				if (res.data.code == 0) {
					this.daoshixinxiList = res.data.data.list;
					
					// 商品列表样式五
					
				}
			});
			this.$http.get('kechengxinxi/list', {params: {
				page: 1,
				limit: 6,
			}}).then(res => {
				if (res.data.code == 0) {
					this.kechengxinxiList = res.data.data.list;
					
					// 商品列表样式五
					
				}
			});
			this.$http.get('kaojixinxi/list', {params: {
				page: 1,
				limit: 6,
			}}).then(res => {
				if (res.data.code == 0) {
					this.kaojixinxiList = res.data.data.list;
					
					// 商品列表样式五
					
				}
			});
		},
		toDetail(path, item) {
			this.$router.push({path: '/index/' + path, query: {detailObj: JSON.stringify(item)}});
		},
		moreBtn(path) {
			this.$router.push({path: '/index/' + path});
		}
    }
  }
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.home-preview {
	
		.recommend {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
        }
        
        .list5 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1.1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
		
		.news {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list6 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list6 .swiper-button-next {
				left: auto;
				right: 10px;
			}
			
			.list6 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	
		.lists {
			.list3 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list3 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list3 .swiper-button-next {
				left: auto;
				right: 10px;
        }
        
        .list3 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-prev {
				left: 10px;
				right: auto;
			}
			
			.list5 .swiper-button-prev::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 .swiper-button-next {
            left: auto;
            right: 10px;
			}
			
			.list5 .swiper-button-next::after {
				color: rgb(64, 158, 255);
			}
			
			.list5 {
				.swiper-slide-prev {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-next {
					position: relative;
					z-index: 3;
				}
		
				.swiper-slide-active {
					position: relative;
					z-index: 5;
				}
			}
			
			.index-pv1 .animation-box {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				z-index: initial;
			}
			
			.index-pv1 .animation-box:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
				z-index: 1;
			}
			
			.index-pv1 .animation-box img {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			}
			
			.index-pv1 .animation-box img:hover {
				-webkit-perspective: 1000px;
				perspective: 1000px;
				transition: 0.3s;
			}
		}
	}
</style>
