<template>
	<div class="diy_list page_novel_center" id="novel_center_list">
		<div class="warp">
			<div class="container diy_list_container">
				<div class="diy_list_title">
					<div class="col">
						<span class="title">小说中心列表</span>
					</div>
				</div>
				<div class="row diy_list_search">
					<div class="col">
						<!-- 搜索栏 -->
						<div class="view">							
							<span class="diy_list_search_title">关键字搜索：</span>
							<b-form-input size="sm" class="mr-sm-2" placeholder="小说名称搜索" v-model="query['novel_name']" />
							<b-form-input size="sm" class="mr-sm-2" placeholder="作者搜索" v-model="query['author']" />
							<b-button size="sm" @click="search_novel_center()" >
								<b-icon icon="search"/>
							</b-button>
						</div>
						<!-- /搜索栏 -->
					</div>
				</div>
				<div class="diy_list_select_box">
					<span class="diy_list_select_title">下拉搜索：</span>
						<div class="diy_list_dropdown_box">
						<div class="col">
							<!-- 筛选 -->
							<div class="view">
							</div>
							<!-- /筛选 -->
						</div>
					</div>
					<div class="diy_list_sort_box">
						<div class="col">
							<!-- 排序 -->
							<div class="view">
								<b-dropdown text="排序" variant="outline-dark" left>
										<b-dropdown-item v-for="(o, i) in list_sort" :key="i" @click="set_sort(o)" >
												{{ o.name }}
										</b-dropdown-item>
								</b-dropdown>
							</div>
							<!--/排序 -->
						</div>
					</div>
				</div>
				<div class="row diy_list_box">
					<div class="col">
						<!-- tab -->
						<b-tabs content-class="mt-3">
							<b-tab v-for="(o, i) in list_type_novel_type" :title="o['novel_type']" :active="i===0" @click="tab_select(o['novel_type'])">
								<div class="row">
									<div class="col">
										<!-- tab -->
										<list_novel_center :list="type_list[o['novel_type']]" />
										<!-- /tab -->
									</div>
								</div>
							</b-tab>
						</b-tabs>
						<!-- /tab -->
					</div>
				</div>
				<div class="row diy_list_page_box">
					<div class="col overflow-auto flex_cc">
						<!-- 分页器 -->
						<diy_pager v-model="query['page']" :size="query['size']" :count="count" v-on:toPage="toPage" v-on:toSize="toSize" ></diy_pager>
						<!-- /分页器 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import list_novel_center from "@/components/diy/list_novel_center.vue";
	import diy_pager from "@/components/diy/diy_pager";
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		components: {
			diy_pager,
			list_novel_center
		},
		data() {
			return {
				url_get_list: "~/api/novel_center/get_list?like=0",

				// 查询条件
				query: {
					keyword: "",
					page: 1,
					size: 10,
					"novel_name": "", // 小说名称
					"author": "", // 作者
				},

				// 排序内容
				list_sort: [{
						name: "创建时间从高到低",
						value: "`create_time` desc",
					},
					{
						name: "创建时间从低到高",
						value: "`create_time` asc",
					},
					{
						name: "更新时间从高到低",
						value: "`update_time` desc",
					},
					{
						name: "更新时间从低到高",
						value: "`update_time` asc",
					},
					{
						name: "小说名称正序",
						value: "`novel_name` asc",
					},
					{
						name: "小说名称倒序",
						value: "`novel_name` desc",
					},
					{
						name: "作者正序",
						value: "`author` asc",
					},
					{
						name: "作者倒序",
						value: "`author` desc",
					},
				],
				// 小说类型列表
				"list_novel_type": [],
				"list_type_novel_type": [],
				"type_list":{},
			}
		},
		methods: {
			/**
			 * 筛选选择
			 */
			filter_set(o,key) {
			    if (o == "全部") {
			        this.query[key] = "";
			    } else {
			        this.query[key] = o;
			    }
			    this.search();
			},

			/**
			 * 排序
			 */
			set_sort(o) {
			    this.query.orderby = o.value;
			    this.search();
			},
			async get_list_type_novel_type() {
				var json = await this.$get("~/api/novel_center/get_list?groupby=novel_type");
				if (json.result) {
					this.list_type_novel_type = json.result.list;
					for (let i = 0;i<this.list_type_novel_type.length;i++){
						this.get_novel_type_type_list(this.list_type_novel_type[i].novel_type);
					}
					this.query.novel_type = this.list_type_novel_type[0].novel_type;
					this.get_list();
				} else if (json.error) {
					console.log(json.error);
				}
			},

			get_novel_type_type_list(type){
				let _this = this;
				this.$get("~/api/novel_center/get_list?", {"novel_type":type}, (json) => {
					if (json.result) {
						_this.$set(_this.type_list,type, json.result.list);
					}
				});
			},
			tab_select(v){
				this.query.novel_type = v;
				this.get_list();
			},
			search_novel_center(){
				let _this = this;
				this.$get("~/api/novel_center/get_list?like=0", _this.query, (json) => {
					if (json.result) {
						_this.$set(_this.type_list,_this.query.novel_type, json.result.list);
						_this.get_list();
					}
				});
			},
			/**
			 * 获取小说类型列表
			 */
			async get_list_novel_type() {
				var json = await this.$get("~/api/novel_classification/get_list?");
				if (json.result) {
					this.list_novel_type = json.result.list;
				} else if (json.error) {
					console.log(json.error);
				}
			},

			/**
			 * 筛选
			 */

			/**
			 * 重置
			 */
			reset() {
				this.query.novel_name = ""
				this.query.author = ""
				this.search();
			},

			// 返回条数
			toSize(i){
				this.query.size = i;
				this.first();
			},

			// 返回页数
			toPage(i){
				this.query.page = i;
				this.first();
			},
		},
		computed: {
		},
		created() {
			/**
			 * 获取小说类型列表
			 */
			this.get_list_novel_type();
			this.get_list_type_novel_type();
		}
	}
</script>

<style>
</style>
