<template>
<div :style='{"width":"1200px","padding":"20px","margin":"10px auto","position":"relative","background":"#f5f5f5"}'>
    <el-form
      class="add-update-preview"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"transparent"}' label="教务编号" prop="jiaowubianhao">
              <el-input v-model="ruleForm.jiaowubianhao" placeholder="教务编号" readonly></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"transparent"}' label="课程名称" prop="kechengmingcheng">
            <el-select  @change="kechengmingchengChange" v-model="ruleForm.kechengmingcheng" placeholder="请选择课程名称">
              <el-option
                  v-for="(item,index) in kechengmingchengOptions"
                  :key="index"
                  :label="item"
                  :value="item">
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"transparent"}' label="课程分类" prop="kechengfenlei">
            <el-input v-model="ruleForm.kechengfenlei" 
                placeholder="课程分类" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"transparent"}' label="课程类型" prop="kechengleixing">
            <el-input v-model="ruleForm.kechengleixing" 
                placeholder="课程类型" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"transparent"}' label="发布时间" prop="fabushijian" >
              <el-date-picker
                  format="yyyy 年 MM 月 dd 日"
                  value-format="yyyy-MM-dd"
                  v-model="ruleForm.fabushijian" 
                  type="date"
                  placeholder="发布时间">
              </el-date-picker> 
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"transparent"}' label="研究生账号" prop="yanjiushengzhanghao">
            <el-select  @change="yanjiushengzhanghaoChange" v-model="ruleForm.yanjiushengzhanghao" placeholder="请选择研究生账号">
              <el-option
                  v-for="(item,index) in yanjiushengzhanghaoOptions"
                  :key="index"
                  :label="item"
                  :value="item">
              </el-option>
            </el-select>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"transparent"}' label="研究生姓名" prop="yanjiushengxingming">
            <el-input v-model="ruleForm.yanjiushengxingming" 
                placeholder="研究生姓名" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"transparent"}' label="导师工号" prop="daoshigonghao">
            <el-input v-model="ruleForm.daoshigonghao" 
                placeholder="导师工号" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"transparent"}' label="导师姓名" prop="daoshixingming">
            <el-input v-model="ruleForm.daoshixingming" 
                placeholder="导师姓名" clearable ></el-input>
          </el-form-item>
          <el-form-item :style='{"padding":"10px","margin":"0 0 10px","background":"transparent"}' label="教学任务" prop="jiaoxuerenwu">
            <editor 
                :style='{"padding":"0","boxShadow":"0 0 0px rgba(75,223,201,.5)","margin":"0","borderColor":"#000","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}'
                v-model="ruleForm.jiaoxuerenwu" 
                class="editor" 
                action="file/upload">
            </editor>
          </el-form-item>

      <el-form-item :style='{"padding":"0","margin":"0"}'>
        <el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"20px 20px 0 0","background":"#4D8CD0","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  type="primary" @click="onSubmit">提交</el-button>
        <el-button :style='{"cursor":"pointer","border":"none","padding":"0","margin":"0","outline":"none","color":"#4D8CD0","borderRadius":"20px 20px 0 0","background":"#D4E7FF","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
</div>
</template>

