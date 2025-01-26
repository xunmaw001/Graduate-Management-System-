import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import aboutus from '@/views/modules/aboutus/list'
    import kaojibaoming from '@/views/modules/kaojibaoming/list'
    import kaojixinxi from '@/views/modules/kaojixinxi/list'
    import kaojijibie from '@/views/modules/kaojijibie/list'
    import daoshi from '@/views/modules/daoshi/list'
    import kechengxinxi from '@/views/modules/kechengxinxi/list'
    import yanjiusheng from '@/views/modules/yanjiusheng/list'
    import daoshixinxi from '@/views/modules/daoshixinxi/list'
    import systemintro from '@/views/modules/systemintro/list'
    import kechengfenlei from '@/views/modules/kechengfenlei/list'
    import chengjixinxi from '@/views/modules/chengjixinxi/list'
    import xuewei from '@/views/modules/xuewei/list'
    import xueweishenqing from '@/views/modules/xueweishenqing/list'
    import jiaowuxinxi from '@/views/modules/jiaowuxinxi/list'
    import xuankebaoming from '@/views/modules/xuankebaoming/list'
    import config from '@/views/modules/config/list'
    import xuejixinxi from '@/views/modules/xuejixinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '公告信息',
        component: news
      }
      ,{
	path: '/aboutus',
        name: '关于我们',
        component: aboutus
      }
      ,{
	path: '/kaojibaoming',
        name: '考级报名',
        component: kaojibaoming
      }
      ,{
	path: '/kaojixinxi',
        name: '考级信息',
        component: kaojixinxi
      }
      ,{
	path: '/kaojijibie',
        name: '考级级别',
        component: kaojijibie
      }
      ,{
	path: '/daoshi',
        name: '导师',
        component: daoshi
      }
      ,{
	path: '/kechengxinxi',
        name: '课程信息',
        component: kechengxinxi
      }
      ,{
	path: '/yanjiusheng',
        name: '研究生',
        component: yanjiusheng
      }
      ,{
	path: '/daoshixinxi',
        name: '导师信息',
        component: daoshixinxi
      }
      ,{
	path: '/systemintro',
        name: '系统简介',
        component: systemintro
      }
      ,{
	path: '/kechengfenlei',
        name: '课程分类',
        component: kechengfenlei
      }
      ,{
	path: '/chengjixinxi',
        name: '成绩信息',
        component: chengjixinxi
      }
      ,{
	path: '/xuewei',
        name: '学位',
        component: xuewei
      }
      ,{
	path: '/xueweishenqing',
        name: '学位申请',
        component: xueweishenqing
      }
      ,{
	path: '/jiaowuxinxi',
        name: '教务信息',
        component: jiaowuxinxi
      }
      ,{
	path: '/xuankebaoming',
        name: '选课报名',
        component: xuankebaoming
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/xuejixinxi',
        name: '学籍信息',
        component: xuejixinxi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
