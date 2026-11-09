<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','novel_number') || $check_field('add','novel_number') || $check_field('set','novel_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="小说编号" prop="novel_number">
					<el-input id="novel_number" v-model="form['novel_number']" placeholder="请输入小说编号"
							  v-if="user_group === '管理员' || (form['novel_center_id'] && $check_field('set','novel_number')) || (!form['novel_center_id'] && $check_field('add','novel_number'))" :disabled="true"></el-input>
					<div v-else-if="$check_field('get','novel_number')">{{form['novel_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','novel_type') || $check_field('add','novel_type') || $check_field('set','novel_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="小说类型" prop="novel_type">
					<el-select id="novel_type" v-model="form['novel_type']"
						v-if="user_group === '管理员' || (form['novel_center_id'] && $check_field('set','novel_type')) || (!form['novel_center_id'] && $check_field('add','novel_type'))">
						<el-option v-for="o in list_novel_type" :key="o['novel_type']" :label="o['novel_type']"
							:value="o['novel_type']">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','novel_type')">{{form['novel_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','novel_name') || $check_field('add','novel_name') || $check_field('set','novel_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="小说名称" prop="novel_name">
					<el-input id="novel_name" v-model="form['novel_name']" placeholder="请输入小说名称"
							  v-if="user_group === '管理员' || (form['novel_center_id'] && $check_field('set','novel_name')) || (!form['novel_center_id'] && $check_field('add','novel_name'))" :disabled="disabledObj['novel_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','novel_name')">{{form['novel_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','novel_download') || $check_field('add','novel_download') || $check_field('set','novel_download')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="小说下载" prop="novel_download">
					<div v-if="disabledObj['novel_download_isDisabled']">
						<div v-if="$check_field('get','novel_download')">
							<el-button type="primary" @click="$download($fullUrl(form['novel_download']),form['novel_download'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
					<div v-else>
						<el-upload v-if="user_group === '管理员' || (form['novel_center_id'] && $check_field('set','novel_download')) || (!form['novel_center_id'] && $check_field('add','novel_download'))" class="upload-demo" drag
								   action="" style="max-width: 300px;width: 100%;" :http-request="upload_novel_download" :limit="1" accept="">
							<i class="el-icon-upload"></i>
							<div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
						</el-upload>
						<div v-else-if="$check_field('get','novel_download')">
							<el-button type="primary" @click="$download($fullUrl(form['novel_download']),form['novel_download'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','author') || $check_field('add','author') || $check_field('set','author')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="作者" prop="author">
					<el-input id="author" v-model="form['author']" placeholder="请输入作者"
							  v-if="user_group === '管理员' || (form['novel_center_id'] && $check_field('set','author')) || (!form['novel_center_id'] && $check_field('add','author'))" :disabled="disabledObj['author_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','author')">{{form['author']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','time_to_market') || $check_field('add','time_to_market') || $check_field('set','time_to_market')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="上市时间" prop="time_to_market">
					<el-date-picker :disabled="disabledObj['time_to_market_isDisabled']" v-if="user_group === '管理员' || (form['novel_center_id'] && $check_field('set','time_to_market')) || (!form['novel_center_id'] && $check_field('add','time_to_market'))" id="time_to_market"
						v-model="form['time_to_market']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','time_to_market')">{{form['time_to_market']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','cover') || $check_field('add','cover') || $check_field('set','cover')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="封面" prop="cover">
					<el-upload :disabled="disabledObj['cover_isDisabled']" id="cover" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_cover"
						:show-file-list="false" v-if="user_group === '管理员' || (form['novel_center_id'] && $check_field('set','cover')) || (!form['novel_center_id'] && $check_field('add','cover'))">
						<img v-if="form['cover']" :src="$fullUrl(form['cover'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','cover')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['cover'])" :preview-src-list="[$fullUrl(form['cover'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','introduction_to_the_novel') || $check_field('add','introduction_to_the_novel') || $check_field('set','introduction_to_the_novel')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="小说简介" prop="introduction_to_the_novel">
					<el-input type="textarea" id="introduction_to_the_novel" v-model="form['introduction_to_the_novel']" placeholder="请输入小说简介"
						v-if="user_group === '管理员' || (form['novel_center_id'] && $check_field('set','introduction_to_the_novel')) || (!form['novel_center_id'] && $check_field('add','introduction_to_the_novel'))" :disabled="disabledObj['introduction_to_the_novel_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','introduction_to_the_novel')">{{form['introduction_to_the_novel']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','novel_content') || $check_field('add','novel_content') || $check_field('set','novel_content')" :xs="24" :sm="24" :lg="24" class="el_form_editor_warp">
				<el-form-item label="小说内容" prop="novel_content">
					<quill-editor v-model.number="form['novel_content']"
						v-if="user_group === '管理员' || (form['novel_center_id'] && $check_field('set','novel_content')) || (!form['novel_center_id'] && $check_field('add','novel_content')) ">
					</quill-editor>
					<div v-else-if="$check_field('get','novel_content')" v-html="form['novel_content']"></div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_btn_warp">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "novel_center_id",
				url_add: "~/api/novel_center/add?",
				url_set: "~/api/novel_center/set?",
				url_get_obj: "~/api/novel_center/get_obj?",
				url_upload: "~/api/novel_center/upload?",

				query: {
					"novel_center_id": 0,
				},

				form: {
					"novel_number":this.$get_stamp(), // 小说编号
					"novel_type":'', // 小说类型
					"novel_name":'', // 小说名称
					"novel_download":'', // 小说下载
					"author":'', // 作者
					"time_to_market":'', // 上市时间
					"cover":'', // 封面
					"introduction_to_the_novel":'', // 小说简介
					"novel_content":'', // 小说内容
					"novel_center_id": 0, // ID

				},
				disabledObj:{
					"novel_number_isDisabled": false,
					"novel_type_isDisabled": false,
					"novel_name_isDisabled": false,
					"novel_download_isDisabled": false,
					"author_isDisabled": false,
					"time_to_market_isDisabled": false,
					"cover_isDisabled": false,
					"introduction_to_the_novel_isDisabled": false,
					"novel_content_isDisabled": false,
				},
				//小说类型选项列表
				list_novel_type: [],
			}
		},
		methods: {
			/**
			 * 获取小说类型列表
			 */
			async get_list_novel_type() {
				var json = await this.$get("~/api/novel_classification/get_list?");
				if(json.result && json.result.list){
					this.list_novel_type = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			/**
			 * 上传小说下载
			 * @param {Object} param文件参数
			 */
			upload_novel_download(param){
				this.uploadFile(param.file, "novel_download");
			},
			/**
			 * 上传封面
			 * @param {Object} param图片参数
			 */
			upload_cover(param){
				this.uploadFile(param.file, "cover");
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
        if (this.form["time_to_market"].indexOf("-")===-1){
          this.form["time_to_market"] = this.$toTime(parseInt(this.form["time_to_market"]),"yyyy-MM-dd")
        }
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
				if(parseInt(this.form["time_to_market"]) > 9999){
					this.form["time_to_market"] = this.$toTime(parseInt(this.form["time_to_market"]),"yyyy-MM-dd")
				}
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/novel_center/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/novel_center/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/novel_center/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/novel_center/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/novel_center/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
			this.get_list_novel_type();
		},
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