<script>
  export default {
    data() {
      return {
        id: '',
        type: '',
        userTableName: localStorage.getItem('UserTableName'),
        ruleForm: {
          jiaowubianhao: this.getUUID(),
          kechengmingcheng: '',
          kechengfenlei: '',
          kechengleixing: '',
          jiaoxuerenwu: '',
          fabushijian: '',
          yanjiushengzhanghao: '',
          yanjiushengxingming: '',
          daoshigonghao: '',
          daoshixingming: '',
        },
        kechengmingchengOptions: [],
        yanjiushengzhanghaoOptions: [],
        rules: {
          jiaowubianhao: [
          ],
          kechengmingcheng: [
          ],
          kechengfenlei: [
          ],
          kechengleixing: [
          ],
          jiaoxuerenwu: [
          ],
          fabushijian: [
          ],
          yanjiushengzhanghao: [
          ],
          yanjiushengxingming: [
          ],
          daoshigonghao: [
          ],
          daoshixingming: [
          ],
        },
      };
    },
    computed: {



    },
    created() {
	  //this.bg();
      let type = this.$route.query.type ? this.$route.query.type : '';
      this.init(type);
      this.ruleForm.fabushijian = this.getCurDate()
    },
    methods: {
      getMakeZero(s) {
          return s < 10 ? '0' + s : s;
      },
      // 下载
      download(file){
        window.open(`${file}`)
      },
      // 初始化
      init(type) {
        this.type = type;
        if(type=='cross'){
          var obj = JSON.parse(localStorage.getItem('crossObj'));
          for (var o in obj){
            if(o=='jiaowubianhao'){
              this.ruleForm.jiaowubianhao = obj[o];
              continue;
            }
            if(o=='kechengmingcheng'){
              this.ruleForm.kechengmingcheng = obj[o];
              continue;
            }
            if(o=='kechengfenlei'){
              this.ruleForm.kechengfenlei = obj[o];
              continue;
            }
            if(o=='kechengleixing'){
              this.ruleForm.kechengleixing = obj[o];
              continue;
            }
            if(o=='jiaoxuerenwu'){
              this.ruleForm.jiaoxuerenwu = obj[o];
              continue;
            }
            if(o=='fabushijian'){
              this.ruleForm.fabushijian = obj[o];
              continue;
            }
            if(o=='yanjiushengzhanghao'){
              this.ruleForm.yanjiushengzhanghao = obj[o];
              continue;
            }
            if(o=='yanjiushengxingming'){
              this.ruleForm.yanjiushengxingming = obj[o];
              continue;
            }
            if(o=='daoshigonghao'){
              this.ruleForm.daoshigonghao = obj[o];
              continue;
            }
            if(o=='daoshixingming'){
              this.ruleForm.daoshixingming = obj[o];
              continue;
            }
          }
        }
        // 获取用户信息
        this.$http.get(this.userTableName + '/session', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            var json = res.data.data;
            if(json.daoshigonghao!=''&&json.daoshigonghao){
                this.ruleForm.daoshigonghao = json.daoshigonghao
            }
            if(json.daoshixingming!=''&&json.daoshixingming){
                this.ruleForm.daoshixingming = json.daoshixingming
            }
          }
        });
        this.$http.get('option/kechengxinxi/kechengmingcheng', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.kechengmingchengOptions = res.data.data;
          }
        });
        this.$http.get('option/yanjiusheng/yanjiushengzhanghao', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.yanjiushengzhanghaoOptions = res.data.data;
          }
        });
      },
      // 下二随
      kechengmingchengChange () {
        this.$http.get('follow/kechengxinxi/kechengmingcheng?columnValue=' + this.ruleForm.kechengmingcheng, {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            if(res.data.data.kechengfenlei){
              this.ruleForm.kechengfenlei = res.data.data.kechengfenlei
            }
            if(res.data.data.kechengleixing){
              this.ruleForm.kechengleixing = res.data.data.kechengleixing
            }
            if(res.data.data.yanjiushengxingming){
              this.ruleForm.yanjiushengxingming = res.data.data.yanjiushengxingming
            }
          }
        });
      },
      // 下二随
      yanjiushengzhanghaoChange () {
        this.$http.get('follow/yanjiusheng/yanjiushengzhanghao?columnValue=' + this.ruleForm.yanjiushengzhanghao, {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            if(res.data.data.kechengfenlei){
              this.ruleForm.kechengfenlei = res.data.data.kechengfenlei
            }
            if(res.data.data.kechengleixing){
              this.ruleForm.kechengleixing = res.data.data.kechengleixing
            }
            if(res.data.data.yanjiushengxingming){
              this.ruleForm.yanjiushengxingming = res.data.data.yanjiushengxingming
            }
          }
        });
      },

    // 多级联动参数
      // 多级联动参数
      info(id) {
        this.$http.get('jiaowuxinxi/detail/${id}', {emulateJSON: true}).then(res => {
          if (res.data.code == 0) {
            this.ruleForm = res.data.data;
          }
        });
      },
      // 提交
      onSubmit() {

        //更新跨表属性
        var crossuserid;
        var crossrefid;
        var crossoptnum;
        this.$refs["ruleForm"].validate(valid => {
          if(valid) {
            if(this.type=='cross'){
                 var statusColumnName = localStorage.getItem('statusColumnName');
                 var statusColumnValue = localStorage.getItem('statusColumnValue');
                 if(statusColumnName && statusColumnName!='') {
                     var obj = JSON.parse(localStorage.getItem('crossObj'));
                     if(!statusColumnName.startsWith("[")) {
                         for (var o in obj){
                             if(o==statusColumnName){
                                 obj[o] = statusColumnValue;
                             }
                         }
                         var table = localStorage.getItem('crossTable');
                         this.$http.post(table+'/update', obj).then(res => {});
                     } else {
                            crossuserid=Number(localStorage.getItem('userid'));
                            crossrefid=obj['id'];
                            crossoptnum=localStorage.getItem('statusColumnName');
                            crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                     }
                 }
            }
            if(crossrefid && crossuserid) {
                 this.ruleForm.crossuserid=crossuserid;
                 this.ruleForm.crossrefid=crossrefid;
                 var params = {
                     page: 1,
                     limit: 10,
                     crossuserid:crossuserid,
                     crossrefid:crossrefid,
                 }
                 this.$http.get('jiaowuxinxi/list', {
                  params: params
                 }).then(res => {
                     if(res.data.data.total>=crossoptnum) {
                         this.$message({
                          message: localStorage.getItem('tips'),
                          type: 'success',
                          duration: 1500,
                         });
                          return false;
                     } else {
                         // 跨表计算


                          this.$http.post('jiaowuxinxi/add', this.ruleForm).then(res => {
                              if (res.data.code == 0) {
                                  this.$message({
                                      message: '操作成功',
                                      type: 'success',
                                      duration: 1500,
                                      onClose: () => {
                                          this.$router.go(-1);
                                      }
                                  });
                              } else {
                                  this.$message({
                                      message: res.data.msg,
                                      type: 'error',
                                      duration: 1500
                                  });
                              }
                          });
                     }
                 });
             } else {


                  this.$http.post('jiaowuxinxi/add', this.ruleForm).then(res => {
                     if (res.data.code == 0) {
                          this.$message({
                              message: '操作成功',
                              type: 'success',
                              duration: 1500,
                              onClose: () => {
                                  this.$router.go(-1);
                              }
                          });
                      } else {
                          this.$message({
                              message: res.data.msg,
                              type: 'error',
                              duration: 1500
                          });
                      }
                  });
             }
          }
        });
      },
      // 获取uuid
      getUUID () {
        return new Date().getTime();
      },
      // 返回
      back() {
        this.$router.go(-1);
      },
    }
  };
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  padding: 0 10px 0 0;
	  color: #000;
	  font-weight: 500;
	  width: 80px;
	  font-size: 14px;
	  line-height: 40px;
	  text-align: right;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 80px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  border: 1px solid #000;
	  border-radius: 0;
	  padding: 0 12px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  color: #000;
	  width: 400px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  border: 1px solid #000;
	  border-radius: 0;
	  padding: 0 10px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  color: #000;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  border: 1px solid #000;
	  border-radius: 0;
	  padding: 0 10px 0 30px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  color: #000;
	  width: 200px;
	  font-size: 14px;
	  height: 40px;
	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  border: 1px dashed #999;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #999;
	  width: 100px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  border: 1px dashed #999;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #999;
	  width: 100px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  border: 1px dashed #999;
	  cursor: pointer;
	  border-radius: 6px;
	  color: #999;
	  width: 100px;
	  font-size: 32px;
	  line-height: 100px;
	  text-align: center;
	  height: 100px;
	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  border: 1px solid #000;
	  border-radius: 0;
	  padding: 12px;
	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  outline: none;
	  color: #000;
	  width: 400px;
	  font-size: 14px;
	  height: 120px;
	}
</style>
