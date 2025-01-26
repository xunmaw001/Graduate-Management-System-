import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import yanjiushengList from '../pages/yanjiusheng/list'
import yanjiushengDetail from '../pages/yanjiusheng/detail'
import yanjiushengAdd from '../pages/yanjiusheng/add'
import daoshiList from '../pages/daoshi/list'
import daoshiDetail from '../pages/daoshi/detail'
import daoshiAdd from '../pages/daoshi/add'
import daoshixinxiList from '../pages/daoshixinxi/list'
import daoshixinxiDetail from '../pages/daoshixinxi/detail'
import daoshixinxiAdd from '../pages/daoshixinxi/add'
import kechengfenleiList from '../pages/kechengfenlei/list'
import kechengfenleiDetail from '../pages/kechengfenlei/detail'
import kechengfenleiAdd from '../pages/kechengfenlei/add'
import kechengxinxiList from '../pages/kechengxinxi/list'
import kechengxinxiDetail from '../pages/kechengxinxi/detail'
import kechengxinxiAdd from '../pages/kechengxinxi/add'
import xuankebaomingList from '../pages/xuankebaoming/list'
import xuankebaomingDetail from '../pages/xuankebaoming/detail'
import xuankebaomingAdd from '../pages/xuankebaoming/add'
import kaojijibieList from '../pages/kaojijibie/list'
import kaojijibieDetail from '../pages/kaojijibie/detail'
import kaojijibieAdd from '../pages/kaojijibie/add'
import kaojixinxiList from '../pages/kaojixinxi/list'
import kaojixinxiDetail from '../pages/kaojixinxi/detail'
import kaojixinxiAdd from '../pages/kaojixinxi/add'
import kaojibaomingList from '../pages/kaojibaoming/list'
import kaojibaomingDetail from '../pages/kaojibaoming/detail'
import kaojibaomingAdd from '../pages/kaojibaoming/add'
import xuejixinxiList from '../pages/xuejixinxi/list'
import xuejixinxiDetail from '../pages/xuejixinxi/detail'
import xuejixinxiAdd from '../pages/xuejixinxi/add'
import xueweiList from '../pages/xuewei/list'
import xueweiDetail from '../pages/xuewei/detail'
import xueweiAdd from '../pages/xuewei/add'
import xueweishenqingList from '../pages/xueweishenqing/list'
import xueweishenqingDetail from '../pages/xueweishenqing/detail'
import xueweishenqingAdd from '../pages/xueweishenqing/add'
import chengjixinxiList from '../pages/chengjixinxi/list'
import chengjixinxiDetail from '../pages/chengjixinxi/detail'
import chengjixinxiAdd from '../pages/chengjixinxi/add'
import jiaowuxinxiList from '../pages/jiaowuxinxi/list'
import jiaowuxinxiDetail from '../pages/jiaowuxinxi/detail'
import jiaowuxinxiAdd from '../pages/jiaowuxinxi/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'yanjiusheng',
					component: yanjiushengList
				},
				{
					path: 'yanjiushengDetail',
					component: yanjiushengDetail
				},
				{
					path: 'yanjiushengAdd',
					component: yanjiushengAdd
				},
				{
					path: 'daoshi',
					component: daoshiList
				},
				{
					path: 'daoshiDetail',
					component: daoshiDetail
				},
				{
					path: 'daoshiAdd',
					component: daoshiAdd
				},
				{
					path: 'daoshixinxi',
					component: daoshixinxiList
				},
				{
					path: 'daoshixinxiDetail',
					component: daoshixinxiDetail
				},
				{
					path: 'daoshixinxiAdd',
					component: daoshixinxiAdd
				},
				{
					path: 'kechengfenlei',
					component: kechengfenleiList
				},
				{
					path: 'kechengfenleiDetail',
					component: kechengfenleiDetail
				},
				{
					path: 'kechengfenleiAdd',
					component: kechengfenleiAdd
				},
				{
					path: 'kechengxinxi',
					component: kechengxinxiList
				},
				{
					path: 'kechengxinxiDetail',
					component: kechengxinxiDetail
				},
				{
					path: 'kechengxinxiAdd',
					component: kechengxinxiAdd
				},
				{
					path: 'xuankebaoming',
					component: xuankebaomingList
				},
				{
					path: 'xuankebaomingDetail',
					component: xuankebaomingDetail
				},
				{
					path: 'xuankebaomingAdd',
					component: xuankebaomingAdd
				},
				{
					path: 'kaojijibie',
					component: kaojijibieList
				},
				{
					path: 'kaojijibieDetail',
					component: kaojijibieDetail
				},
				{
					path: 'kaojijibieAdd',
					component: kaojijibieAdd
				},
				{
					path: 'kaojixinxi',
					component: kaojixinxiList
				},
				{
					path: 'kaojixinxiDetail',
					component: kaojixinxiDetail
				},
				{
					path: 'kaojixinxiAdd',
					component: kaojixinxiAdd
				},
				{
					path: 'kaojibaoming',
					component: kaojibaomingList
				},
				{
					path: 'kaojibaomingDetail',
					component: kaojibaomingDetail
				},
				{
					path: 'kaojibaomingAdd',
					component: kaojibaomingAdd
				},
				{
					path: 'xuejixinxi',
					component: xuejixinxiList
				},
				{
					path: 'xuejixinxiDetail',
					component: xuejixinxiDetail
				},
				{
					path: 'xuejixinxiAdd',
					component: xuejixinxiAdd
				},
				{
					path: 'xuewei',
					component: xueweiList
				},
				{
					path: 'xueweiDetail',
					component: xueweiDetail
				},
				{
					path: 'xueweiAdd',
					component: xueweiAdd
				},
				{
					path: 'xueweishenqing',
					component: xueweishenqingList
				},
				{
					path: 'xueweishenqingDetail',
					component: xueweishenqingDetail
				},
				{
					path: 'xueweishenqingAdd',
					component: xueweishenqingAdd
				},
				{
					path: 'chengjixinxi',
					component: chengjixinxiList
				},
				{
					path: 'chengjixinxiDetail',
					component: chengjixinxiDetail
				},
				{
					path: 'chengjixinxiAdd',
					component: chengjixinxiAdd
				},
				{
					path: 'jiaowuxinxi',
					component: jiaowuxinxiList
				},
				{
					path: 'jiaowuxinxiDetail',
					component: jiaowuxinxiDetail
				},
				{
					path: 'jiaowuxinxiAdd',
					component: jiaowuxinxiAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
