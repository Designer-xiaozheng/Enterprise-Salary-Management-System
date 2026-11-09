<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="小说资讯"
				source_table="article"
			  ></list_result_search>
				<!-- 论坛搜索结果 -->
			  <list_result_search
				:list="result_forum"
				title="在线讨论"
				source_table="forum"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/user_registration/list', 'get')"
				:list="result_user_registration_gender"
				title="用户注册性别"
				source_table="user_registration"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/novel_classification/list', 'get')"
				:list="result_novel_classification_novel_type"
				title="小说分类小说类型"
				source_table="novel_classification"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/novel_center/list', 'get')"
				:list="result_novel_center_novel_name"
				title="小说中心小说名称"
				source_table="novel_center"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/novel_center/list', 'get')"
				:list="result_novel_center_author"
				title="小说中心作者"
				source_table="novel_center"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_article": [],
	  "result_forum": [],
			"result_user_registration_gender":[],
			"result_novel_classification_novel_type":[],
			"result_novel_center_novel_name":[],
			"result_novel_center_author":[],
	};
  },
  methods: {
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},
	/**
	 * 获取在线讨论
	 */
	get_forum() {
	  this.$get("~/api/forum/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_forum = json.result.list;
		}
	  });
	},
	/**
	 * 获取gender
	 */
	get_user_registration_gender(){
		this.$get("~/api/user_registration/get_list?like=0", { page: 1, size: 10, "gender": this.query.word }, (json) => {
		  if (json.result) {
			var result_user_registration_gender = json.result.list;
			result_user_registration_gender.map(o => o.title = o['gender'])
	  			this.result_user_registration_gender = result_user_registration_gender
		 	}
		});
	},
	/**
	 * 获取novel_type
	 */
	get_novel_classification_novel_type(){
		this.$get("~/api/novel_classification/get_list?like=0", { page: 1, size: 10, "novel_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_novel_classification_novel_type = json.result.list;
			result_novel_classification_novel_type.map(o => o.title = o['novel_type'])
	  			this.result_novel_classification_novel_type = result_novel_classification_novel_type
		 	}
		});
	},
	/**
	 * 获取novel_name
	 */
	get_novel_center_novel_name(){
		this.$get("~/api/novel_center/get_list?like=0", { page: 1, size: 10, "novel_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_novel_center_novel_name = json.result.list;
			result_novel_center_novel_name.map(o => o.title = o['novel_name'])
	  			this.result_novel_center_novel_name = result_novel_center_novel_name
		 	}
		});
	},
	/**
	 * 获取author
	 */
	get_novel_center_author(){
		this.$get("~/api/novel_center/get_list?like=0", { page: 1, size: 10, "author": this.query.word }, (json) => {
		  if (json.result) {
			var result_novel_center_author = json.result.list;
			result_novel_center_author.map(o => o.title = o['author'])
	  			this.result_novel_center_author = result_novel_center_author
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_article();
	this.get_forum();
		this.get_user_registration_gender();
		this.get_novel_classification_novel_type();
		this.get_novel_center_novel_name();
		this.get_novel_center_author();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_article();
	  this.get_forum();
	  this.get_user_registration_gender();
	  this.get_novel_classification_novel_type();
	  this.get_novel_center_novel_name();
	  this.get_novel_center_author();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
