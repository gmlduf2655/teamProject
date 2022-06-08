<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<style>
@charset "utf-8";

/* ==============================
ver : 1.00
ver : 1.01 20191219 2502 line > íŒì—…ë©”ë‰´ ê³ ì •ë†’ì´ê°’ ì‚­ì œ
============================== */

/* íŒì—… : ì”¨ì¸„ ì œê³µë™ì˜ ============================== */
.layer_wrap.layer_movie_grade {
	width: 600px;
}

.layer_wrap.layer_movie_grade .tbl_dtal td {
	font-size: 13px;
}

.layer_wrap.layer_seechu {
	width: 600px;
}

.layer_wrap.layer_seechu .layer_header {
	border-bottom: 0 none;
}

.layer_wrap.layer_seechu .layer_contents {
	background-color: #F5F5F5;
}

.layer_wrap.layer_seechu .layer_contents .bx_txt {
	margin-bottom: 35px;
	line-height: 1.5;
	font-size: 12px;
} /* 2020.01.08 */
.layer_wrap.layer_seechu .layer_contents label.ty2 {
	font-size: 15px;
	margin-bottom: 10px;
}

.layer_wrap.layer_seechu .layer_contents textarea.ty2 {
	font-size: 12px;
}

.layer_wrap.layer_seechu .layer_contents .btn_col10 {
	display: block;
	width: 285px;
	margin: 22px auto 0;
}

.layer_wrap.layer_seechu .layer_footer {
	background-color: #201C1D;
	text-align: left;
	padding: 15px 30px;
}

.layer_wrap.layer_seechu .layer_footer .close_wrap label {
	color: #fff;
}

/* main ========================================================================================= */
/* ë©”ì¸íŽ˜ì´ì§€/ìƒë‹¨ë¹„ì¥¬ì–¼ ============================== */
/* swiper */
.visual_top.visual_main .swiper-slide>a {
	display: block;
}

.visual_top.visual_main .swiper-slide>a>img {
	width: 100%;
	height: 774px;
}

.visual_top.visual_main .swiper-slide:after {
	content: "";
	position: absolute;
	z-index: 0;
	left: 0;
	right: 0;
	bottom: 0;
	height: 140px;
	background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 1) 85%, rgba(0, 0, 0, 1) 100%);
}

.visual_top.visual_main .swiper-pagination {
	bottom: 85px;
	left: 25%;
	width: 50%;
	text-align: right;
}

.visual_top.visual_main .swiper-pagination .swiper-pagination-bullet {
	width: 6px;
	height: 6px;
	margin: 0 3px;
}

.visual_top.visual_main .swiper-pagination .swiper-button-start,
	.visual_top.visual_main .swiper-pagination .swiper-button-stop {
	margin: 0 2px 0 4px;
}

.visual_top.visual_main .swiper-pagination .swiper-button-start {
	border-width: 4px 0 4px 7px;
}

.visual_top.visual_main .swiper-pagination .swiper-button-stop {
	width: 6px;
	height: 6px;
}

.visual_top.visual_main .swiper-pagination {
	bottom: 85px;
	left: 25%;
	width: 50%;
	text-align: right;
}

.visual_top.visual_main .swiper-pagination .swiper-pagination-bullet {
	width: 6px;
	height: 6px;
	margin: 0 3px;
}

.visual_top.visual_main .swiper-pagination .swiper-button-start,
	.visual_top.visual_main .swiper-pagination .swiper-button-stop {
	margin: 0 2px 0 4px;
}

.visual_top.visual_main .swiper-pagination .swiper-button-start {
	border-width: 4px 0 4px 7px;
}

.visual_top.visual_main .swiper-pagination .swiper-button-stop {
	width: 6px;
	height: 6px;
}
/* owl */
.visual_top.visual_main .item>a {
	display: block;
}

.visual_top.visual_main .item>a>img {
	width: 100%;
	height: 774px;
}

.visual_top.visual_main .item:after {
	content: "";
	position: absolute;
	z-index: 0;
	left: 0;
	right: 0;
	bottom: 0;
	height: 140px;
	background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 1) 85%, rgba(0, 0, 0, 1) 100%);
}

.visual_top.visual_main .owl-dots {
	position: absolute;
	right: 50%;
	left: auto;
	top: auto;
	bottom: 95px;
	margin: 0 -455px 0 0;
}

.visual_top.visual_main .owl-dots .owl-dot span {
	width: 6px;
	height: 6px;
	margin: 0 3px;
}

.visual_top.visual_main .slide_wrap .bx_ctrl {
	left: auto !important;
	right: 50%;
	left: auto;
	top: auto;
	bottom: 95px;
	margin: 0 -480px 0 0;
	text-align: right;
}

.visual_top.visual_main .slide_wrap .bx_ctrl .play {
	border-width: 4px 0 4px 7px;
}

.visual_top.visual_main .slide_wrap .bx_ctrl .stop {
	width: 6px;
	height: 6px;
	border-radius: 1px;
}
/*.visual_top.visual_main .owl-carousel .item .btn_boxing_mov {position:absolute;left:50%;top:50%;display:block;width:49px;height:54px;margin:-27px 0 0 -24px;padding:0;font:0/0 a;border:0;background-image:url("../images/main/btn_main_visual_play.png");background-repeat:no-repeat;background-position:0 0;background-color:rgba(255,255,255,0);cursor:pointer;z-index:10000;}**/
.visual_top.visual_main .owl-carousel .item a:after {
	content: "";
	position: absolute;
	left: 50%;
	top: 50%;
	display: block;
	width: 49px;
	height: 54px;
	margin: -27px 0 0 -24px;
	padding: 0;
	font: 0/0 a;
	border: 0;
	background-image: url("../images/main/btn_main_visual_play.png");
	background-repeat: no-repeat;
	background-position: 0 0;
	background-color: rgba(255, 255, 255, 0);
	cursor: pointer;
}

.visual_top.visual_main .owl-carousel .owl-stage-outer+.owl-nav {
	height: 0;
	background-color: transparent;
}

.visual_top.visual_movie_home .owl-carousel .item a:after {
	content: "";
	position: absolute;
	left: 50%;
	top: 50%;
	display: block;
	width: 49px;
	height: 54px;
	margin: -15pxpx 0 0 -24px;
	padding: 0;
	font: 0/0 a;
	border: 0;
	background-image: url("../images/main/btn_main_visual_play.png");
	background-repeat: no-repeat;
	background-position: 0 0;
	background-color: rgba(255, 255, 255, 0);
	cursor: pointer;
} /* 2020.01.06 */
.visual_top.visual_movie_home .owl-carousel .owl-stage-outer+.owl-nav {
	height: 0;
	background-color: transparent;
} /* 2020.01.06 */
.visual_top.visual_theater_detail .owl-carousel .item a:after {
	content: "";
	position: absolute;
	left: 50%;
	top: 50%;
	display: block;
	width: 49px;
	height: 54px;
	margin: -15px 0 0 -24px;
	padding: 0;
	font: 0/0 a;
	border: 0;
	background-image: url("../images/main/btn_main_visual_play.png");
	background-repeat: no-repeat;
	background-position: 0 0;
	background-color: rgba(255, 255, 255, 0);
	cursor: pointer;
} /* 2020.01.07 */
.visual_top.visual_theater_detail .owl-carousel .owl-stage-outer+.owl-nav
	{
	height: 0;
	background-color: transparent;
} /* 2020.01.07 */

/* ì˜í™” > ì˜í™”ìƒì„¸ > íŠ¸ë ˆì¼ëŸ¬ ë™ì˜ìƒë²„íŠ¼ */
.movi_tab_info2 .slide_movie_detail_trailer .owl-carousel .item a:after
	{
	content: "";
	position: absolute;
	left: 50%;
	top: 50%;
	display: block;
	width: 49px;
	height: 54px;
	margin: -44px 0 0 -24px;
	padding: 0;
	font: 0/0 a;
	border: 0;
	background-image: url("../images/main/btn_main_visual_play.png");
	background-repeat: no-repeat;
	background-position: 0 0;
	background-color: rgba(255, 255, 255, 0);
	cursor: pointer;
} /* 2020.01.08 */

/* ë©”ì¸íŽ˜ì´ì§€/ë³¸ë¬¸ ============================== */
.contents_main {
	padding-top: 0;
}

/* ë©”ì¸íŽ˜ì´ì§€/ì˜í™”ëª©ë¡ ========== */
.contents_main .movi_current_list {
	position: static;
	margin-top: -100px;
	margin-bottom: 70px;
}

.contents_main .movi_current_list:before {
	content: "";
	position: absolute;
	display: block;
	background: #000;
	left: 0;
	right: 0;
	width: 100%;
	height: 405px;
	z-index: -1;
}

.contents_main .movi_current_list .movi_info_txt {
	position: relative;
	right: 10px;
	top: 20px;
	float: right;
	color: #fff;
	font-size: 11px;
}

.contents_main .movi_current_list .movi_info_txt a {
	display: block;
	position: relative;
	z-index: 1;
	color: #FFF;
}

.contents_main .movi_current_list .movi_info_txt em {
	font-family: 'Roboto';
	font-size: 12px;
	padding-left: 16px;
	background: url(../images/icon/time2.png) no-repeat 0 1px;
}

.contents_main .movi_current_list .tab_wrap {
	position: relative;
}

.contents_main .movi_current_list .tab_wrap.lft {
	padding-top: 50px;
}

.contents_main .movi_current_list .tab_wrap.lft>li>.tab_tit {
	background: transparent;
	color: #fff;
	height: 40px;
	line-height: 40px;
	padding: 0;
}

.contents_main .movi_current_list .tab_wrap.lft>li>.tab_tit>span {
	margin-right: 20px;
	opacity: .6;
}

.contents_main .movi_current_list .tab_wrap.lft>li.active>.tab_tit>span
	{
	opacity: 1;
	border-bottom: 1px solid rgba(255, 255, 255, .5);
}
/* ì˜í™”ëª©ë¡ - swiper ë²„ì „ */
.contents_main .movi_current_list .movie_list {
	margin: 0;
}

.contents_main .movi_current_list .movie_list li {
	margin: 0;
}

.contents_main .movi_current_list .movie_list li .top_info .poster_info
	{
	display: block;
}

.contents_main .movi_current_list .movie_list li .btm_info {
	margin-top: 20px;
}

.contents_main .movi_current_list .movie_list li .btm_info .sub_info1 {
	color: #fff;
}

.contents_main .movi_current_list .movie_list li .btm_info .sub_info1 .heart_info .btn_heart_rnd
	{
	margin-top: -3px;
}

.contents_main .movi_current_list .movie_list li .btm_info .tit_info {
	color: #fff;
}

.contents_main .movi_current_list .movie_list .swiper-button-prev {
	top: 38%;
	left: -30px;
	background: url('../images/icon/arr_lf_19_wht.png') no-repeat 50% 50%;
	width: 19px;
	height: 35px;
	opacity: .5;
}

.contents_main .movi_current_list .movie_list .swiper-button-next {
	top: 38%;
	right: -30px;
	background: url('../images/icon/arr_rg_19_wht.png') no-repeat 50% 50%;
	width: 19px;
	height: 35px;
	opacity: .5;
}

.contents_main .movi_current_list .movie_list .swiper-button-prev.swiper-button-disabled,
	.contents_main .movi_current_list .movie_list .swiper-button-next.swiper-button-disabled
	{
	opacity: 0;
}
/* ì˜í™”ëª©ë¡ - owl ë²„ì „ */
.main_movie_list .item {
	color: #FFF;
	text-align: center;
}

.main_movie_list .item .top_info {
	overflow: hidden;
	position: relative;
	height: 262px;
	border-radius: 4px;
}

.main_movie_list .item .top_info .poster_info {
	display: block;
	height: 262px;
}

.main_movie_list .item .top_info .poster_info img {
	width: 100%;
}

.main_movie_list .item .top_info .poster_info .num_info {
	display: block;
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	height: 23px;
	padding-left: 10px;
	color: #fff;
	font-weight: bold;
	font-size: 26px;
	font-style: italic;
	font-family: 'Roboto', "Noto Sans KR";
	text-align: left;
	background: -moz-linear-gradient(top, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 0.15) 40%, rgba(0, 0, 0, 0.5) 100%);
	background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 0.15) 40%, rgba(0, 0, 0, 0.5) 100%);
	background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 0.15) 40%, rgba(0, 0, 0, 0.5) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000',
		endColorstr='#80000000', GradientType=0);
}

.main_movie_list .item .top_info .poster_info .ic_grade {
	position: absolute;
	top: 10px;
	right: 8px;
}

.main_movie_list .item .top_info .over_box {
	overflow: hidden;
	position: absolute;
	width: 100%;
	height: 0;
}

.main_movie_list .item .top_info .over_box .btn_col3 {
	display: block;
	line-height: 26px;
	margin-top: 10px;
	background: transparent;
	color: #fff !important;
	border-color: #fff;
}

.main_movie_list .item .top_info .over_box .btn_col3:first-child {
	margin-top: 0
}

.main_movie_list .item .top_info .over_box .hall_info_box {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	background: red
}

.main_movie_list .item .top_info .over_box .btn_end {
	border-color: #666;
	color: #666 !important
}

.main_movie_list .item.active .top_info .over_box {
	overflow: inherit;
	position: absolute;
	z-index: 1;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.main_movie_list .item.active .top_info .over_box:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: 0.7;
}

.main_movie_list .item.active .top_info .over_box .inner {
	position: absolute;
	z-index: 1;
	top: 50%;
	left: 0;
	right: 0;
	padding: 0 18px;
}

.main_movie_list .item .btm_info {
	display: block;
	margin-top: 20px;
}

.main_movie_list .item .btm_info .tit_info {
	display: block;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	margin-bottom: 6px;
	font-size: 13px;
}

.main_movie_list .item .btm_info .sub_info1 {
	display: block;
	margin-bottom: 10px;
	font-size: 11px;
}

.main_movie_list .item .btm_info .sub_info1>span {
	position: relative;
	margin-left: 8px;
	font-family: 'Roboto', "Noto Sans KR";
}

.main_movie_list .item .btm_info .sub_info1>span:before {
	content: '';
	display: inline-block;
	position: absolute;
	top: 2px;
	left: 0;
	width: 1px;
	height: 8px;
	background: #B2B2B2
}

.main_movie_list .item .btm_info .sub_info1>span:first-child {
	margin-left: 0;
}

.main_movie_list .item .btm_info .sub_info1>span:first-child:before {
	display: none;
}

.main_movie_list .item .btm_info .sub_info1 .rate_info em {
	font-weight: bold;
}

.main_movie_list .item .btm_info .sub_info1 .star_info {
	padding-left: 22px;
	font-weight: bold;
	background: url("../../Content/images/movie/ic_star.png") no-repeat 9px
		20%;
}

.main_movie_list .item .btm_info .sub_info1 .remain_info {
	padding-left: 10px;
	color: #ED4C6B
}

.main_movie_list .item .btm_info .sub_info1 .heart_info {
	display: inline-block;
	padding-left: 10px;
}

.main_movie_list .item .btm_info .sub_info1 .heart_info .btn_heart_rnd {
	margin-top: -3px;
}

.main_movie_list .owl-nav .owl-prev {
	top: 38%;
	left: -30px;
	background: url('../images/icon/arr_lf_19_wht.png') no-repeat 50% 50%;
	width: 19px;
	height: 35px;
	opacity: .5;
}

.main_movie_list .owl-nav .owl-next {
	top: 38%;
	right: -30px;
	background: url('../images/icon/arr_rg_19_wht.png') no-repeat 50% 50%;
	width: 19px;
	height: 35px;
	opacity: .5;
}

.main_movie_list .owl-nav .owl-prev.disabled, .main_movie_list .owl-nav .owl-next.disabled
	{
	opacity: 0;
}

/* ë³¸ë¬¸ ========== */
.contents_main .main_cont_wrap {
	position: relative;
	margin-bottom: 33px;
}

.contents_main .main_cont_wrap .sec_tit {
	position: relative;
	font-size: 17px;
	margin-bottom: 10px;
}

.contents_main .main_cont_wrap .sec_tit>span {
	position: absolute;
	top: -11px;
	font-size: 10px;
	color: #666;
	letter-spacing: 2px;
}

.contents_main .main_cont_wrap .btn_txt_more {
	position: absolute;
	right: 0;
	top: 5px;
	background-position: right 3.5px;
}

.contents_main .main_cont_wrap.special .sec_tit {
	border-bottom: 1px dashed #D9D9D9;
	padding-bottom: 10px;
}

.contents_main .main_cont_wrap.special .special_wrap {
	padding: 16px 0;
	white-space: nowrap;
	overflow: hidden;
}

.contents_main .main_cont_wrap.special .special_wrap>li {
	display: inline-block;
	vertical-align: middle;
}

.contents_main .main_cont_wrap.special .special_wrap>li>a {
	display: block;
	text-align: center;
}

.contents_main .main_cont_wrap.special .special_wrap2 {
	padding: 16px 0;
	white-space: nowrap;
	overflow: hidden;
}

.contents_main .main_cont_wrap.special .special_wrap2>li {
	display: inline-block;
	vertical-align: middle;
}

.contents_main .main_cont_wrap.special .special_wrap2>li>a {
	display: block;
	text-align: center;
}

.contents_main .main_cont_wrap.premiere {
	margin-top: 15px;
	margin-bottom: 53px;
}

.contents_main .main_cont_wrap.premiere .premiere_wrap:after {
	content: "";
	display: block;
	clear: both;
}

.contents_main .main_cont_wrap.premiere .premiere_wrap>li {
	float: left;
}

.contents_main .main_cont_wrap.premiere .premiere_wrap>li+li {
	margin-left: 11px;
}

.contents_main .main_cont_wrap.premiere .premiere_wrap>li>a {
	display: block;
	overflow: hidden;
	border-radius: 4px;
	width: 319px;
}

.contents_main .main_cont_wrap.premiere .premiere_wrap>li>a>img {
	width: 100%;
}

.contents_main .mid_menu_wrap {
	position: relative;
	font-size: 0;
	margin-bottom: 50px;
}

.contents_main .mid_menu_wrap .mid_itm {
	display: inline-block;
	width: 187px;
	height: 133px;
}

.contents_main .mid_menu_wrap .mid_itm+.mid_itm {
	margin-left: 10px;
}

.contents_main .mid_menu_wrap .mid_itm>img {
	width: 100%;
	height: 100%;
}

.contents_main .mid_menu_wrap .mid_itm>em {
	text-indent: -9999em;
}

.contents_main .main_cont_wrap.notice {
	margin: 0;
	padding-bottom: 10px;
	border-bottom: 1px solid #AAA;
}

.contents_main .main_cont_wrap.notice .sec_tit {
	display: inline-block;
	margin: 0;
	font-size: 13px;
	vertical-align: middle;
}

.contents_main .main_cont_wrap.notice .sec_tit:after {
	content: '';
	display: inline-block;
	width: 1px;
	height: 13px;
	background: #707070;
	margin: 0 20px;
	vertical-align: middle;
}

.contents_main .main_cont_wrap.notice .rolling_menu_wrap {
	position: relative;
	display: inline-block;
	width: 840px;
	height: 15px;
	overflow: hidden;
	vertical-align: middle;
}

.contents_main .main_cont_wrap.notice .rolling_menu_wrap .rolling_menu {
	position: absolute;
	left: 0;
}

.contents_main .main_cont_wrap.notice .rolling_menu_wrap .rolling_menu>li
	{
	height: 15px;
	line-height: 15px;
}

.contents_main .main_cont_wrap.notice .rolling_menu_wrap .rolling_menu>li>a
	{
	font-size: 13px;
	line-height: 15px;
}

.contents_main+.banner_wrap {
	padding-top: 30px;
}

/* ì˜í™”ëª©ë¡ : movie_list ========================================================================================= */
.movie_list {
	overflow: hidden;
	margin-bottom: 50px;
	margin: 0 -7.5px
}

.movie_list li {
	float: left;
	position: relative;
	width: 184px;
	margin: 0 7.5px;
	text-align: center;
}

.movie_list li .top_info {
	overflow: hidden;
	position: relative;
	height: 262px;
	border-radius: 4px;
}

.movie_list li .top_info .poster_info {
	display: block;
	height: 262px;
}

.movie_list li .top_info .poster_info img {
	width: 100%;
}

.movie_list li .top_info .poster_info .num_info {
	display: block;
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	height: 23px;
	padding-left: 10px;
	color: #fff;
	font-weight: bold;
	font-size: 26px;
	font-style: italic;
	font-family: 'Roboto', "Noto Sans KR";
	text-align: left;
	background: -moz-linear-gradient(top, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 0.15) 40%, rgba(0, 0, 0, 0.5) 100%);
	background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 0.15) 40%, rgba(0, 0, 0, 0.5) 100%);
	background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 0.15) 40%, rgba(0, 0, 0, 0.5) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000',
		endColorstr='#80000000', GradientType=0);
}

.movie_list li .top_info .poster_info .ic_grade {
	position: absolute;
	top: 10px;
	right: 8px;
}

.movie_list li .top_info .over_box {
	overflow: hidden;
	position: absolute;
	width: 100%;
	height: 0;
}

.movie_list li.active .top_info .over_box {
	overflow: inherit;
	position: absolute;
	z-index: 1;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.movie_list li.active .top_info .over_box:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: 0.7;
}

.movie_list li.active .top_info .over_box .inner {
	position: absolute;
	z-index: 1;
	top: 50%;
	left: 0;
	right: 0;
	padding: 0 18px;
}

.movie_list li .top_info .over_box .btn_col3 {
	display: block;
	line-height: 26px;
	margin-top: 10px;
	background: transparent;
	color: #fff !important;
	border-color: #fff;
	outline-color: white;
}

.movie_list li .top_info .over_box .btn_col3:first-child {
	margin-top: 0
}

.movie_list li .top_info .over_box .hall_info_box {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	background: red
}

.movie_list li .top_info .over_box .btn_end {
	border-color: #666;
	color: #666 !important
}

.movie_list li .btm_info {
	display: block;
	margin-top: 14px;
}

.movie_list li .btm_info .tit_info {
	display: block;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	margin-bottom: 6px;
	font-size: 13px;
}

.movie_list li .btm_info .sub_info1 {
	display: block;
	margin-bottom: 10px;
	font-size: 11px;
}

.movie_list li .btm_info .sub_info1>span {
	position: relative;
	margin-left: 8px;
	font-family: 'Roboto', "Noto Sans KR";
}

.movie_list li .btm_info .sub_info1>span:before {
	content: '';
	display: inline-block;
	position: absolute;
	top: 2px;
	left: 0;
	width: 1px;
	height: 8px;
	background: #B2B2B2
}

.movie_list li .btm_info .sub_info1>span:first-child {
	margin-left: 0;
}

.movie_list li .btm_info .sub_info1>span:first-child:before {
	display: none;
}

.movie_list li .btm_info .sub_info1 .rate_info em {
	font-weight: bold;
}

.movie_list li .btm_info .sub_info1 .star_info {
	padding-left: 22px;
	font-weight: bold;
	background: url("../../Content/images/movie/ic_star.png") no-repeat 9px
		20%;
}

.movie_list li .btm_info .sub_info1 .remain_info {
	padding-left: 10px;
	color: #ED4C6B
}

.movie_list li .btm_info .sub_info1 .heart_info {
	display: inline-block;
	padding-left: 10px;
}

.movie_list li .btm_info .sub_info1 .heart_info .btn_heart_rnd {
	margin-top: -4px;
}

.movie_list li .btm_info .sub_info2 {
	display: block;
}

.movie_list li .btm_info .sub_info2>span {
	display: inline-block;
	padding: 4px 0 4px 21px;
	font-family: 'Roboto', "Noto Sans KR";
	font-size: 11px;
}

.movie_list li .btm_info .sub_info2 .like_info {
	background: url("../../Content/images/movie/ic_like.png") no-repeat 0 0
}

.movie_list li .btm_info .sub_info2 .repple_info {
	margin-left: 10px;
	background: url("../../Content/images/movie/ic_repple.png") no-repeat 0
		0
}

/* ì˜í™”/ìƒì„¸ ========================================================================================= */
/* ìƒë‹¨ì˜í™”ì •ë³´ ============================== */
.detail_top_wrap {
	position: relative;
	min-height: 240px;
	padding-left: 245px;
	margin-bottom: 15px;
}

.detail_top_wrap .poster_info {
	position: absolute;
	top: -66px;
	left: 0;
	width: 205px;
	height: 305px;
	z-index: 1
}

.detail_top_wrap .poster_info img {
	width: 100%;
	border-radius: 4px;
}

.detail_top_wrap .tit_info {
	margin: -2px 0 15px 0;
	font-size: 26px;
}

.detail_top_wrap .ic_grade {
	width: 36px;
	height: 36px;
	margin: -3px 4px 0 0;
	line-height: 36px;
	vertical-align: top;
}

.detail_top_wrap .ic_grade:before {
	font-size: 13px;
}

.detail_top_wrap .detail_info1 {
	overflow: hidden;
	padding-bottom: 17px;
	margin-bottom: 20px;
	font-size: 15px;
	border-bottom: 1px solid #ddd
}

.detail_top_wrap .detail_info1>li {
	float: left;
	margin-right: 25px;
}

.detail_top_wrap .detail_info1>li>em {
	margin-right: 10px;
	vertical-align: middle;
}

.detail_top_wrap .detail_info1>li strong {
	font-size: 20px;
	font-family: 'Roboto', "Noto Sans KR";
	vertical-align: middle;
}

.detail_top_wrap .detail_info1>li strong em {
	font-family: "Noto Sans KR";
}

.detail_top_wrap .detail_info1>li strong .date_info {
	font-size: 14px;
	color: #666
}

.detail_top_wrap .detail_info2 {
	margin-bottom: 17px;
	font-size: 13px;
}

.detail_top_wrap .detail_info2>li {
	margin-top: 11px;
}

.detail_top_wrap .detail_info2>li:first-child {
	margin-top: 0
}

.detail_top_wrap .detail_info2>li em {
	margin-right: 10px;
}

.detail_top_wrap .detail_info2>li strong {
	color: #666;
}

.detail_top_wrap .detail_info2>li.sub_info3 strong {
	line-height: 24px
}

.detail_top_wrap .detail_info2 .sub_info1 strong>em {
	position: relative;
	padding-left: 15px;
}

.detail_top_wrap .detail_info2 .sub_info1 strong>em:first-child {
	padding-left: 0;
}

.detail_top_wrap .detail_info2 .sub_info1 strong>em:before {
	content: '';
	display: block;
	position: absolute;
	top: 5px;
	left: 0;
	width: 1px;
	height: 9px;
	background: #ddd;
}

.detail_top_wrap .detail_info2 .sub_info1 strong>em:first-child:before {
	display: none;
}

.detail_top_wrap .detail_info2 .sub_info2 .line_type a, .detail_top_wrap .detail_info2 .sub_info3 .line_type a
	{
	border-bottom: 1px solid #666;
	color: #666;
}

.detail_top_wrap .spacial_hall_info {
	float: left;
	position: relative;
	width: 400px;
}

.detail_top_wrap .spacial_hall_info::after {
	content: '';
	display: block;
	clear: both;
}

.detail_top_wrap .spacial_hall_info span {
	display: inline-block;
	min-width: 82px;
	padding: 0 5px;
	margin-bottom: 10px;
	text-align: center;
}

.detail_top_wrap .spacial_hall_info span img {
	height: 20px;
}
/* .detail_top_wrap .spacial_hall_info span:nth-child(1),
.detail_top_wrap .spacial_hall_info span:nth-child(5) {padding-left: 0; text-align: left} */
/* aside */
.movie_detail_aside_menu {
	padding-left: 430px;
}

.movie_detail_aside_menu ul:after {
	content: '';
	display: block;
	clear: both;
}

.movie_detail_aside_menu ul>li {
	float: left;
	margin-left: 32px;
}

.movie_detail_aside_menu ul>li:first-child {
	margin-left: 0
}

.movie_detail_aside_menu ul>li .btn_ic_share {
	display: block;
	position: relative;
	width: 28px;
	height: 28px;
	padding: 0 10px;
	background: url("../../Content/images/icon/ic_share.png") no-repeat 50%
		0;
	border: 0
}

.movie_detail_aside_menu ul>li .btn_ic_share em {
	overflow: hidden;
	position: absolute !important;
	width: 1px;
	height: 1px;
	clip: rect(1px, 1px, 1px, 1px);
}

.movie_detail_aside_menu ul>li .btn_ic_wish {
	display: block;
	position: relative;
	width: 39px;
	height: 28px;
	padding-left: 10px;
	background: url("../../Content/images/icon/heart_bdr_26_off.png")
		no-repeat 10px 0;
	border: none;
}

.movie_detail_aside_menu ul>li .btn_ic_wish strong {
	overflow: hidden;
	position: absolute !important;
	width: 1px;
	height: 1px;
	clip: rect(1px, 1px, 1px, 1px);
}

.movie_detail_aside_menu ul>li .btn_ic_wish em {
	display: block;
	min-width: 20px;
	margin-left: 0px;
	position: absolute;
	top: 5px;
	left: 50%;
	padding: 1px 0;
	background: #fff;
	font-size: 11px;
	line-height: 11px;
	font-family: 'Roboto', "Noto Sans KR";
	text-align: center;
}

.movie_detail_aside_menu ul>li .btn_ic_wish em.max:after {
	content: '+';
}

.movie_detail_aside_menu ul>li .btn_ic_wish.active {
	background: url("../../Content/images/icon/heart_bdr_26_on.png")
		no-repeat 10px 0;
	color: #FF243E
}

.movie_detail_aside_menu ul>li.area_reserve {
	margin-top: -15px;
}

.movie_detail_aside_menu ul>li.area_reserve .btn_col1 {
	min-width: 170px;
	font-size: 18px;
}

/* tab - ì˜í™”ì •ë³´ ============================== */
/* ì •ë³´ ========== */
.movi_tab_info1 {
	overflow: hidden;
	margin: 0px 0 45px 0;
}

.contents_movie_detail .tit_info {
	display: block;
	margin-bottom: 20px;
	font-size: 15px;
}

.contents_movie_detail .tit_info strong {
	font-size: 26px;
}

.contents_movie_detail .banner_wrap {
	margin-top: 60px;
}

.contents_movie_detail .no_data {
	padding: 140px 0;
	background: #F8F8F8;
	text-align: center;
	font-size: 15px;
	border-top: 1px solid #ccc
}

.contents_movie_detail .list_bdr_box {
	margin-top: 60px;
}

.contents_movie_detail .list_txt {
	margin-left: 10px;
}

.movi_tab_info1 .left_con {
	float: left;
	width: 480px;
}

.movi_tab_info1 .left_con .mCustomScrollbar {
	height: 115px;
}

.movi_tab_info1 .left_con .txt_info {
	padding-right: 80px;
	font-size: 13px;
	line-height: 1.8
}

.movi_tab_info1 .right_con {
	float: right;
	width: 480px;
}

.movi_tab_info1 .group_graph:after {
	content: "";
	display: block;
	clear: both;
}

.movi_tab_info1 .group_graph .bx_graph01 {
	float: left;
	position: relative;
	width: 32%;
	height: 76px;
	margin-top: 49px;
}

.movi_tab_info1 .group_graph .bx_graph01 .bg {
	position: absolute;
	z-index: 1;
	top: 0;
	width: 100%;
	height: 51px;
	background: url("../images/movie/graph_bgx2.png") no-repeat center 0;
	background-size: 111px auto;
}

.movi_tab_info1 .group_graph .bx_graph01 dl {
	position: relative;
	height: 51px;
	border-bottom: 1px solid #666666;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dt {
	position: absolute;
	bottom: -20px;
	width: 50%;
	font-size: 10px;
	color: #666;
	text-align: center;
	white-space: nowrap;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dt.mal {
	left: 0;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dt.fem {
	left: 50%;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dd {
	position: absolute;
	left: 50%;
	top: 0;
	bottom: 0;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dd.mal {
	width: 17px;
	margin-left: -36px;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dd.fem {
	width: 28px;
	margin-left: 9px;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dd .bar {
	position: absolute;
	bottom: 0;
	width: 100%;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dd.mal .bar {
	background-color: #8BE2FC;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dd.fem .bar {
	background-color: #FB5B95;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dd strong {
	position: absolute;
	width: 38px;
	z-index: 2;
	top: -3px;
	font-family: 'Roboto';
	font-size: 12px;
	white-space: nowrap;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dd strong span {
	font-size: 10px;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dd.mal strong {
	right: -36px;
	color: #8BE2FC;
}

.movi_tab_info1 .group_graph .bx_graph01 dl dd.fem strong {
	right: -29px;
	color: #FB5B95;
}

.movi_tab_info1 .group_graph .bx_graph02 {
	float: right;
	width: 280px;
	height: 110px;
	padding-top: 15px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl {
	position: relative;
	height: 85px;
	border-bottom: 1px solid #666666;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dt {
	position: absolute;
	bottom: -20px;
	width: 50px;
	font-size: 12px;
	color: #666;
	text-align: center;
	white-space: nowrap;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dt.gen10 {
	left: 36px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dt.gen20 {
	left: 86px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dt.gen30 {
	left: 138px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dt.gen40 {
	left: 188px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dd {
	position: absolute;
	bottom: 0;
	width: 50px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dd.gen10 {
	left: 36px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dd.gen20 {
	left: 86px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dd.gen30 {
	left: 138px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dd.gen40 {
	left: 188px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dd .bar {
	display: block;
	width: 8px;
	height: 100%;
	margin: 0 auto;
	border-radius: 8px 8px 0 0;
	background-color: #8B8B8B;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dd strong {
	position: absolute;
	top: 0;
	width: 100%;
	margin-top: -15px;
	font-family: 'Roboto';
	font-size: 12px;
	text-align: center;
	white-space: nowrap;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dd strong span {
	font-size: 10px;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dd.top .bar {
	background-color: #F51641;
}

.movi_tab_info1 .group_graph .bx_graph02 dl dd.top strong {
	color: #F51641;
}

.movi_tab_info1 .review_nodata_wrap {
	overflow: hidden;
	width: 480px;
	height: 156px;
	border-radius: 4px;
	color: #FFF;
	text-align: center;
	background: url("../images/movie/review_nodata_bg.png") no-repeat 0 0;
}

.movi_tab_info1 .review_nodata_wrap .tit {
	margin: 35px 0 10px;
}

.movi_tab_info1 .review_nodata_wrap .tit strong {
	padding-left: 28px;
	font-size: 21px;
	background: url("../images/icon/star_26.png") no-repeat 0 0;
}

.movi_tab_info1 .review_nodata_wrap .txt {
	margin: 10px 0;
	font-size: 14px;
}

.movi_tab_info1 .review_nodata_wrap a {
	margin-top: 10px;
}
/* íŠ¸ë ˆì¼ëŸ¬ ========== */
.movi_tab_info2 {
	position: relative;
	margin-bottom: 60px;
}

.movi_tab_info2 .tit_info {
	position: relative;
	margin: 0 50px -20px 0;
}

.movi_tab_info2 .swiper-wrapper {
	padding-top: 37px;
}

.movi_tab_info2 .slide_trail a {
	display: block;
}

.movi_tab_info2 .slide_trail strong {
	display: block;
	margin-top: 11px;
	text-align: center;
	font-size: 13px;
}
/* .movi_tab_info2 .slide_trail .swiper-button-next,
.movi_tab_info2 .slide_trail .swiper-button-prev {width:8px; height:15px; padding:10px;} */
.movi_tab_info2 .slide_trail .swiper-button-next {
	position: absolute;
	top: 0px;
	right: 0;
	margin: 0;
	/* background:url("../../Content/images/icon/arr_rf_8_2.png") no-repeat 50% 0; */
}

.movi_tab_info2 .slide_trail .swiper-button-prev {
	position: absolute;
	top: 0px;
	left: inherit;
	right: 25px;
	margin: 0
		/*; background:url("../../Content/images/icon/arr_lf_8_2.png") no-repeat 50% 0; */
}

.movi_tab_info2 .swiper-slide em {
	display: block;
	width: 313px;
	height: 193px;
}

.movi_tab_info2 .swiper-slide em img {
	width: 100%;
	border-radius: 4px;
}
/* owl */
.movi_tab_info2 .slide_movie_detail_trailer {
	overflow: hidden;
}

.movi_tab_info2 .slide_movie_detail_trailer .item strong {
	display: block;
	margin-top: 11px;
	text-align: center;
	font-size: 13px;
}
/* í¬ìŠ¤í„°ìŠ¤í‹¸ì»· ========== */
.movi_tab_info3 {
	margin-bottom: 60px;
}
/* swiper - thm */
.slide_steal_thumb_box {
	position: relative;
	height: 133px;
	padding: 0 40px;
}
/* .slide_steal_thumb {padding:0 40px; }
.slide_steal_thumb .swiper-wrapper {overflow:hidden; margin:0 40px; overflow:hidden; width:auto; } */
.slide_steal_thumb .swiper-button-next {
	position: absolute;
	top: 50%;
	right: 0;
}

.slide_steal_thumb .swiper-button-prev {
	position: absolute;
	top: 50%;
	left: 0;
}

.slide_steal_thumb .swiper-slide {
	height: 133px;
	width: auto;
}

.slide_steal_thumb .swiper-slide img {
	height: 133px;
	width: auto;
}

.slide_steal_thumb .swiper-slide-thumb-active {
	position: relative;
	/*display:block; box-sizing: border-box; border:3px solid #FF243E*/
}

.slide_steal_thumb .swiper-slide-thumb-active:before {
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 133px;
	border: 3px solid #FF243E;
	z-index: 200;
	box-sizing: border-box;
}

.slide_steal_thumb .swiper-button-prev2, .slide_steal_thumb .swiper-button-next2
	{
	border: 1px solid #CCC;
	background-color: #FFF;
	width: 40px;
	height: 133px;
	margin: 0;
	top: 0;
	box-sizing: border-box;
}

.slide_steal_thumb .swiper-button-next2 {
	position: absolute;
	top: 0;
	right: 0;
	background: #FFF url("../images/icon/arr_rg_11.png") no-repeat center
		center;
}

.slide_steal_thumb .swiper-button-prev2 {
	position: absolute;
	top: 0;
	left: 0;
	background: #FFF url("../images/icon/arr_lf_11.png") no-repeat center
		center;
}
/* swiper - view */
.slide_steal_top {
	margin-top: 20px;
	background: #222;
}

.slide_steal_top .swiper-wrapper .swiper-slide em {
	display: block;
	overflow: hidden;
	height: 510px;
	margin: 0 auto;
	text-align: center;
}

.slide_steal_top .swiper-wrapper .swiper-slide em img {
	height: 100%;
	margin: 0 auto;
	text-align: center;
}

.slide_steal_top .swiper-button-next, .slide_steal_top .swiper-button-prev
	{
	width: 31px;
	height: 60px;
	margin-top: -30px;
}

.slide_steal_top .swiper-button-next {
	right: 21px;
	background: url("../../Content/images/icon/arr_rg_31_wht.png") no-repeat
		0 0;
}

.slide_steal_top .swiper-button-prev {
	left: 21px;
	background: url("../../Content/images/icon/arr_lf_31_wht.png") no-repeat
		0 0;
}
/* owl - thm */
.stealcut_thumb_wrap {
	overflow: hidden;
	position: relative;
	height: 133px;
	padding: 0 40px;
}

.stealcut_thumb_wrap .owl-carousel .item {
	height: 133px;
	width: auto;
}

.stealcut_thumb_wrap .owl-carousel .item img {
	height: 133px;
	width: 233px;
}

.stealcut_thumb_wrap .owl-carousel .owl-nav {
	top: auto;
	height: auto;
	margin-top: 0;
}

.stealcut_thumb_wrap .owl-carousel .owl-nav button {
	position: absolute;
	top: 0;
	width: 40px;
	height: 133px;
	margin: 0;
	box-sizing: border-box;
	border: 1px solid #CCC;
	background-color: #FFF;
}

.stealcut_thumb_wrap .owl-carousel .owl-nav .owl-prev {
	left: -40px;
	background: #FFF url("../images/icon/arr_lf_11.png") no-repeat center
		center;
}

.stealcut_thumb_wrap .owl-carousel .owl-nav .owl-next {
	right: -40px;
	background: #FFF url("../images/icon/arr_rg_11.png") no-repeat center
		center;
}

.stealcut_thumb_wrap .owl-carousel .owl-item img {
	width: 233px;
}

.stealcut_thumb_wrap .owl-carousel .owl-item img.poster {
	width: 94px;
}
/* owl - view */
.stealcut_view_wrap {
	overflow: hidden;
	margin-top: 20px;
	background: #222;
}

.stealcut_view_wrap .owl-carousel .item span {
	display: block;
	overflow: hidden;
	height: 510px;
	margin: 0 auto;
	text-align: center;
}

.stealcut_view_wrap .owl-carousel .item span img {
	height: 100%;
	margin: 0 auto;
	text-align: center;
}

.stealcut_view_wrap .owl-carousel .owl-nav {
	top: auto;
	height: auto;
	margin-top: 0;
}

.stealcut_view_wrap .owl-carousel .owl-nav button {
	position: absolute;
	top: 50%;
	width: 31px;
	height: 60px;
	margin-top: -30px;
}

.stealcut_view_wrap .owl-carousel .owl-nav .owl-prev {
	left: 21px;
	background: url("../../Content/images/icon/arr_lf_31_wht.png") no-repeat
		0 0;
}

.stealcut_view_wrap .owl-carousel .owl-nav .owl-next {
	right: 21px;
	background: url("../../Content/images/icon/arr_rg_31_wht.png") no-repeat
		0 0;
}

.stealcut_view_wrap .owl-carousel .owl-item img {
	width: auto;
}
/* ê°ë…ë°ì¶œì—° ========== */
.movie_detail_people {
	position: relative;
	margin-bottom: 60px;
}

.movie_detail_people .bx_list_people {
	height: 360px;
	overflow: hidden;
}

.movie_detail_people .bx_list_people>ul:after {
	content: "";
	display: block;
	clear: both;
}

.movie_detail_people .bx_list_people>ul li {
	float: left;
	position: relative;
	width: 25%;
	height: 90px;
	margin-bottom: 30px;
	padding-left: 110px;
	box-sizing: border-box;
}

.movie_detail_people .bx_list_people>ul li a {
	position: absolute;
	top: 0;
	left: 0;
	vertical-align: middle;
}

.movie_detail_people .bx_list_people>ul li a .thm {
	display: block;
	overflow: hidden;
	width: 90px;
	height: 90px;
	border-radius: 50%;
}

.movie_detail_people .bx_list_people>ul li a .thm img {
	width: 100%;
	border-radius: 50%;
}

.movie_detail_people .bx_list_people>ul li .infor {
	display: table;
	height: 100%;
	margin-left: 14px;
	padding-right: 10px;
}

.movie_detail_people .bx_list_people>ul li .infor>div {
	display: table-cell;
	vertical-align: middle;
}

.movie_detail_people .bx_list_people>ul li .infor .tit {
	display: block;
	margin-bottom: 4px;
	font-size: 13px;
	text-decoration: underline
}

.movie_detail_people .bx_list_people>ul li .infor .txt {
	display: block;
	font-size: 13px;
	color: #666;
}

.movie_detail_people .bx_list_people>ul li .infor .nm {
	display: block;
	position: inherit;
}

.movie_detail_people .btn_txt_more {
	margin-top: 10px;
}

.movie_detail_people.active .bx_list_people {
	height: auto;
}
/* vod ========== */
.movi_vod_info {
	margin-bottom: 60px;
}

.movi_vod_info .tit_info {
	margin-bottom: -40px;
}

.movi_vod_info .tit_info .sub1 {
	display: block;
	margin-bottom: 7px;
	font-size: 15px;
	font-family: 'Roboto', "Noto Sans KR";
}

.movi_vod_info .tit_info .sub2 {
	font-size: 13px;
	color: #666;
}

.movi_vod_info a {
	display: block;
}

.movi_vod_info a em {
	display: block;
	width: 151px;
	height: 216px;
}

.movi_vod_info a em img {
	width: 100%;
}

.movi_vod_info a strong {
	display: block;
	margin-top: 13px;
	text-align: center;
	font-size: 13px;
}

.movi_vod_info .swiper-wrapper {
	padding-top: 57px;
}

.movi_vod_info .swiper-button-next {
	position: absolute;
	top: 0px;
	right: 0;
	margin: 0;
}

.movi_vod_info .swiper-button-prev {
	position: absolute;
	top: 0px;
	left: inherit;
	right: 25px;
	margin: 0;
}
/*.movi_vod_info .swiper-button-prev.swiper-button-disabled, .movi_vod_info .swiper-button-next.swiper-button-disabled {opacity:1} */

/* tab - í‰ì ë°ë¦¬ë·° ============================== */
/* í‰ì  */
.movi_score_box {
	margin: 40px 0 33px 0;
	text-align: center;
}

.movi_score_box .txt_ic_score2 {
	margin-bottom: 15px;
}

.movi_score_box .txt_info {
	font-size: 13px;
	color: #666;
	line-height: 1.3
}
/* ë¦¬ë·°ìž‘ì„± */
.movi_review_box {
	height: 90px;
	margin-bottom: 55px;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.movi_review_box .star_score_box {
	float: left;
	width: 320px;
	height: 88px;
	background: #F8F8F8;
	text-align: center;
	border-right: 1px solid #ccc
}

.movi_review_box .star_score_box .score_info {
	display: block;
	margin: 20px 0 7px 0;
	font-size: 13px;
}

.movi_review_box .star_score_box .score_info em {
	font-family: 'Roboto', "Noto Sans KR";
	font-size: 28px;
}

.movi_review_box .review_write_box {
	float: left;
	width: 538px;
}

.movi_review_box .review_write_box textarea {
	height: 70px;
	border: none;
}

.movi_review_box .review_write_box textarea:disabled {
	background: none;
}

.movi_review_box .review_write_box .byte_info {
	display: block;
	margin: 0 10px 10px 0;
	text-align: right;
	font-size: 10px;
	color: #666;
	font-family: 'Roboto', "Noto Sans KR";
}

.movi_review_box .review_write_box .byte_info strong {
	color: #000;
	font-weight: bold;
}

.movi_review_box .btn_submit {
	float: left;
	width: 119px;
	height: 90px;
	border: none;
	margin: -1px -1px 0 0;
	padding: 0;
	background: #666;
	color: #fff;
	font-size: 15px;
}

.movi_review_box .btn_col4 {
	background: none;
}

.movi_review_list .review_top {
	overflow: hidden;
	width: 100%;
	margin-bottom: 14px;
}

.movi_review_list .review_top .total_info {
	float: left;
	font-size: 15px;
}

.movi_review_list .review_top .total_info em {
	font-weight: bold;
	font-family: 'Roboto', "Noto Sans KR";
}

.movi_review_list .review_top .sort_list {
	overflow: hidden;
	float: right;
}
/* ë¦¬ë·°ëª©ë¡ */
.review_con_list>li {
	position: relative;
	padding: 20px 0 15px 68px;
	border-top: 1px solid #eee
}

.review_con_list>li:first-child {
	border-color: #ccc
}

.review_con_list>li.my_review {
	background: #F8F8F8
}

.review_con_list>li .img_info {
	display: block;
	position: absolute;
	top: 15px;
	left: 10px;
	overflow: hidden;
	width: 42px;
	height: 42px;
	border-radius: 50%;
}

.review_con_list>li .img_info img {
	width: 100%;
	border-radius: 50%;
}

.review_con_list .top_info {
	margin-bottom: 12px;
}

.review_con_list .top_info .name_info {
	position: relative;
	padding-right: 11px;
	margin-right: 9px;
	font-size: 12px;
}

.review_con_list .top_info .name_info:before {
	content: '';
	display: block;
	position: absolute;
	top: 3px;
	right: 0;
	width: 1px;
	height: 12px;
	background: #EEEEEE
}

.review_con_list .top_info .txt_ic_score {
	font-size: 14px;
	margin-right: 11px;
}

.review_con_list .txt_cpn2 {
	height: 13px;
	line-height: 13px;
}

.review_con_list .review_info {
	margin-bottom: 11px;
	font-size: 13px;
}

.review_con_list .btm_info .date_info {
	font-size: 11px;
	color: #666;
}

.review_con_list .btn_info {
	position: absolute;
	top: 15px;
	right: 0
}

.review_con_list .btn_info .btn_box {
	display: none;
}

.review_con_list .btn_info.active .btn_box {
	display: inline-block;
}

.review_con_list .btn_col4 {
	height: 25px !important;
	margin-left: 4px;
	line-height: 25px !important;
	font-size: 11px;
}

/* ì˜í™” ========================================================================================= */
.contents_movie_list .tit_type1 {
	margin-bottom: 17px;
}
/* ì˜í™”í™ˆ ============================== */
/* .slide_visual_movie_home .owl-carousel .owl-stage .item a {display:block; position:relative; height:420px;} */
.slide_visual_movie_home .owl-carousel .owl-stage .item img {
	width: auto; /*position:absolute; left:50%;  margin-left:-960px;*/
}

.movi_current_list, .movi_pre_list {
	position: relative;
	margin-bottom: 37px;
}

.contents_movie_home .movi_pre_list .btn_txt_more, .contents_movie_home .movi_current_list .btn_txt_more
	{
	position: absolute;
	top: 8px;
	right: 0
}
/* ê¸°íšì „ ìŠ¬ë¼ì´ë“œ */
.exhibition_list_wrap {
	margin-bottom: 12px
}

.exhibition_list {
	margin: 0 -8px
}

.exhibition_list>li {
	position: relative;
	width: 316px;
	min-height: 403px;
	margin: 0 8px;
}

.exhibition_list>li a {
	display: block;
	width: 184px;
	margin: 0 auto;
}

.exhibition_list>li a .img_info {
	display: block;
	width: 184px;
	height: 262px;
	margin-top: 160px;
	-webkit-box-shadow: 0px 3px 5px 0px #333;
	-moz-box-shadow: 0px 3px 5px 0px #333;
	box-shadow: 0px 3px 5px 0px #333;
	border-radius: 4px
}

.exhibition_list>li a .img_info img {
	width: 100%;
	height: 100%;
	border-radius: 4px;
}

.exhibition_list>li .top_info {
	position: absolute;
	top: 72px;
	left: 0;
	width: 100%;
	text-align: center;
}

.exhibition_list>li .top_info .btn_txt_more {
	position: relative;
	z-index: 2;
}

.exhibition_list>li .txt_info {
	display: block;
	margin-bottom: 7px;
	font-size: 23px;
	color: #000;
	line-height: 1.2;
}

.exhibition_list .owl-nav {
	position: absolute;
	left: 0;
	right: 0;
	top: 265px;
	margin: 0;
}

.exhibition_list .owl-nav .owl-prev {
	left: 34px;
}

.exhibition_list .owl-nav .owl-next {
	right: 34px;
}

.exhibition_list .arte_box .swiper-button-prev {
	background: url("../../Content/images/icon/arr_lf_12.png") no-repeat 0 0;
}

.exhibition_list .arte_box .swiper-button-next {
	background: url("../../Content/images/icon/arr_rg_12.png") no-repeat 0 0;
}

.exhibition_list .swiper-container {
	position: static;
}

.exhibition_list .swiper-button-next, .exhibition_list .swiper-button-prev
	{
	top: 265px;
	width: 12px;
	height: 23px;
	opacity: 0.5;
}

.exhibition_list .swiper-button-prev {
	left: 34px;
	background: url("../../Content/images/icon/arr_lf_12_wht.png") no-repeat
		0 0
}

.exhibition_list .swiper-button-next {
	right: 34px;
	background: url("../../Content/images/icon/arr_rf_12_wht.png") no-repeat
		0 0
}

.exhibition_list .arte_box .owl-prev {
	background: url("../../Content/images/icon/arr_lf_12.png") no-repeat 0 0;
}

.exhibition_list .arte_box .owl-next {
	background: url("../../Content/images/icon/arr_rg_12.png") no-repeat 0 0;
}

.exhibition_list .only_box {
	background: url("../../Content/images/movie/bg_exhib_00.png") no-repeat
		0 0
}

.exhibition_list .arte_box {
	background: url("../../Content/images/movie/bg_exhib_01.png") no-repeat
		0 0
}

.exhibition_list .arte_box.type1 {
	background: url("../../Content/images/movie/bg_exhib_01_1.png")
		no-repeat 0 0
}

.exhibition_list .opera_box {
	background: url("../../Content/images/movie/bg_exhib_02.png") no-repeat
		0 0
}

.exhibition_list .movi_box {
	background: url("../../Content/images/movie/bg_exhib_03-1.png")
		no-repeat 0 0
} /* ìˆ˜ì • 2020.05.27 */
.exhibition_list .opera_box .txt_info, .exhibition_list .movi_box .txt_info,
	.exhibition_list .opera_box .btn_txt_more, .exhibition_list .movi_box .btn_txt_more
	{
	color: #fff;
}

.exhibition_list .opera_box .btn_txt_more, .exhibition_list .movi_box .btn_txt_more
	{
	background: url('../images/icon/arr_rg_6_02.png') no-repeat right 51%;
}

.exhibition_list_wrap .add_con {
	position: absolute;
	top: 0;
	left: 0;
	width: 234px;
	height: 438px;
	background: #98C4EA;
}

.exhibition_list>li.ready_info {
	position: relative;
}

.exhibition_list>li.ready_info:before {
	content: '';
	opacity: 0.7;
	display: block;
	position: absolute;
	z-index: 1;
	top: 0;
	width: 100%;
	height: 403px;
	border-radius: 4px;
	background: #000;
}

.exhibition_list>li.ready_info .slide_exhibition {
	display: none;
}

.exhibition_list>li.ready_info .txt_info_ready {
	position: absolute;
	z-index: 1;
	top: 180px;
	width: 100%;
	font-size: 11px;
	color: #FFF;
	text-align: center;
}

.exhibition_list>li.ready_info .txt_info_ready em {
	display: block;
	margin-bottom: 8px;
	font-size: 20px;
	font-family: 'Roboto', "Noto Sans KR";
	color: #FFF;
}

/* ì•„ë¥´ë–¼, ì˜¤íŽ˜ë¼, ì˜í™”ì œ ============================== */
.movi_arte_list ul {
	margin-bottom: 0
}

.movi_arte_list ul li {
	margin-bottom: 42px;
}

/* í˜„ìž¬ì˜ˆì •ìž‘ ============================== */
.movie_list.type2 {
	margin-bottom: 0
}

.movie_list.type2 li {
	height: 310px;
	margin-bottom: 42px;
}

.screen_add_box>a {
	display: block;
	width: 184px;
	height: 310px;
	overflow: hidden;
}

.screen_add_box>a>img {
	width: 100%;
	min-height: 100%;
	border-radius: 4px;
}

.screen_add_box>a>.num_info {
	display: block;
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	border-radius: 0 0 4px 4px;
	height: 23px;
	padding-left: 10px;
	color: #fff;
	font-weight: bold;
	font-size: 26px;
	font-style: italic;
	font-family: 'Roboto', "Noto Sans KR";
	text-align: left;
	background: -moz-linear-gradient(top, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 0.15) 40%, rgba(0, 0, 0, 0.5) 100%);
	background: -webkit-linear-gradient(top, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 0.15) 40%, rgba(0, 0, 0, 0.5) 100%);
	background: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%,
		rgba(0, 0, 0, 0.15) 40%, rgba(0, 0, 0, 0.5) 100%);
	-ms-filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000',
		endColorstr='#80000000', GradientType=0);
	-webkit-border-radius: 0 0 4px 4px;
	-moz-border-radius: 0 0 4px 4px;
	-ms-border-radius: 0 0 4px 4px;
	-o-border-radius: 0 0 4px 4px;
}

.contents_movie_detail .list_lnk a {
	color: #666;
}

.contents_movie_detail .list_lnk .on a {
	font-weight: normal;
	color: #000;
}

.movie_screen_box {
	position: relative;
}

.movie_screen_box .list_lnk {
	position: absolute;
	top: 15px;
	right: 0
}

.movie_screen_box .list_lnk li a {
	font-size: 14px;
	color: #666;
}

.movie_screen_box .list_lnk li.on a {
	color: #000;
	font-weight: normal;
}

.tab_btn_type1 {
	margin-bottom: 17px;
}

.tab_btn_type1:after {
	content: '';
	display: block;
	clear: both;
}

.tab_btn_type1>li {
	float: left;
	margin-right: 30px;
}

.tab_btn_type1>li button {
	padding: 0;
	border: none;
}

.tab_btn_type1>li button>span {
	display: block;
	height: 32px;
	line-height: 32px;
	font-size: 18px;
	color: #000;
	opacity: 0.6
}

.tab_btn_type1>li.active button>span {
	border-bottom: 1px solid #000;
	opacity: 1
}

/* ì˜¤íŽ˜ë¼ ============================== */
.opera_visual_con {
	position: relative;
	margin-bottom: 60px;
	padding-bottom: 60px;
	background: #000
}

.opera_visual_con .swiper-wrapper {
	padding-bottom: 10px;
}

.opera_visual_con .swiper-pagination {
	bottom: 0
}

.opera_visual_con .swiper-pagination-bullet {
	width: 8px;
	height: 8px;
	background: none;
	border: 1px solid #D08814;
	box-sizing: border-box;
}

.opera_visual_con .swiper-pagination-bullet-active {
	background: #D08814
}

.opera_visual_con .swiper-slide {
	height: 610px;
	background: #F1F1F1
}

/* ë°”ìŠ¤í‚¤ì•„ ============================== */
.baskia_visual_con {
	position: relative;
	margin-bottom: 60px;
	background: #fff
}

.baskia_visual_con .owl-carousel .owl-dots {
	bottom: 110px
}

.baskia_visual_con .owl-carousel .owl-dots .owl-dot span {
	width: 6px;
	height: 6px;
	margin: 0 3px;
	background-color: transparent;
	border: 1px solid #333;
	opacity: 1;
}

.baskia_visual_con .owl-carousel .owl-dots .owl-dot.active span,
	.baskia_visual_con .owl-carousel .owl-dots .owl-dot:hover span {
	width: 6px;
	height: 6px;
	margin: 0 3px;
	background-color: #333;
}

/* ê°€ê¹Œìš´ êµ­ë¦½ê·¹ìž¥ ============================== */
.nationaltheater_visual_con {
	position: relative;
	margin-bottom: 60px;
	background: #fff
}

.nationaltheater_visual_con .owl-carousel .owl-dots {
	bottom: 80px
}

.nationaltheater_visual_con .owl-carousel .owl-dots .owl-dot span {
	width: 7px;
	height: 7px;
	margin: 0 9px;
	background-color: transparent;
	border: 1px solid #333;
	opacity: 1;
}

.nationaltheater_visual_con .owl-carousel .owl-dots .owl-dot.active span,
	.nationaltheater_visual_con .owl-carousel .owl-dots .owl-dot:hover span
	{
	width: 7px;
	height: 7px;
	margin: 0 9px;
	background-color: #333;
}

.nationaltheater_visual_con .owl-carousel .owl-nav .owl-next {
	right: 15px;
	background: url(../images/icon/arr_rg_15.png) no-repeat center center;
}

.nationaltheater_visual_con .owl-carousel .owl-nav .owl-prev {
	left: 15px;
	background: url(../images/icon/arr_lf_15.png) no-repeat center center;
}

/* ì˜í™”ì œ ============================== */
.noPoster_box {
	margin-top: 45px;
}

.noPoster_box .tit_info {
	height: 36px;
	padding-bottom: 14px;
	margin: 0 0 15px 0;
	border-bottom: 1px solid #ddd;
}

.noPoster_box .tit_info strong {
	display: inline-block;
	overflow: hidden;
	width: 220px;
	font-size: 13px;
	vertical-align: top;
	margin-left: 10px;
	line-height: 1.4
}

.noPoster_box .noPoster_list {
	overflow: hidden;
	margin: 0 -8px 25px
}

.noPoster_box .noPoster_list:after {
	content: '';
	display: block;
	clear: both;
}

.noPoster_box .noPoster_list>li {
	position: relative;
	width: 316px;
	height: 255px;
	float: left;
	margin: 0 8px 16px;
	padding: 17px 19px 25px;
	border: 1px solid #ddd;
	border-radius: 4px;
	box-sizing: border-box;
}

.noPoster_box .noPoster_list .movi_info {
	margin-bottom: 25px;
	font-size: 11px;
}

.noPoster_box .noPoster_list .movi_info li {
	margin-top: 8px;
}

.noPoster_box .noPoster_list .movi_info li:first-child {
	margin-top: 0
}

.noPoster_box .noPoster_list .movi_info em {
	display: inline-block;
	width: 48px;
	color: #666;
}

.noPoster_box .btn_wrap {
	width: 100%
}

.noPoster_box .btn_wrap a {
	width: 133px;
	margin-left: 8px;
}

.noPoster_box .btn_wrap a:first-child {
	margin-left: 0
}

.noPoster_box .open_type {
	display: block;
	position: absolute;
	top: -1px;
	right: -1px;
	width: 60px;
	height: 57px;
	background: url("../images/movie/ico_open_type1.png") no-repeat 0 0;
}

.noPoster_box .open_type em {
	overflow: hidden;
	position: absolute !important;
	width: 1px;
	height: 1px;
	clip: rect(1px, 1px, 1px, 1px);
}

.noPoster_box .open_type.type2 {
	background: url("../images/movie/ico_open_type2.png") no-repeat 0 0;
}
/* íŒì—… - ì‹œë†‰ì‹œìŠ¤ */
.layer_wrap.layer_synopsis {
	width: 500px;
}

.layer_wrap.layer_synopsis .synopsis_con .tit_info {
	display: block;
	margin-bottom: 17px;
	font-size: 15px;
}

.layer_wrap.layer_synopsis .synopsis_con .txt_info {
	color: #666;
	line-height: 1.5
}

/* ì˜í™”ê´€/ìƒì„¸ ========================================================================================= */
.contents_theater_detail .theater_top_wrap {
	position: relative;
	margin: 18px 0 0 22px;
}

.contents_theater_detail .theater_top_wrap .info_wrap {
	width: 470px;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_tit {
	font-size: 0;
	margin-bottom: 34px;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_tit .tit
	{
	display: inline-block;
	margin-right: 10px;
	font-size: 32px;
	vertical-align: middle;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_tit .btn_col4
	{
	margin-top: 2px;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_info {
	margin-bottom: 15px;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_info dt {
	display: inline-block;
	font-size: 15px;
	margin-right: 10px;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_info dt:before
	{
	content: '';
	display: inline-block;
	border-radius: 50%;
	width: 3px;
	height: 3px;
	background: #666666;
	margin-right: 5px;
	vertical-align: middle;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-ms-border-radius: 50%;
	-o-border-radius: 50%;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_info dt:first-child+dd::after
	{
	content: '';
	display: inline-block;
	width: 1px;
	height: 14px;
	background: #DDDDDD;
	margin: 0 16px;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_info dd {
	display: inline-block;
	font-size: 15px;
	font-weight: bold;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_info dt.adr
	{
	text-indent: -9999em;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_info dt.adr:before
	{
	display: none;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_info dd.adr
	{
	min-width: 220px;
	margin: 24px 0 0;
	letter-spacing: -1px
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_notice dt
	{
	display: inline-block;
	width: 80px;
	font-size: 15px;
	font-weight: bold;
	vertical-align: middle;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_notice dd
	{
	display: inline-block;
	width: 370px;
	font-size: 15px;
	color: #666666;
	vertical-align: middle;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_notice dd>a
	{
	display: block;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	vertical-align: middle;
}

.contents_theater_detail .theater_top_wrap .info_wrap .pop_wrap {
	margin: 46px 0 38px;
}

.contents_theater_detail .theater_top_wrap .info_wrap .pop_wrap>li {
	display: inline-block;
	margin-right: 25px;
}

.contents_theater_detail .theater_top_wrap .info_wrap .pop_wrap>li a {
	display: block;
	text-align: center;
	vertical-align: middle;
}

.contents_theater_detail .theater_top_wrap .info_wrap .pop_wrap>li a img
	{
	display: inline-block;
	margin-right: 10px;
	vertical-align: middle;
}

.contents_theater_detail .theater_top_wrap .info_wrap .pop_wrap>li a span
	{
	font-size: 15px;
	vertical-align: middle;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap {
	position: absolute;
	right: 0;
	bottom: 0;
	width: 447px; /*height:219px;*/
	box-sizing: border-box;
	border-radius: 12px;
	padding: 20px 30px 20px 40px;
	background-color: #F8F8F8;
} /* 2020.01.07 */
.contents_theater_detail .theater_top_wrap .rcm_wrap:before {
	content: "";
	position: absolute;
	top: 30px;
	left: -20px;
	width: 0px;
	height: 0px;
	border-radius: 4px;
	border-top: 16px solid transparent;
	border-right: 24px solid #F8F8F8;
	border-bottom: 16px solid transparent;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap {
	width: 240px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .rcm_txt
	{
	font-size: 15px;
	color: #666;
	line-height: 1.3;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .rcm_txt:after
	{
	content: '';
	display: block;
	background: #BBBBBB;
	width: 24px;
	height: 1px;
	margin: 10px 0 8px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .rcm_txt strong
	{
	font-weight: bold;
	color: #000;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .rcm_txt span
	{
	font-size: 20px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .rcm_info
	{
	font-size: 0;
	color: #000;
	line-height: 20px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .rcm_info dt
	{
	font-size: 13px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .rcm_info dd
	{
	display: inline-block;
	font-size: 13px;
	margin-right: 10px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .rcm_info dd strong
	{
	font-size: 13px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .rcm_info dd .txt_ic_score
	{
	margin-top: -4px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .btn_wrap
	{
	margin-top: 12px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .btn_wrap>button,
	.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .btn_wrap>a
	{
	border: 0 none;
	margin: 0 10px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .btn_wrap>button:first-child,
	.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .btn_wrap>a:first-child
	{
	margin-left: 0;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .thm a
	{
	overflow: hidden;
	position: absolute;
	top: 22px;
	right: 32px;
	width: 123px;
	border-radius: 4px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	-o-border-radius: 4px;
}

.contents_theater_detail .theater_top_wrap .rcm_wrap .rcm_txt_wrap .thm a img
	{
	width: 100%;
}

.contents_theater_detail .theater_top_wrap .notice_wrap {
	display: block;
	background: #ffffff url('../images/icon/notice_14.png') no-repeat 20px
		50%;
	border: 1px solid #DDDDDD;
	border-radius: 4px;
	padding: 12px 12px 12px 38px;
	font-size: 13px;
	margin: 30px 0 50px -22px;
	box-sizing: border-box;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	-o-border-radius: 4px;
}

.contents_theater_detail .movie_grade_wrap {
	border-top: 1px solid #BBBBBB;
	background: #F8F8F8;
	padding: 14px;
	text-align: right;
	font-size: 0;
}

.contents_theater_detail .movie_grade_wrap .txt_grade {
	margin-right: 10px;
}

.contents_theater_detail .time_select_wrap.ty2 ul.list_time {
	margin-left: -2%;
}

.contents_theater_detail .time_select_wrap.ty2 ul.list_time li {
	width: 10.5%;
}

.contents_theater_detail .time_select_wrap.ty2 ul.list_time li:nth-child(4n+1)
	{
	margin-left: 2%;
}

.contents_theater_detail .time_select_wrap.ty2 .list_tit {
	margin-bottom: 18px;
	font-size: 0;
}

.contents_theater_detail .time_select_wrap.ty2 .list_tit p {
	display: inline-block;
	margin: 0 5px;
	font-size: 15px;
	vertical-align: middle;
}

.contents_theater_detail .time_select_wrap.ty2 .list_hall {
	margin-bottom: 16px;
}

.contents_theater_detail .time_select_wrap.ty2 .list_hall .hall {
	font-weight: bold;
}

.contents_theater_detail .special_slct_wrap {
	position: absolute;
	right: 0;
	top: -80px;
}

.contents_theater_detail .th_price_wrap .th_price_tit {
	margin-bottom: 10px;
}

.contents_theater_detail .th_price_wrap .th_price_tit .tit {
	display: inline-block;
	font-size: 15px;
	padding-left: 20px;
}

.contents_theater_detail .th_price_wrap .th_price_tit p {
	float: right;
	margin-top: 2px;
	font-size: 11px;
	color: #666666;
}

.contents_theater_detail .th_price_wrap .th_price_tit p:before {
	content: 'â€»';
	margin-right: 5px;
	font-size: 12px;
}

.contents_theater_detail .th_price_wrap .th_price_table {
	margin-bottom: 50px;
}

.contents_theater_detail .th_price_wrap .th_price_table th,
	.contents_theater_detail .th_price_wrap .th_price_table td {
	border-bottom: 1px solid #EEEEEE;
	padding: 18px 0 18px 20px;
	text-align: left;
}

.contents_theater_detail .th_price_wrap .th_price_table thead th {
	background: #F8F8F8;
	border-top: 1px solid #EEEEEE;
	font-size: 14px;
}

.contents_theater_detail .th_price_wrap .th_price_table thead th>span {
	color: #666;
}

.contents_theater_detail .th_price_wrap .th_price_table tbody th {
	font-size: 13px;
	color: #333333;
}

.contents_theater_detail .th_price_wrap .th_price_table tbody td {
	font-size: 11px;
	color: #666666;
	text-align: center;
}

.contents_theater_detail .th_price_wrap .th_price_info_wrap {
	background: #F8F8F8;
	border: 1px solid #DDDDDD;
	border-radius: 4px;
	padding: 30px 25px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	-o-border-radius: 4px;
}

.contents_theater_detail .th_price_wrap .th_price_info_wrap .info_tit {
	margin-bottom: 15px;
	font-size: 15px;
}

.contents_theater_detail .th_price_wrap .th_price_info_wrap .list_txt+.info_tit
	{
	margin-top: 30px;
}

.contents_theater_detail .th_price_wrap .th_price_info_wrap .list_txt li
	{
	margin: 0;
	color: #666666;
}

.contents_theater_detail .event_wrap {
	margin-bottom: 35px;
}

.contents_theater_detail .th_price_wrap .price_tabletoptitle th {
	text-align: center;
	border-bottom: 1px solid #bbb;
}

/* ìŠ¤í† ì–´/í™ˆ ========================================================================================= */
.contents_mall_home .lc_tit {
	position: relative;
	padding: 20px 15px;
	font-size: 16px;
}

.contents_mall_home .lc_itm {
	position: relative;
}

.contents_mall_home .lc_itm>.itm_img {
	position: relative;
	height: 260px;
	margin-bottom: 5px;
}

.contents_mall_home .lc_itm>.itm_img img {
	width: 310px;
	height: 250px;
}

.contents_mall_home .lc_itm>.itm_img .txt_approach {
	position: absolute;
	top: 30px;
	right: 20px;
}

.contents_mall_home .lc_itm>.itm_img .txt_lank {
	position: absolute;
	top: 30px;
	left: 20px;
	background-color: #DDDDDD;
	width: 26px;
	height: 26px;
	line-height: 26px;
	color: #000000;
	font-family: 'Roboto';
	font-style: italic;
	text-align: center;
}

.contents_mall_home .lc_itm>.itm_img .img_badge em {
	position: absolute !important;
	width: 1px;
	height: 1px;
	overflow: hidden;
	clip: rect(1px, 1px, 1px, 1px); /* IE6, IE7 */
	clip: rect(1px, 1px, 1px, 1px);
}

.contents_mall_home .lc_itm .txt_price_wrap {
	font-size: 18px;
	font-weight: bold;
}

.contents_mall_home .lc_wrap.ty3 {
	margin-top: 30px;
}

/* ìŠ¤í† ì–´/ìƒì„¸ ========================================================================================= */
.contents_mall_detail .sec_tit {
	font-size: 15px;
	margin-bottom: 10px;
}

.contents_mall_detail .pd_wrap {
	position: relative;
	min-height: 650px;
	margin: 40px 0 80px;
}

.contents_mall_detail .pd_wrap .pd_img {
	float: left;
	width: 500px;
}

.contents_mall_detail .pd_wrap .pd_img .main_img {
	position: relative;
	margin-bottom: 20px;
	text-align: center;
}

.contents_mall_detail .pd_wrap .pd_img .main_img img {
	width: 478px;
}

.contents_mall_detail .pd_wrap .pd_img .main_img .ico_soldout {
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	width: auto;
	height: auto;
	margin: 0;
	background-color: rgba(0, 0, 0, .2);
	background-image: url('../images/mall/store_soldout_145.png');
}

.contents_mall_detail .pd_wrap .pd_img .pd_with {
	padding: 0 10px;
}

.contents_mall_detail .pd_wrap .pd_img .pd_with a {
	text-align: center;
}

.contents_mall_detail .pd_wrap .pd_img .pd_with a .itm_img {
	position: relative;
}

.contents_mall_detail .pd_wrap .pd_img .pd_with a .itm_img img {
	width: 140px;
}

.contents_mall_detail .pd_wrap .pd_img .pd_with a .itm_img .txt_approach
	{
	position: absolute;
	top: 0;
	right: 0;
}

.contents_mall_detail .pd_wrap .pd_img .pd_with a .badge_wrap {
	height: 16px;
	margin-top: 10px;
	vertical-align: middle;
}

.contents_mall_detail .pd_wrap .pd_img .pd_with a .itm_tit {
	font-size: 13px;
	margin: 5px 0 7px;
}

.contents_mall_detail .pd_wrap .pd_img .pd_with a .itm_price {
	font-size: 18px;
}

.contents_mall_detail .pd_wrap .pd_img .slide_type1 .swiper-button-prev,
	.contents_mall_detail .pd_wrap .pd_img .slide_type1 .swiper-button-next
	{
	margin-top: -35px;
}

.contents_mall_detail .pd_wrap .pd_img .slide_type1 .swiper-button-prev
	{
	left: 0;
}

.contents_mall_detail .pd_wrap .pd_img .slide_type1 .swiper-button-next
	{
	right: 0;
}

.contents_mall_detail .pd_wrap .pd_img .pd_banner {
	position: absolute;
	left: 0;
	bottom: 0;
}

.contents_mall_detail .pd_wrap .pd_img .pd_banner img {
	width: 100%;
}

.contents_mall_detail .pd_wrap .pd_detail {
	margin-left: 550px;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table {
	text-align: left;
	margin-bottom: 30px;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table th,
	.contents_mall_detail .pd_wrap .pd_detail .pd_table td {
	border-bottom: 1px solid #eeeeee;
	padding: 20px 0;
	font-size: 15px;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table th {
	text-align: left;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table td {
	color: #666666;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table .badge_wrap {
	border: none;
	padding: 0;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table .tit {
	padding: 10px 0 22px;
	font-size: 28px;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table .txt_sale {
	font-size: 18px;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table .txt_price {
	margin-right: 20px;
	font-size: 25px;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table .txt_price_ins {
	font-size: 16px;;
}

.contents_mall_detail .pd_wrap .pd_detail .bx_num {
	margin-bottom: 40px;
}

.contents_mall_detail .pd_wrap .pd_detail .txt_price_wrap {
	font-size: 15px;
	text-align: right;
	margin-bottom: 10px;
}

.contents_mall_detail .pd_wrap .pd_detail .txt_price_wrap strong {
	margin-left: 20px;
	font-size: 30px;
}

.contents_mall_detail .pd_wrap .pd_detail .txt_price_wrap strong em {
	font-size: 0.667em;
}

.contents_mall_detail .pd_wrap .pd_detail .btn_col4 {
	padding: 0 29px;
	margin-bottom: 5px;
}

.contents_mall_detail .pd_wrap .pd_detail .btn_wrap {
	font-size: 0;
}

.contents_mall_detail .pd_wrap .pd_detail .btn_wrap a,
	.contents_mall_detail .pd_wrap .pd_detail .btn_wrap button {
	width: 212px;
	margin-right: 6px;
	box-sizing: border-box;
}

.contents_mall_detail .pd_wrap .pd_detail .btn_wrap a:only-child,
	.contents_mall_detail .pd_wrap .pd_detail .btn_wrap button:only-child {
	width: 100%;
	margin-right: 0;
}

.contents_mall_detail .pd_wrap .pd_detail .btn_wrap a:last-child,
	.contents_mall_detail .pd_wrap .pd_detail .btn_wrap button:last-child {
	margin: 0;
}

.contents_event .time_wrap, .contents_mall_detail .pd_wrap .pd_detail .time_wrap
	{
	background: #F5F5F5;
	margin-bottom: 25px;
	padding: 15px 20px;
}

.contents_event .time_wrap .txt_count, .contents_mall_detail .pd_wrap .pd_detail .time_wrap .txt_count
	{
	margin: 0 10px 0 15px;
	font-family: 'Roboto';
	font-size: 17px;
	font-weight: bold;
	line-height: 25px;
}

.contents_event .time_wrap .txt_count.txt_color02, .contents_mall_detail .pd_wrap .pd_detail .time_wrap .txt_count.txt_color02
	{
	color: #FE5867;
}

.contents_event .time_wrap .txt_total, .contents_mall_detail .pd_wrap .pd_detail .time_wrap .txt_total
	{
	float: right;
	font-size: 13px;
	line-height: 25px;
}

.contents_event .time_wrap .txt_total strong, .contents_mall_detail .pd_wrap .pd_detail .time_wrap .txt_total strong
	{
	font-family: 'Roboto';
	font-size: 15px;
	font-weight: bold;
	line-height: 25px;
}

.contents_mall_detail .pd_wrap .pd_detail .bx_num {
	width: auto;
}

.contents_mall_detail .pd_wrap .pd_detail .bx_num .txt_num {
	padding: 23px 0;
}

.contents_mall_detail .pd_tab .active .tab_con {
	padding: 30px 0;
}

.contents_mall_detail .pd_tab .active .tab_con .list_txt li {
	line-height: 28px;
}

.contents_mall_detail .pd_tab .active .tab_con .list_txt li:before {
	margin-top: 12px;
}

.contents_mall_detail .pd_tab .active .tab_con .list_txt+.sec_tit {
	margin-top: 50px;
}

/* ì´ë²¤íŠ¸/í™ˆ ========================================================================================= */
#contents.contents_event_home>.title_top {
	padding-top: 0;
}

#contents.contents_event_home .banner_event_btm {
	margin-top: 50px;
}
/* ê³µí†µ */
#contents.contents_event_theater>.title_top.ty2 {
	padding: 0;
	margin-top: 28px;
	margin-bottom: 18px;
}

#contents.contents_event_theater .tbl_list {
	margin-top: 20px;
}

#contents.contents_event_theater>.title_top.ty2+.tab_wrap.outer {
	margin-top: 32px;
}

/* ì´ë²¤íŠ¸/ìš°ë¦¬ë™ë„¤ì˜í™”ê´€ ========================================================================================= */
.ev_bn_wrap {
	position: relative;
}

.ev_bn_wrap::after {
	content: '';
	display: table;
	clear: both;
}

.ev_bn_wrap>li {
	display: block;
	border: 1px solid #D8D8D8;
	border-radius: 4px;
	margin-bottom: 20px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	-o-border-radius: 4px;
}

.ev_bn_wrap>li .bn_tit {
	position: relative;
	display: block;
	border: 0 none;
	width: 100%;
	padding: 26px 30px 30px 40px;
	text-align: left;
	box-sizing: border-box;
}

.ev_bn_wrap>li .bn_tit:after {
	content: '';
	display: inline-block;
	position: absolute;
	right: 27px;
	top: 50%;
	background: url('../images/icon/arr_dw_13.png') no-repeat 50% 50%;
	width: 15px;
	height: 15px;
	margin-top: -6px;
	transition: all 0.3s ease;
	transform: rotate(0deg);
}

.ev_bn_wrap>li .bn_tit.active:after {
	transition: all 0.3s ease;
	transform: rotate(180deg);
}

.ev_bn_wrap>li .bn_tit strong {
	display: block;
	margin-top: 13px;
	font-size: 24px;
	color: #666;
}

.ev_bn_wrap>li .bn_tit .bn_tit_date {
	position: absolute;
	right: 70px;
	top: 50%;
	margin-top: -7px;
	font-size: 15px;
	color: #666666;
}

.ev_bn_wrap>li .bn_cont {
	display: none;
	border-top: 1px solid #D8D8D8;
	border-radius: 4px;
	background: #F8F8F8;
	padding: 30px;
	font-size: 15px;
}

.ev_bn_wrap>li .bn_cont .list_bdr_box {
	border: 0 none;
	padding: 0;
	margin-top: 40px;
}

.lsm_wrap {
	padding: 20px 30px;
	line-height: 22px;
}

/* ì´ë²¤íŠ¸ - ê³µí†µ ========================================================================================= */
/* ì´ë²¤íŠ¸/í…œí”Œë¦¿ ============================== */
.contents_event .evnt_img>img {
	width: 100%;
}

.contents_event .time_wrap {
	margin-bottom: 0;
}

.contents_event .list_bdr_box {
	margin-top: 60px;
}

.contents_event .time_wrap .txt_total {
	float: none;
}

.contents_event .btn_btm_wrap {
	position: relative;
}

.contents_event .btn_btm_wrap .share {
	position: absolute;
	right: 0;
}

.contents_event .btn_btm_wrap .share span.btn_share {
	margin-right: 10px;
}

.contents_event .btn_btm_wrap select {
	width: 176px;
	height: 45px;
	line-height: 45px;
	vertical-align: middle;
}

.contents_event .evnt_movie {
	position: relative;
	display: block;
}

.contents_event .evnt_movie:after {
	content: '';
	display: block;
	position: absolute;
	top: 50%;
	left: 50%;
	background: url('../images/event/mv_btn.png') no-repeat 50% 50%;
	width: 50px;
	height: 50px;
	margin-top: -25px;
	margin-left: -25px;
}

.contents_event .tbl_dtal td img {
	width: 100%;
}

.contents_event .evnt_chk_wrap {
	margin: 60px 0;
}

.contents_event .evnt_chk_wrap .tit_wrap {
	float: left;
	border-top: 1px solid #000;
	width: 220px;
	padding: 40px 0;
}

.contents_event .evnt_chk_wrap .tit_wrap .tit {
	display: inline-block;
	font-size: 45px;
	margin-bottom: 50px;
}

.contents_event .evnt_chk_wrap .tit_wrap .tit span {
	font-family: 'Roboto';
	font-size: 50px;
	color: #FF243E;
}

.contents_event .evnt_chk_wrap .tit_wrap .cunt {
	font-size: 18px;
}

.contents_event .evnt_chk_wrap .tit_wrap .cunt strong {
	font-family: 'Roboto';
	font-weight: bold;
	color: #FF243E;
}

/* íŒì—… - ì´ë²¤íŠ¸ê²Œì‹œê¸€ ìž‘ì„±, ìˆ˜ì •, ìƒì„¸ë³´ê¸° ============================== */
.layer_gallary .layer_contents {
	max-height: 500px;
	box-sizing: border-box;
}

.layer_gallary .view_detail_tit {
	position: relative;
	border-bottom: 1px solid #000;
	padding-bottom: 15px;
	margin-bottom: 20px;
}

.layer_gallary .view_detail_tit .view_tit {
	margin-bottom: 10px;
	font-size: 18px;
}

.layer_gallary .view_detail_tit .tit_info {
	display: inline-block;
	font-size: 13px;
}

.layer_gallary .view_detail_tit .tit_info+.tit_info {
	margin-left: 30px;
}

.layer_gallary .view_detail_tit .btn_like_wrap {
	position: absolute;
	right: 0;
	bottom: 15px;
}

.layer_gallary .view_detail_tit .btn_like_wrap span {
	font-family: 'Roboto';
	font-size: 13px;
	font-weight: bold;
}

.layer_gallary .view_detail_cont {
	line-height: 1.5;
}

.layer_gallary .view_detail_cont img {
	display: block;
	width: 100%;
	margin: 30px 0;
}

/* ì¶œì„ì²´í¬/ë‹¬ë ¥ ============================== */
.contents_event .evnt_chk_wrap .cal_wrap {
	margin-left: 284px;
}

.contents_event .evnt_chk_wrap .cal_wrap table {
	background: #ffffff;
	border: 0 none;
	width: 660px;
}

.contents_event .evnt_chk_wrap .cal_wrap table th, .contents_event .evnt_chk_wrap .cal_wrap table td
	{
	border: 0 none;
	padding: 27px 35px;
	font-size: 22px;
	text-align: center;
}

.contents_event .evnt_chk_wrap .cal_wrap table thead th {
	background: #FE5867;
	color: #ffffff;
}

.contents_event .evnt_chk_wrap .cal_wrap table tbody {
	border: 1px solid #DDDDDD;
}

.contents_event .evnt_chk_wrap .cal_wrap table tbody td {
	color: #000000;
}

.contents_event .evnt_chk_wrap .cal_wrap table thead th.sun {
	border-radius: 10px 0 0 0;
	-webkit-border-radius: 10px 0 0 0;
	-moz-border-radius: 10px 0 0 0;
	-ms-border-radius: 10px 0 0 0;
	-o-border-radius: 10px 0 0 0;
}

.contents_event .evnt_chk_wrap .cal_wrap table thead th.sat {
	border-radius: 0 10px 0 0;
	-webkit-border-radius: 0 10px 0 0;
	-moz-border-radius: 0 10px 0 0;
	-ms-border-radius: 0 10px 0 0;
	-o-border-radius: 0 10px 0 0;
}

.contents_event .evnt_chk_wrap .cal_wrap .sun {
	padding-left: 50px;
}

.contents_event .evnt_chk_wrap .cal_wrap .sat {
	padding-right: 50px;
}

.contents_event .evnt_chk_wrap .cal_wrap table tbody td.sun {
	color: #F24A6A;
}

.contents_event .evnt_chk_wrap .cal_wrap table tbody td.sat {
	color: #233CA3;
}

.contents_event .evnt_chk_wrap .cal_wrap table tbody td.disabled {
	color: #B2B2B2;
}

.contents_event .evnt_chk_wrap .cal_wrap table tbody td.checked {
	background: url('../images/event/cal_chk.png') no-repeat 50% 50%;
	font-size: 0;
	color: transparent;
	text-indent: -9999em;
}

/* ì¶œì„ì²´í¬ - ìŠ¤íƒ¬í”„ ============================== */
.contents_event .evnt_chk_wrap .stp_wrap {
	margin-left: 270px;
}

.contents_event .evnt_chk_wrap .stp_wrap:after {
	content: '';
	display: table;
	clear: both;;
}

.contents_event .evnt_chk_wrap .stp_wrap>li {
	display: inline-block;
	width: 130px;
	margin: 0 20px;
	margin-top: 30px;
	text-align: center;
}

.contents_event .evnt_chk_wrap .stp_wrap>li .stp_img {
	margin-bottom: 15px;
}

.contents_event .evnt_chk_wrap .stp_wrap>li .stp_txt {
	font-size: 20px;
	font-weight: bold;
	color: #B2B2B2;
}

.contents_event .evnt_chk_wrap .stp_wrap>li .stp_txt strong {
	font-family: 'Roboto';
}

.contents_event .evnt_chk_wrap .stp_wrap>li.active .stp_txt {
	color: #FE5867;
}

/* ì´ë²¤íŠ¸ - ì„¤ë¬¸/í€´ì¦ˆ ============================== */
.contents_event .qus_wrap {
	margin-top: 40px;
}

.contents_event .qus_wrap>li {
	border-bottom: 1px solid #EEEEEE;
	padding: 30px 0 15px;
}

.contents_event .qus_wrap>li dt {
	margin-bottom: 15px;
}

.contents_event .qus_wrap>li dt strong {
	margin-right: 9px;
	vertical-align: middle;
}

.contents_event .qus_wrap>li dt p {
	display: inline-block;
	font-size: 15px;
	font-weight: bold;
	line-height: 19px;
	vertical-align: middle;
}

.contents_event .qus_wrap>li dd {
	padding-left: 34px;
}

.contents_event .qus_wrap>li dd input[type="checkbox"]+label {
	width: 24.3902%;
	margin-right: 0;
	margin-bottom: 15px;
}

.contents_event .qus_wrap>li dd input[type="checkbox"]+label:before {
	margin-right: 10px;
}

.contents_event .qus_wrap>li dd .bx_textarea input {
	margin-bottom: 10px;
}

/* ì´ë²¤íŠ¸ - ëŒ“ê¸€ ============================== */
.comment_wrap {
	position: relative;
}

.comment_wrap .wrt_wrap {
	border-top: 1px solid #EEEEEE;
	border-bottom: 1px solid #EEEEEE;
	margin-bottom: 40px;
	padding: 40px 0 30px;
}

.comment_wrap .wrt_wrap .qus_tit {
	margin-bottom: 20px;
	font-size: 15px;
	font-weight: bold;
}

.comment_wrap .wrt_wrap .inp_cmt {
	margin-bottom: 10px;
}

.comment_wrap .wrt_wrap .inp_cmt:after {
	content: '';
	display: table;
	clear: both;
}

.comment_wrap .wrt_wrap .inp_cmt textarea {
	float: left;
	border-radius: 5px 0 0 5px;
	width: 855px;
	height: 100px;
	-webkit-border-radius: 5px 0 0 5px;
	-moz-border-radius: 5px 0 0 5px;
	-ms-border-radius: 5px 0 0 5px;
	-o-border-radius: 5px 0 0 5px;
}

.comment_wrap .wrt_wrap .inp_cmt button {
	float: left;
	border-radius: 0 5px 5px 0;
	width: 125px;
	height: 100px;
	-webkit-border-radius: 0 5px 5px 0;
	-moz-border-radius: 0 5px 5px 0;
	-ms-border-radius: 0 5px 5px 0;
	-o-border-radius: 0 5px 5px 0;
}

/* ì´ë²¤íŠ¸ - ì‹œë„¤ë§ˆí´ ============================== */
.contents_event .evnt_tit {
	margin: 60px auto;
	font-size: 32px;
	color: #666;
}

.contents_event .vote_wrap {
	position: relative;
}

.contents_event .vote_wrap .vote_info_wrap {
	background: #F8F8F8;
	border-bottom: 1px solid #EEEEEE;
	padding: 17px 28px 0;
}

.contents_event .vote_wrap .vote_info_wrap strong {
	display: inline-block;
	width: 80px;
	margin-right: 30px;
	margin-bottom: 10px;
	color: #666666;
	font-size: 15px;
}

.contents_event .vote_wrap .vote_info_wrap span {
	margin-bottom: 10px;
	color: #000000;
	font-size: 15px;
}

.contents_event .vote_wrap .vote_tit {
	line-height: 1.3;
	margin: 60px auto 56px;
	font-size: 32px;
	color: #666;
}

.contents_event .vote_wrap .vote_tit img {
	margin-bottom: 20px;
}

.contents_event .vote_wrap .vote_list_wrap {
	position: relative;
	padding: 0 97px;
	text-align: center;
}

.contents_event .vote_wrap .vote_list_wrap>li {
	position: relative;
	display: inline-block;
	margin-bottom: 58px;
	text-align: center;
}

.contents_event .vote_wrap .vote_list_wrap.ty1>li {
	width: 258px;
}

.contents_event .vote_wrap .vote_list_wrap.ty1>li .vote_itm {
	display: block;
	border: 0 none;
	width: 200px;
	padding: 0;
	margin: 0 auto;
	text-align: center;
}

.contents_event .vote_wrap .vote_list_wrap.ty1>li .vote_itm img {
	width: 200px;
	height: 200px;
	border-radius: 50%;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-ms-border-radius: 50%;
	-o-border-radius: 50%;
}

.contents_event .vote_wrap .vote_list_wrap.ty1>li .vote_itm span {
	display: block;
	margin: 10px 0 0;
	font-size: 16px;
}

.contents_event .vote_wrap .vote_list_wrap.ty1>li .vote_itm.active:after
	{
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 30px;
	background: rgba(255, 119, 135, .9)
		url('../images/event/vote_chk_65.png') no-repeat 50% 50%;
	border-radius: 50%;
	width: 200px;
	height: 200px;
	z-index: 10;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-ms-border-radius: 50%;
	-o-border-radius: 50%;
}

.contents_event .vote_wrap .vote_list_wrap.ty2>li label {
	display: inline;
	background: #F8F8F8;
	border-radius: 5px;
	margin-right: 15px;
	padding: 16px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
}

.contents_event .vote_wrap+.btn_btm_wrap {
	margin-top: 0;
}

.contents_event .vote_result_wrap {
	border-top: 1px solid #BBBBBB;
	padding: 0 60px;
}

.contents_event .vote_result_wrap .vote_tit {
	position: relative;
	font-size: 40px;
	margin: 56px auto 30px;
}

.contents_event .vote_result_wrap .vote_tit span {
	margin-left: 13px;
	font-size: 13px;
}

.contents_event .vote_result_wrap .vote_tit span:before {
	content: "Â·";
	margin-right: 5px;
}

.contents_event .vote_result_wrap .vote_tit .my_vote {
	position: absolute;
	top: 23px;
	right: 0;
	font-size: 16px;
	color: #ED4C6B;
}

.contents_event .vote_result_wrap .vote_tit .my_vote:before {
	content: '';
	display: inline-block;
	background: url('../images/icon/chk_8_4.png') no-repeat 50% 50%;
	width: 10px;
	height: 10px;
	margin-right: 10px;
	font-size: 16px;
	color: #ED4C6B;
}

.contents_event .vote_result_wrap .vote_result {
	position: relative;
}

.contents_event .vote_result_wrap .vote_result li {
	clear: both;
	margin-bottom: 30px;
}

.contents_event .vote_result_wrap .vote_result li:after {
	content: '';
	display: table;
	clear: both;
}

.contents_event .vote_result_wrap .vote_result li img {
	float: left;
	width: 100px;
	height: 100px;
	border-radius: 50%;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-ms-border-radius: 50%;
	-o-border-radius: 50%;
}

.contents_event .vote_result_wrap .vote_result li .itm_wrap {
	padding: 23px 0 18px;
}

.contents_event .vote_result_wrap .vote_result li img+.itm_wrap {
	margin-left: 140px;
}

.contents_event .vote_result_wrap .vote_result li .itm_wrap .txt_tit {
	display: inline-block;
	margin-bottom: 10px;
	font-size: 16px;
}

.contents_event .vote_result_wrap .vote_result li .itm_wrap .txt_state {
	float: right;
	margin-bottom: 6px;
	font-family: 'Roboto';
	font-size: 20px;
	color: #ED4C6B;
}

.contents_event .vote_result_wrap .vote_result li .itm_wrap .progress {
	background: #F3F3F3;
	border-radius: 0 5px 5px 0;
	width: 100%;
	height: 30px;
	-webkit-border-radius: 0 5px 5px 0;
	-moz-border-radius: 0 5px 5px 0;
	-ms-border-radius: 0 5px 5px 0;
	-o-border-radius: 0 5px 5px 0;
}

.contents_event .vote_result_wrap .vote_result li .itm_wrap .progress .state
	{
	background: #FF7787;
	border-radius: 0 5px 5px 0;
	height: 30px;
}

.contents_event .vote_result_wrap+.btn_btm_wrap {
	margin-top: 40px;
}

.contents_event .vote_wrap .hint {
	text-align: center;
	font-size: 20px;
	line-height: 20px;
}

.contents_event .vote_wrap .hint em+span {
	margin-left: 20px;
}

.contents_event .vote_wrap .hint em {
	vertical-align: middle;
}

.contents_event .vote_wrap .hint_letter_wrap {
	background: #F8F8F8;
	margin: 60px 0;
	padding: 35px;
	text-align: center;
}

.contents_event .vote_wrap .hint_letter_wrap li {
	display: inline-block;
	background: #ffffff;
	border: 1px solid #DDDDDD;
	border-radius: 5px;
	width: 70px;
	height: 70px;
	line-height: 70px;
	font-family: 'Noto Sans KR';
	font-size: 42px;
	font-weight: bold;
	color: #000000;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-ms-border-radius: 5px;
	-o-border-radius: 5px;
}

.contents_event .vote_wrap .hint_letter_wrap li+li {
	margin-left: 15px;
}

.contents_event .vote_wrap .btn_wrap {
	text-align: center;
	margin: 30px 0;
}

.contents_event .vote_wrap .btn_wrap button {
	width: 160px;
}

.ip_radio_chk {
	position: relative;
	margin-bottom: 50px;
}

.ip_radio_chk input+label {
	cursor: pointer;
	vertical-align: top;
}

.ip_radio_chk input[type="radio"]+label:before {
	position: absolute;
	bottom: -30px;
	left: 50%;
	margin-left: -10px;
}

.ip_radio_chk label img {
	overflow: hidden;
	margin-bottom: 10px;
}

.ip_radio_chk label .title {
	display: block;
	margin: 10px 0 0;
	font-size: 16px;
}

/* vod ========================================================================================= */
.vod_event_box {
	margin: 30px 0;
	text-align: center;
}

/* í• ì¸ì•ˆë‚´ ========================================================================================= */
.contents_sale .sale_card_wrap {
	margin-top: 60px;
}

.contents_sale .sale_card_wrap .img_list {
	margin-left: -40px;
	font-size: 0;
}

.contents_sale .sale_card_wrap .img_list>li {
	position: relative;
	display: inline-block;
	width: 300px;
	min-height: 300px;
	margin-left: 40px;
	margin-bottom: 35px;
	vertical-align: top;
}

.contents_sale .sale_card_wrap .img_list>li img {
	display: block;
	border-radius: 9px;
	width: 300px;
	height: 190px;
	margin: 0 auto;
	-webkit-border-radius: 9px;
	-moz-border-radius: 9px;
	-ms-border-radius: 9px;
	-o-border-radius: 9px;
}

.contents_sale .sale_card_wrap .img_list>li dl {
	padding-top: 16px;
	text-align: center;
}

.contents_sale .sale_card_wrap .img_list>li dl dt {
	min-height: 38px;
	font-size: 18px;
	margin: 12px 0 8px;
}

.contents_sale .sale_card_wrap .img_list>li dl dd {
	margin-bottom: 12px;
	font-size: 13px;
	color: #666666;
}

.contents_sale .sale_card_wrap .img_list>li dl dd .txt_card+.txt_card {
	margin-left: 5px;
}

.contents_sale .sale_card_wrap .img_list>li .itm_detail {
	overflow: hidden;
	position: absolute;
	width: 100%;
	height: 0;
	top: 0;
	left: 0;
}

.contents_sale .sale_card_wrap .img_list>li .itm_detail.active {
	overflow: inherit;
	height: 100%;
	min-height: 300px;
	background: rgba(0, 0, 0, .8);
	padding: 20px 20px 50px;
	border-radius: 9px;
	-webkit-border-radius: 9px;
	-moz-border-radius: 9px;
	-ms-border-radius: 9px;
	-o-border-radius: 9px;
	box-sizing: border-box;
}

.contents_sale .sale_card_wrap .img_list>li .itm_detail>ul>li {
	color: #ffffff;
}

.contents_sale .sale_card_wrap .img_list>li .itm_detail>span {
	position: absolute;
	bottom: 25px;
	font-size: 13px;
	color: #FFFFFF;
	opacity: 0.6;
}

.contents_sale .sale_card_wrap .img_list>li .itm_detail .btn_col2 {
	position: absolute;
	bottom: 20px;
	right: 20px;
	border-color: #ffffff;
	background: transparent;
	width: 100px;
	font-size: 13px;
}

/* ê³ ê°ì„¼í„°/ê³µì§€ì‚¬í•­ ========================================================================================= */
.contents_customer .search_wrap+.tbl_list thead th {
	border-top-color: transparent;
}

.contents_customer .tbl_form td label+button, .contents_customer .tbl_form td select+select
	{
	margin-left: 5px;
}

/* ê³ ê°ì„¼í„°/FAQ ========================================================================================= */
.faq_icon_wrap {
	position: relative;
	background: #F5F5F5;
	padding: 12px 13px;
	margin-bottom: 48px;
	white-space: nowrap;
	text-align: center;
}

.faq_icon_wrap button {
	display: inline-block;
	border: 1px solid #EEEEEE;
	border-radius: 4px;
	background: transparent no-repeat top 23px center;
	width: 98px;
	padding: 57px 0 19px;
	margin-left: 6px;
	font-size: 13px;
	text-align: center;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	-o-border-radius: 4px;
}

.faq_icon_wrap button:first-child {
	margin-left: 0;
}

.faq_icon_wrap button.active {
	background-color: #fff;
	border-color: #C9C9C9;
}

.faq_icon_wrap .ico_01 {
	background-image: url('../images/customer/ic_faq_cate_01.png');
	background-position: center 25px;
}

.faq_icon_wrap .ico_02 {
	background-image: url('../images/customer/ic_faq_cate_02_20210407.png');
	background-position: center 22px;
} /* 2020.03.17 */
.faq_icon_wrap .ico_03 {
	background-image: url('../images/customer/ic_faq_cate_03.png');
	background-position: center 24px;
}

.faq_icon_wrap .ico_04 {
	background-image: url('../images/customer/ic_faq_cate_04_20210421.png');
	background-position: center 23px;
}

.faq_icon_wrap .ico_05 {
	background-image: url('../images/customer/ic_faq_cate_05.png');
	background-position: center 26px;
}

.faq_icon_wrap .ico_06 {
	background-image: url('../images/customer/ic_faq_cate_06.png');
	background-position: center 24px;
}

.faq_icon_wrap .ico_07 {
	background-image: url('../images/customer/ic_faq_cate_07.png');
	background-position: center 30px;
}

.faq_icon_wrap .ico_08 {
	background-image: url('../images/customer/ic_faq_cate_08.png');
	background-position: center 23px;
}

.faq_icon_wrap .ico_09 {
	background-image: url('../images/customer/ic_faq_cate_09.png');
	background-position: center 22px;
}

/* ê³ ê°ì„¼í„°/1:1ë¬¸ì˜ë‚´ìš© ========================================================================================= */
.contents_customer .con_top {
	position: relative;
	background-color: #F8F8F8;
	padding: 35px 0;
	text-align: center;
}

.contents_customer .con_top.ty2 {
	background-color: #fff;
	padding: 48px 0 20px;
	text-align: right;
}

.contents_customer .con_top.ty3 {
	text-align: left;
	padding: 35px;
}

.contents_customer .con_top .ico_tit {
	display: inline-block;
	background-repeat: no-repeat;
	background-position: top 50% left;
	min-width: 250px;
	min-height: 35px;
	line-height: 1.4;
	padding-left: 55px;
	text-align: left;
	font-size: 15px;
}

.contents_customer .con_top .ico_tit.qus {
	background-image: url('../images/customer/ic_qus.png');
	background-position: top 5% left;
}

.contents_customer .con_top .ico_tit.lnt {
	background-image: url('../images/customer/ic_lnt.png');
	padding-top: 5px;
	padding-bottom: 5px;
}

.contents_customer .con_top .ico_tit .list_txt .desc_type1 {
	padding-left: 10px;
	color: #707070
}

.contents_customer .con_top p {
	font-size: 15px;
	line-height: 24px;
}

.contents_customer .con_top .btn_wrap {
	position: absolute;
	right: 18px;
	top: 40px;
} /* 2020.02.28 */
.contents_customer .con_top [class^="btn_col"] {
	min-width: 146px;
	margin-left: 10px;
} /* 2020.05.08 */
.contents_customer .con_tit {
	font-size: 20px;
	margin: 20px 0;
}

.contents_customer .con_tit.ty2 .tit {
	display: inline-block;
}

.contents_customer .con_tit .group_rgt {
	float: right;
	margin-top: 4px;
}

.contents_customer .con_tit .txt_req {
	font-size: 14px;
	color: #FF243E;
}

.contents_customer .con_tit .txt_req:before {
	content: '*';
	margin-right: 4px;
	font-size: 14px;
	color: #FF243E;
}

.contents_customer .privacy_wrap {
	background: transparent;
	margin-bottom: 50px;
}

.contents_customer .privacy_wrap .agree_box {
	overflow-y: auto;
	height: 170px;
	width: 100%;
	padding: 21px 33px;
	border: 1px solid #ddd;
	border-radius: 3px;
	background: #f8f8f8;
	font-size: 14px;
	line-height: 1.5;
	box-sizing: border-box;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-ms-border-radius: 3px;
	-o-border-radius: 3px;
}

.contents_customer .privacy_wrap .agree_box .tit_info {
	display: block;
	margin-bottom: 10px;
	font-size: 16px;
}

.contents_customer .privacy_wrap .agree_box .list_info {
	margin-bottom: 10px;
}

.contents_customer .privacy_wrap .agree_box .txt_info {
	margin-bottom: 10px;
}

.contents_customer .privacy_wrap .bx_inp {
	margin: 30px 0;
	text-align: right;
}

.contents_customer .bx_fin {
	background: url('../images/customer/bg_fin.png') no-repeat 50% 0;
	padding-top: 135px;
	margin: 55px 0 85px 0;
	text-align: center;
}

.contents_customer .bx_fin p {
	line-height: 26px;
	font-size: 15px;
}

.contents_customer .contxt_type1 {
	margin: 20px 0 50px 0;
}

.contents_customer .contxt_type1 .tit {
	padding-bottom: 5px;
	font-size: 15px;
	color: #000;
}

.contents_customer .contxt_type1 .desc {
	font-size: 12px;
	color: #707070;
	line-height: 1.3;
}

.txt_color02 {
	color: #ff7787 !important;
}

/* ê³ ê°ì„¼í„°/ë‹¨ì²´ê´€ëžŒ, ëŒ€ê´€ë¬¸ì˜ ========================================================================================= */
.contents_customer .lnt_count th {
	padding: 20px 4px;
	vertical-align: top;
}

.contents_customer .lnt_count td {
	border-bottom: 0px none;
}

.contents_customer .lnt_count span {
	display: inline-block;
	margin-right: 5px;
	vertical-align: middle;
}

.contents_customer .lnt_inp th {
	padding: 20px 4px;
	vertical-align: top;
}

.contents_customer .lnt_inp td input+input {
	margin-top: 10px;
}

/* ë¡œê·¸ì¸ ========================================================================================= */
.member_login_wrap .contents_inner {
	position: relative;
}

.member_login_wrap .ad_box {
	position: absolute;
	right: 0;
	top: 20px;
	width: 451px;
	height: 220px;
}

.member_login_wrap .login_box {
	position: relative;
	width: 470px;
	min-height: 220px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.member_login_wrap .login_box .tip {
	font-size: 15px;
}

.member_login_wrap .login_box .login_area {
	position: relative;
	margin-top: 21px;
	padding-right: 120px;
}

.member_login_wrap .login_box .login_area input {
	display: block;
	width: 100%;
	height: 45px;
}

.member_login_wrap .login_box .login_area input+input {
	margin-top: 10px;
}

.member_login_wrap .login_box .login_area .btn_login {
	position: absolute;
	right: 0;
	top: 0;
	width: 110px;
	height: 100px;
	color: #fff;
	font-size: 16px;
	border-radius: 4px;
	background-color: #FF243E;
}

.member_login_wrap .login_box .login_bot_wrap {
	margin: 15px 0 40px;
}

.member_login_wrap .login_box .login_bot_wrap:after {
	display: block;
	content: '';
	clear: both;
}

.member_login_wrap .login_box .login_bot_wrap .login_check {
	float: left;
}

.member_login_wrap .login_box .login_bot_wrap .login_check label {
	min-width: 88px;
}

.member_login_wrap .login_box .login_bot_wrap .login_menu {
	float: right;
	font-size: 0;
	line-height: 20px;
}

.member_login_wrap .login_box .login_bot_wrap .login_menu a {
	position: relative;
	margin-left: 20px;
	color: #666;
	font-size: 12px;
}

.member_login_wrap .login_box .login_bot_wrap .login_menu a:after {
	content: '';
	position: absolute;
	left: -11px;
	top: 50%;
	margin-top: -5px;
	width: 1px;
	height: 10px;
	background: #ddd;
}

.member_login_wrap .login_box .login_bot_wrap .login_menu a:first-child
	{
	margin-left: 0;
}

.member_login_wrap .login_box .login_bot_wrap .login_menu a:first-child:after
	{
	display: none;
}

.member_login_wrap .login_box .login_ad {
	text-align: right;
}

.member_login_wrap .login_box.social {
	padding-top: 76px;
}

.member_login_wrap .login_box.social .login_bot_wrap {
	text-align: center;
}

.member_login_wrap .login_box.social .login_bot_wrap .login_menu {
	float: none;
	padding-left: 56px;
}

.member_login_wrap .login_box .btn_naver_social, .member_login_wrap .login_box .btn_cacao_social
	{
	display: block;
	position: relative;
	padding-left: 56px;
	width: 470px;
	height: 50px;
	line-height: 48px;
	font-size: 16px;
	text-align: center;
	border: 1px solid #ddd;
	border-radius: 4px;
	background-color: #fff;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.member_login_wrap .login_box .btn_naver_social::after {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	width: 56px;
	height: 50px;
	border-right: 1px solid #ddd;
	background: url('../images/icon/social_naver.png') no-repeat center
		center;
}

.member_login_wrap .login_box .btn_cacao_social::after {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	width: 56px;
	height: 50px;
	border-right: 1px solid #ddd;
	background: url('../images/icon/social_cacao.png') no-repeat center
		center;
}

.member_login_wrap .login_input_box .login_form_wrap {
	width: 470px;
	min-height: 220px;
	padding-top: 20px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.member_login_wrap .login_input_box .list_txt {
	margin-top: 33px;
	padding-left: 128px;
	color: #666;
}

.member_login_wrap .txtarea_box {
	margin: 30px 0 30px;
}

.member_login_wrap .txtarea_box .agreement_check_box {
	margin-top: 28px;
	text-align: right;
}

.member_login_wrap .btn_btm_wrap {
	margin-bottom: 0;
}
/* form */
.join_input_box {
	position: relative;
	padding-left: 160px;
}

.join_input_box .title {
	position: absolute;
	left: 0;
	top: 0;
	width: 140px;
	line-height: 40px;
	letter-spacing: -0.5px;
	font-size: 15px;
	text-align: right;
}

.join_input_box .inp_box {
	font-size: 0;
}

.join_input_box .inp_box input {
	width: 100%;
}

.join_input_box .inp_box>select {
	padding: 0 18px;
	width: 91px;
}

.join_input_box .inp_box>select:first-child {
	width: 108px;
}

.join_input_box .inp_box>select ~ select {
	margin-left: 10px;
}

.join_input_box ~ .join_input_box {
	margin-top: 5px;
}
/* ë¹„íšŒì› */
.txtarea {
	padding: 21px 32px;
	overflow-y: scroll;
	height: 133px;
	line-height: 1.6;
	font-size: 14px;
	border: 1px solid #ddd;
	background-color: #fff;
}

/* íšŒì›ê°€ìž… - L.POINT ========================================================================================= */
.contents_lpoint .join_wrap {
	margin-top: 55px;
}

.contents_lpoint .join_wrap .step_tit {
	font-size: 20px;
	margin-bottom: 10px;
}

.contents_lpoint .join_wrap .step_tit .step {
	display: block;
	border-radius: 4px;
	background: #23363D;
	width: 104px;
	height: 26px;
	line-height: 26px;
	font-family: 'Roboto';
	font-size: 15px;
	color: #ffffff;
	text-align: center;
	margin-bottom: 10px;
	vertical-align: text-bottom;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	-o-border-radius: 4px;
}

.contents_lpoint .join_wrap p {
	display: inline-block;
	font-size: 15px;
	line-height: 1.4;
}

.contents_lpoint .join_wrap .btn_join {
	float: right;
	background: #2AA3FE;
	margin-top: -15px;
	width: 180px;
}

.contents_lpoint .join_wrap .btn_join:before {
	content: '';
	background: url('../images/icon/join_16_20210407.png') no-repeat 50% 50%;
	display: inline-block;
	width: 15px;
	height: 15px;
	margin-right: 5px;
	vertical-align: middle;
} /* 2020.03.17 */
.contents_lpoint .inner_table {
	border-left: 0 none;
	border-bottom: 1px solid #DDDDDD;
	padding: 35px 40px;
	vertical-align: top;
	letter-spacing: -1px;
}

.contents_lpoint .inner_table th {
	background: #ffffff;
	border-right: 0 none;
	font-size: 18px;
	padding: 22px 0;
}

.contents_lpoint .inner_table td {
	border-right: 0 none;
	border-bottom: 0 none;
	padding: 35px 40px;
	vertical-align: top;
}

.contents_lpoint .inner_table td+td {
	border-left: 1px solid #dddddd;
}

.contents_lpoint .inner_table td .tit {
	margin: 25px 0 15px;
	color: #707070;
}

.contents_lpoint .inner_table td .list_txt.sm {
	padding-left: 5px;
}

.contents_lpoint .inner_table td .list_txt.sm li {
	color: #777777;
}

.contents_lpoint .inner_table td .btn_col3 {
	width: 200px;
}

.contents_lpoint .join_wrap .valid_wrap {
	background: #F8F8F8;
	border-top: 1px solid #DEDEDE;
	border-bottom: 1px solid #DEDEDE;
	padding: 17px 40px;
	margin: 25px 0 50px;
	color: #666666;
	text-align: center;
}

.contents_lpoint .join_wrap .valid_wrap .txt_caution3 {
	color: #666666;
}

.contents_lpoint .join_wrap .valid_wrap .txt_caution3:after {
	content: '';
	display: inline-block;
	width: 1px;
	height: 10px;
	background: #707070;
	margin: 0 15px;
	vertical-align: middle;
}

.contents_lpoint .join_wrap .partner_wrap .partner_tit {
	margin: 33px 0;
}

.contents_lpoint .join_wrap .partner_wrap .partner_tit h4 {
	font-size: 20px;
	margin-bottom: 10px;
}

.contents_lpoint .join_wrap .partner_wrap .partner_tit p {
	display: inline-block;
	font-size: 15px;
	margin-bottom: 0px;
}

.contents_lpoint .join_wrap .partner_wrap .partner_tit .btn_col3 {
	width: 265px;
	margin-top: -31px;
}

.contents_lpoint .join_wrap .partner_wrap .partner_list .tit {
	font-size: 20px;
	margin-bottom: 10px;
}

.contents_lpoint .join_wrap .partner_wrap .partner_list .list_wrap {
	margin-bottom: 35px;
}

.contents_lpoint .join_wrap .partner_wrap .partner_list .list_wrap:after
	{
	content: '';
	display: table;
	clear: both;
}

.contents_lpoint .join_wrap .partner_wrap .partner_list .list_wrap li {
	float: left;
	border: 1px solid #E3E2E2;
	background: #ffffff;
	width: 139px;
	padding: 51px 0;
	margin-right: -1px;
	margin-bottom: -1px;
}

.contents_lpoint .join_wrap .partner_wrap .partner_list .list_wrap li img
	{
	display: block;
	margin: 0 auto;
}

/* ë§ˆì´íŽ˜ì´ì§€ ========================================================================================= */
/* ê³µí†µ/ìƒë‹¨ ============================== */
.mypage_top_infor {
	position: relative;
	margin: 0 auto 35px;
	border-radius: 10px;
	box-shadow: 0 3px 15px rgba(0, 0, 0, .1);
	background-color: #FFF;
}

.mypage_top_infor::before {
	content: '';
	position: absolute;
	left: 599px;
	top: 0;
	width: 1px;
	height: 100%;
	background-color: #eee;
}

.mypage_top_infor:after {
	display: block;
	content: '';
	clear: both;
}

.my_theater .mypage_top_ad {
	margin-top: 38px;
	padding-bottom: 20px;
}

.my_theater .mypage_top_ad .nomember {
	height: 184px;
	line-height: 184px;
	color: #666;
	font-size: 14px;
	text-align: center;
	border-radius: 4px;
	border: 1px solid #bbb;
}

.my_theater .mypage_top_ad .swiper-wrapper {
	overflow-y: visible;
}

.my_theater .mypage_top_ad .swiper-button-prev, .my_theater .mypage_top_ad .swiper-button-next
	{
	margin-top: -19px;
	width: 37px;
	height: 39px;
}

.my_theater .mypage_top_ad .swiper-button-prev {
	left: 0;
	background: url('../images/icon/arr_lf_19_wht.png') no-repeat center
		center;
}

.my_theater .mypage_top_ad .swiper-button-next {
	right: 0;
	background: url('../images/icon/arr_rg_19_wht.png') no-repeat center
		center;
}

.my_theater .swiper-pagination-bullets {
	bottom: 0;
}

.my_theater .swiper-pagination-bullets .swiper-pagination-bullet {
	opacity: .3;
	width: 6px;
	height: 6px;
	margin: 0 3px;
	background-color: #BBB;
}

.my_theater .swiper-pagination-bullets .swiper-pagination-bullet-active
	{
	opacity: 1;
}

.my_theater .mypage_top_ad .swiper-wrapper a {
	display: block;
	overflow: hidden;
	height: 125px;
	box-sizing: border-box;
	padding: 16px 22px 10px;
	border-radius: 4px;
	border: 1px solid #D8D8D8;
	background-color: #FCFCFC;
}

.my_theater .mypage_top_ad .swiper-wrapper a .txt_zone {
	font-size: 15px;
}

.my_theater .mypage_top_ad .swiper-wrapper a .con {
	margin-top: 14px;
}

.my_theater .mypage_top_ad .swiper-wrapper a .con .tit {
	display: block;
	overflow: hidden;
	font-size: 18px;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.my_theater .mypage_top_ad .swiper-wrapper a .con .date {
	display: block;
	margin-top: 9px;
	font-family: 'Roboto';
	font-size: 15px;
	color: #666;
}

.my_theater .mypage_top_ad .item a {
	display: block;
	overflow: hidden;
	height: 125px;
	box-sizing: border-box;
	padding: 16px 22px 10px;
	border-radius: 4px;
	border: 1px solid #D8D8D8;
	background-color: #FCFCFC;
}

.my_theater .mypage_top_ad .item a .txt_zone {
	font-size: 15px;
}

.my_theater .mypage_top_ad .item a .con {
	margin-top: 14px;
}

.my_theater .mypage_top_ad .item a .con .tit {
	display: block;
	overflow: hidden;
	font-size: 18px;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.my_theater .mypage_top_ad .item a .con .date {
	display: block;
	margin-top: 9px;
	font-family: 'Roboto';
	font-size: 15px;
	color: #666;
}

.my_theater .mypage_top_ad .owl-dots {
	bottom: -20px;
}

.my_theater .mypage_top_ad .owl-dots .owl-dot span {
	opacity: .3;
	width: 6px;
	height: 6px;
	margin: 0 3px;
	background-color: #BBB;
}

.my_theater .mypage_top_ad .owl-dots .owl-dot.active span {
	opacity: 1;
}

/* íŒì—… - MYì˜í™”ê´€ì„¤ì • ============================== */
.movie_set_box {
	padding: 20px 76px;
	border-bottom: 1px solid #DDD;
}

.movie_set_box .theater_box {
	margin-top: 20px;
}

.movie_set_box .theater_box li {
	width: 170px;
}

.movie_set_box .theater_box li ~ li {
	margin-left: 15px;
	width: 170px;
}

/* ê³µí†µ/ë³¸ë¬¸ ============================== */
.mypage_wrap {
	margin-top: 30px;
	padding-top: 35px;
}

.mypage_wrap .txt_list_wrap {
	margin-top: 40px;
}

.mypage_wrap.teenteen {
	margin-top: -35px;
	padding-top: 0;
}
/* ìƒë‹¨ì˜ì—­ */
.title_sub_area {
	position: relative;
	min-height: 40px;
}

.title_sub_area:after {
	display: block;
	content: '';
	clear: both;
}

.title_sub_area .title {
	font-size: 26px;
}

.title_sub_area .left_area {
	float: left;
	padding-top: 12px;
	font-size: 0;
}

.title_sub_area .right_area {
	float: right;
	font-size: 0;
}

.title_sub_area .btn_box {
	position: absolute;
	right: 0;
	top: 0;
}

.title_sub_area .left_area .title {
	display: inline-block;
}

.title_sub_area .left_area .sub {
	margin-left: 22px;
	font-size: 22px;
}

.title_sub_area .left_area .sub em {
	color: #FF243E;
	font-size: 21px;
	font-family: 'Roboto';
	text-decoration: underline;
}

.title_sub_area .btn_box>select {
	width: 116px;
}

.title_sub_area .btn_box>select ~ * {
	margin-left: 20px;
}

.title_sub_area+* {
	margin-top: 25px;
}
/* ë“±ê¸‰ë‹¬ì„±ê²Œì´ì§€ */
.bx_grade {
	position: relative;
	padding: 0 30px;
	margin: 25px 0 10px;
}

.bx_grade.merge2020 {
	position: relative;
	padding: 0 30px;
	margin: 0 0 10px;
} /* 20200116 merge */
.bx_grade .more {
	position: absolute;
	right: 30px;
	top: 0;
	padding-right: 6px;
	color: #000;
	font-size: 11px;
	background: url('../images/icon/ic_more.svg') no-repeat right center;
}

.bx_grade .btn_col5 {
	display: block;
	margin: 30px auto 0;
	width: 170px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.area_gauge {
	position: relative;
	padding-top: 29px;
	padding-bottom: 22px;
}

.area_gauge::after {
	display: block;
	content: '';
	position: absolute;
	left: 0;
	top: 30px;
	width: 100%;
	height: 1px;
	background-color: #666;
}

.area_gauge .gauge {
	position: relative;
	height: 2px;
	background-color: #E5153C;
	z-index: 1;
}

.area_gauge .info {
	position: relative;
}

.area_gauge .info li {
	position: absolute;
	top: 8px;
	font-size: 13px;
}

.area_gauge .info li:nth-of-type(1) {
	left: 0;
}

.area_gauge .info li:nth-of-type(2) {
	left: 12%;
}

.area_gauge .info li:nth-of-type(3) {
	left: 34%;
}

.area_gauge .info li:nth-of-type(4) {
	left: 56%;
}

.area_gauge .info li:nth-of-type(5) {
	left: 78%;
}

.area_gauge .info li:nth-of-type(6) {
	left: 100%;
}

.area_gauge .info li:nth-of-type(2) strong, .area_gauge .info li:nth-of-type(2) em,
	.area_gauge .info li:nth-of-type(3) strong, .area_gauge .info li:nth-of-type(3) em
	{
	width: 40px;
	text-align: center;
}

.area_gauge .info li:nth-of-type(4) strong {
	right: 0;
}

.area_gauge .info li>* {
	display: inline-block;
}

.area_gauge .info li strong {
	position: absolute;
	top: -30px;
	font-weight: 600;
	font-family: 'Roboto';
	text-align: center;
}

.area_gauge .info li span+em {
	margin-left: 4px;
}

.area_gauge .info li em {
	color: #666;
	font-family: 'Roboto';
}

.area_gauge .info li.active span, .area_gauge .info li.active em {
	font-weight: 400;
}

/* ë§ˆì´íŽ˜ì´ì§€/ê²°ì œë‚´ì—­ ========================================================================================= */
/* ê²°ì œë‚´ì—­_ìƒë‹¨ì˜ì—­ */
.mypage_top_area {
	position: relative;
}

.mypage_top_area .array_box {
	position: absolute;
	right: 0;
	top: 16px;
}

.mypage_top_area .array_box .txt {
	margin-left: 9px;
	font-size: 15px;
	border: 0;
	opacity: 0.6;
}

.mypage_top_area .array_box .txt.active {
	opacity: 1;
}

.mypage_top_area .array_box .txt:first-child {
	margin-left: 0;
}

.mypage_top_area .txt_notice {
	padding-top: 0;
}
/* ê²°ì œë‚´ì—­_ë¦¬ìŠ¤íŠ¸ */
.ticket_list {
	position: relative;
	padding: 40px 50px 173px 205px;
	min-height: 523px;
	background: #f8f8f8;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.ticket_list::after, .ticket_list::before {
	content: '';
	position: absolute;
	left: 175px;
	top: 0;
	width: 1px;
}

.ticket_list::after {
	height: 46px;
	background-color: #f8f8f8;
}

.ticket_list::before {
	height: 100%;
	border-left: 1px dashed #bbb;
}

.ticket_list .btn_txt_more {
	position: absolute;
	right: 50px;
	bottom: 80px;
	width: 725px;
}

.ticket_list .ticket_info li {
	position: relative;
	margin-top: 30px;
}

.ticket_list .ticket_info li:after {
	content: '';
	position: absolute;
	left: -40px;
	top: 1px;
	z-index: 3;
	width: 20px;
	height: 20px;
	background: url('../images/icon/rnd_20_off.png') no-repeat;
}

.ticket_list .ticket_info .ticket .info dd li {
	margin-top: 0;
}

.ticket_list .ticket_info .ticket .info dd li:after {
	display: none;
}

.ticket_list .ticket_info li.cancel_check:after {
	background: url('../images/icon/rnd_20_on.png') no-repeat;
}

.ticket_list .ticket_info li.new_day {
	margin-top: 50px;
}

.ticket_list .ticket_info li:first-child {
	margin-top: 0;
}

.ticket_list .ticket_info .date {
	position: absolute;
	left: -155px;
	top: 0;
	font-size: 13px;
	font-family: 'Roboto';
	font-weight: bold;
}

.ticket_list .ticket_info .date .week {
	font-size: 11px;
	font-family: 'Noto';
}

.ticket_list .ticket_info li>button {
	display: block;
	position: relative;
	padding: 0;
	width: 100%;
	border: 0;
	text-align: left;
	background: none;
}

.ticket_list .ticket_info li>button:after {
	content: '';
	position: absolute;
	right: 20px;
	top: 50%;
	margin-top: -4px;
	width: 14px;
	height: 8px;
	background: url('../images/icon/arr_dw_14.png') no-repeat right center;
}

.ticket_list .ticket_info li.open>button:after {
	background: url('../images/icon/arr_up_14.png') no-repeat right center;
}

.ticket_list .ticket_info .tit {
	font-size: 15px;
	vertical-align: middle;
}

.ticket_list .ticket_info .sum {
	margin-left: 12px;
	font-size: 11px;
	vertical-align: middle;
}

.ticket_list .ticket_info .sum em {
	font-size: 13px;
	font-weight: bold;
	font-family: 'Roboto';
}

.ticket_list .ticket_info .num {
	margin-left: 20px;
	color: #666;
	font-size: 11px;
	vertical-align: middle;
}

.ticket_list .ticket_info .num em {
	font-family: 'Roboto';
}

.ticket_list .ticket_info .txt_col7 {
	margin-left: 12px;
	line-height: normal;
	vertical-align: middle;
}

.ticket_list .ticket_info .ticket {
	display: none;
	position: relative;
	margin-top: 23px;
	padding: 23px;
	width: 725px;
	min-height: 392px;
	border: 1px solid #ddd;
	border-radius: 4px;
	background-color: #fff;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.ticket_list .ticket_info .ticket::after {
	content: '';
	position: absolute;
	left: 18px;
	bottom: -1px;
	width: 686px;
	height: 6px;
	background: url('../images/member/bg_ticket.png') #f8f8f8 repeat-x;
}

.ticket_list .ticket_info li.open .ticket {
	display: block;
}

.ticket_info .ticket .info_area::after {
	display: block;
	content: '';
	clear: both;
}

.ticket_info .ticket .info_area .img {
	float: left;
	width: 100px;
	height: 145px;
	border-radius: 4px;
	overflow: hidden;
}

.ticket_info .ticket.product .info_area .img {
	width: 155px;
	border: 1px solid #ddd;
}

.ticket_info .ticket .info_area .img img {
	width: 100%;
}

.ticket_info .ticket .info_area .info {
	margin-left: 20px;
	padding-top: 12px;
	float: left;
	width: 557px;
}

.ticket_info .ticket.product .info_area .info {
	width: 500px;
}

.ticket_info .ticket .info_area .info dl {
	position: relative;
	margin-top: 4px;
	padding-left: 93px;
	min-height: 25px;
	line-height: 25px;
	font-size: 15px;
}

.ticket_info .ticket .info_area .info dl:first-child {
	margin-top: 0;
}

.ticket_info .ticket .info_area .info dt {
	position: absolute;
	left: 0;
	top: 0;
	width: 93px;
}

.ticket_info .ticket .info_area .info dd {
	color: #666;
}

.ticket_info .ticket .info_area .info dd ~ dd {
	margin-top: 4px;
}

.ticket_info .ticket .info_area .info dd em {
	font-family: "Roboto";
}

.ticket_info .ticket .info_area .info dd .btn_col4 {
	margin-left: 6px;
	font-size: 11px;
	line-height: 23px;
}

.ticket_info .ticket .info_area .info .inter {
	position: relative;
	margin-left: 15px;
	padding-left: 16px;
}

.ticket_info .ticket .info_area .info .inter::after {
	content: '';
	position: absolute;
	left: 0;
	top: 50%;
	margin-top: -7px;
	width: 1px;
	height: 14px;
	background-color: #ddd;
}

.ticket_info .ticket .info_area .info .btn_wrap {
	margin-top: 10px;
	width: 100%;
	font-size: 0;
	text-align: right;
}

.ticket_info .ticket .info_area .info .btn_wrap>* {
	margin-left: 8px;
	min-width: 148px;
}

.ticket_info .ticket .info_area .info .btn_wrap>*:first-child {
	margin-left: 0;
}

.ticket_info .ticket .info_area .box_message {
	margin-top: 8px;
	padding-left: 93px;
}

.ticket_info .ticket .info_area .box_message .message {
	padding: 20px 15px;
	color: #666;
	font-size: 13px;
	line-height: 20px;
	border-radius: 4px;
	background-color: #F8F8F8;
}

.ticket_info .ticket .info_area .box_message .bot_area {
	position: relative;
	margin-top: 8px;
	padding-top: 4px;
	padding-right: 86px;
	min-height: 33px;
}

.ticket_info .ticket .info_area .box_message .bot_area .txt_bul2 {
	display: block;
	margin-left: 16px;
}

.ticket_info .ticket .info_area .box_message .bot_area .txt_bul2::before
	{
	content: 'Â·';
	margin: 0;
}

.ticket_info .ticket .info_area .box_message .bot_area .btn_col8 {
	position: absolute;
	right: 0;
	top: 0;
	width: 86px;
}
/* ê²°ì œ */
.payment_area {
	margin-top: 28px;
	border-top: 1px solid #000;
}

.payment_area>* {
	border-top: 1px solid #ddd;
}

.payment_area>*:first-child {
	border-top: 0;
}

.payment_area .date_pay {
	padding: 14px 0;
	line-height: 18px;
	font-size: 13px;
}

.payment_area .date_pay::after {
	display: block;
	content: '';
	clear: both;
}

.payment_area .date_pay>* {
	float: left;
}

.payment_area .date_pay dt {
	width: 66px;
}

.payment_area .date_pay dd {
	color: #666;
}

.payment_area .date_pay .txt_color {
	color: #FF0000;
}

.payment_area .date_pay em {
	line-height: 17px;
	font-family: 'Roboto';
}

.payment_area .total_pay {
	padding-top: 16px;
	min-height: 87px;
}

.payment_area .total_pay::after {
	display: block;
	content: '';
	clear: both;
}

.payment_area .pay_area {
	position: relative;
	float: left;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.payment_area .pay_area:first-child::before {
	display: none;
}

.payment_area .pay_area::before {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	width: 1px;
	height: 73px;
	border-left: 1px dashed #e6e6e6;
}

.payment_area .pay_area:first-child {
	padding-right: 24px;
	width: 200px;
}

.payment_area .pay_area:first-child+.pay_area {
	padding: 0 24px;
	width: 240px;
}

.payment_area .pay_area:first-child+.pay_area::after {
	content: '';
	position: absolute;
	left: -10px;
	top: -3px;
	width: 21px;
	height: 21px;
	background: url('../images/icon/ic_rnd_21_01.png') no-repeat;
}

.payment_area .pay_area:first-child+.pay_area+.pay_area {
	padding-left: 24px;
	width: 235px;
}

.payment_area .pay_area:first-child+.pay_area+.pay_area::after {
	content: '';
	position: absolute;
	left: -10px;
	top: -3px;
	width: 21px;
	height: 21px;
	background: url('../images/icon/ic_rnd_21_02.png') no-repeat;
}

.payment_area .pay_area .pay {
	font-size: 13px;
}

.payment_area .pay_area .pay::after {
	display: block;
	content: '';
	clear: both;
}

.payment_area .pay_area .pay dt {
	float: left;
}

.payment_area .pay_area .pay dd {
	float: right;
}

.payment_area .pay_area .pay em {
	font-family: 'Roboto';
	font-weight: bold;
}

.payment_area .pay_area .pay .txt_color {
	color: #FF243E;
}

.payment_area .pay_area .discont {
	margin-top: 12px;
}

.payment_area .pay_area .discont .pay {
	margin-top: 5px;
	color: #666;
	font-size: 11px;
}

.payment_area .pay_area .discont .pay:first-child {
	margin-top: 0;
}

.payment_area .pay_area .discont .pay em {
	font-weight: 400;
}

.payment_area .pay_area .number {
	margin-top: 9px;
	color: #666;
	font-size: 11px;
	font-family: 'Roboto';
}

.payment_area .pay_area .number .txt_card1 {
	margin-right: 11px;
}

.payment_area .pay_area .noti_txt {
	margin-top: 5px;
	font-size: 11px;
	color: #666;
	letter-spacing: -1px;
	line-height: 1.2
}

/* íŒì—… - ì¹´ë“œë§¤ì¶œì˜¨ë¼ì¸ì „í‘œ ============================== */
.online_slip {
	position: relative;
	padding: 20px;
	background: url('../images/common/bg_order.png') repeat 0 0;
}

.online_slip .btn_col3 {
	position: absolute;
	right: 20px;
	top: 10px;
}

.online_slip .btn_btm_wrap {
	margin-bottom: 0;
}

.slip_tit {
	display: block;
	padding: 0 0 17px;
	text-align: center;
}

.slipTb {
	table-layout: fixed;
	width: 100%;
	border: 0;
	background: #fff;
	font-size: 13px;
}

.slipTb tr:first-child td {
	border-top: 1px solid #e4e3d9;
}

.slipTb tr td:first-child {
	border-left: 1px solid #e4e3d9;
}

.slipTb tr td:last-child {
	border-right: 1px solid #e4e3d9;
}

.slipTb td {
	padding: 10px 18px;
	border-top: 1px solid #e6e6e6;
	border-left: 1px solid #e6e6e6;
	line-height: 15px;
	vertical-align: middle;
}

.slipTb td>span {
	display: block;
	color: #777;
}

.slipTb td.moneyTit {
	height: 30px;
	background: #f9f6ec;
}

.slipTb td.money {
	padding-right: 58px;
	height: 30px;
	border-left: none;
	background: url('../images/common/bg_slip.gif') repeat-y 0 0;
	font-weight: bold;
	text-align: right;
	letter-spacing: 1px;
}

.slipTb td.money.unit {
	padding-bottom: 8px;
	background-image: url('../images/common/bg_slip_unit.gif');
	vertical-align: bottom;
}

.slipTb td.note {
	border-bottom: 1px solid #e4e3d9;
	color: #777;
}

/* ë§ˆì´íŽ˜ì´ì§€/ì¿ í°í•¨ ========================================================================================= */
/* ì‚¬ìš©ê°€ëŠ¥ì¿ í° */
.coupon_possible {
	position: absolute;
	right: 184px;
	top: -45px;
	font-size: 0;
	line-height: 17px;
}

.coupon_possible::after {
	content: '';
	position: absolute;
	right: -24px;
	top: 0;
	width: 1px;
	height: 16px;
	background-color: #ddd;
	display: none;
} /*2020-01-06, eskang fixed*/
.coupon_possible dt, .coupon_possible dd {
	display: inline-block;
	font-size: 12px;
}

.coupon_possible dd {
	margin-left: 6px;
}

.coupon_possible dd em {
	font-family: 'Roboto';
}

.contents_mypage .mypage_coupon .tab_wrap.mid>li.active>.tab_tit span {
	border-bottom: 1px solid #000;
}

.contents_mypage .mypage_coupon .bx_category_slct {
	position: relative;
	margin-top: 70px;
	margin-bottom: 25px;
}

.contents_mypage .mypage_coupon .bx_category_slct .tab_wrap.outer {
	padding-top: 60px;
}

.contents_mypage .mypage_coupon .bx_category_slct .tab_wrap.outer>li>.tab_tit
	{
	height: 30px;
	line-height: 30px;
}

.contents_mypage .mypage_coupon .bx_category_slct .btn_only_txt {
	border: 0 none;
	margin-right: 20px;
	padding: 0;
	font-size: 15px;
	line-height: 17px;
	color: #666;
}

.contents_mypage .mypage_coupon .bx_category_slct .btn_only_txt:last-child
	{
	margin: 0;
}

.contents_mypage .mypage_coupon .bx_category_slct .slct_group {
	display: inline-block;
	width: 100%;
}

.contents_mypage .mypage_coupon .bx_category_slct .slct_group .btn_only_txt
	{
	border-bottom: 1px solid transparent;
}

.contents_mypage .mypage_coupon .bx_category_slct .slct_align {
	position: absolute;
	right: 0;
	top: 20px;
}

.contents_mypage .mypage_coupon .bx_category_slct .slct_align.mod2 {
	top: -45px;
}

.contents_mypage .mypage_coupon .bx_category_slct .btn_only_txt.active {
	color: #000;
}

.contents_mypage .mypage_coupon .search_wrap .btn_text {
	border: 0 none;
	background: none;
	font-size: 15px;
	margin-right: 40px;
}

.contents_mypage .mypage_coupon .acc_head td .tg_wrap {
	font-size: 13px;
	color: #666666;
}

.contents_mypage .mypage_coupon .acc_head td .txt_ic_mall {
	vertical-align: top;
	margin: 3px 5px 0 0;
}

.contents_mypage .mypage_coupon .acc_head td .txt_ic_mall ~.tg_wrap {
	padding-left: 45px;
}

.contents_mypage .mypage_coupon .acc_head.active td, .contents_mypage .mypage_coupon .acc_body.active td
	{
	border-bottom: 0 none;
}

.contents_mypage .mypage_coupon .acc_body.active td {
	padding-bottom: 5px;
}

.contents_mypage .mypage_coupon .acc_body.active .cp_dtl_wrap:after {
	content: '';
	display: table;
	clear: both;
}

.contents_mypage .mypage_coupon .cp_is.ty1 {
	color: #FF243E;
}

.contents_mypage .mypage_coupon .cp_is.ty2 {
	color: #233CA3;
}

.contents_mypage .mypage_coupon .cp_is.ty3 {
	color: #666666;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap {
	position: relative;
	border-radius: 0 0 4px 4px;
	border: 1px solid #EEE;
	/* background:#fff url('../images/customer/bg_cp.png') no-repeat 0 0; */
	padding: 15px 40px;
	text-align: left;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap::before {
	content: '';
	position: absolute;
	left: 50%;
	top: 25px;
	margin-left: -1px;
	width: 1px;
	height: calc(100% - 50px);
	border-right: 1px dashed #EEE;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap:after, .contents_mypage .mypage_coupon .cp_dtl_wrap .cp_itm:after
	{
	content: '';
	display: table;
	clear: both;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_info {
	float: left;
	width: 385px;
	padding-right: 64px; /* border-right:1px dashed #EEE; */;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_info:before,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_info:after {
	content: '';
	position: absolute;
	left: 50%;
	width: 30px;
	height: 15px;
	margin-left: -15px;
	border: 1px solid #EEE;
	background-color: #FFF;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_info:before {
	top: -1px;
	border-top: none;
	border-radius: 0 0 30px 30px;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_info:after {
	bottom: -1px;
	border-bottom: none;
	border-radius: 30px 30px 0 0;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_itm {
	padding: 10px 0;
	border-bottom: 1px dashed #E6E6E6;
	line-height: 33px;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_itm:last-child {
	border-bottom: 0 none;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_tit {
	float: left;
	width: 100px;
	text-align: left;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_txt {
	float: right;
	width: 280px;
	color: #414141;
	text-align: right;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_txt button {
	margin-left: 5px;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_txt .btn_txt_detail {
	font-size: 15px;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_txt strong {
	color: #FF243E;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule {
	float: right;
	width: 400px;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .list_txt {
	margin: 10px 0 0;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .list_txt+p {
	margin: 52px 0 20px;
	font-size: 14px;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .bx_article {
	margin: 17px 0;
	padding-top: 17px;
	border-top: 1px solid #EEE;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .bx_article:first-child
	{
	padding-top: 0;
	border-top: none;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .bx_article .tit_article
	{
	display: block;
	margin-bottom: 4px;
	font-size: 15px;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .bx_article dl:after
	{
	content: "";
	display: block;
	clear: both;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .bx_article dl dt
	{
	clear: both;
	float: left;
	font-size: 14px;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .bx_article dl dt:before
	{
	content: "";
	display: inline-block;
	width: 1px;
	height: 1px;
	margin: 12px 5px 0 1px;
	vertical-align: top;
	background-color: #000;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .bx_article dl dd
	{
	float: right;
	font-size: 14px;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .bx_article .list_txt
	{
	margin-top: 4px;
}

.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule .bx_article .list_txt.ty2 li
	{
	color: #666;
}

/* íŒì—… - ì¿ í°ë“±ë¡ ============================== */
.reg_coupon input[type="text"] {
	width: 100%;
}

.reg_coupon input[type="text"] ~ input[type="text"] {
	margin-top: 9px;
}

.reg_coupon .img_box {
	margin-top: 30px;
	text-align: center;
}

.reg_coupon .list_txt {
	margin-top: 26px;
}

/* íŒì—… - ëª¨ë‹ˆí„°ë§ê´€ëžŒê¶Œì„ ë¬¼í•˜ê¸° ============================== */
.layer_monitor_gift {
	width: 500px;
}

.layer_wrap.layer_monitor_gift .layer_contents {
	padding: 0 0 40px;
}

.layer_monitor_gift .monitor_gift {
	padding: 28px 50px 0px;
}

.layer_monitor_gift .monitor_gift:first-child {
	padding-top: 20px;
	padding-bottom: 23px;
}

.layer_monitor_gift .monitor_gift ~ .monitor_gift {
	position: relative;
}

.layer_monitor_gift .monitor_gift ~ .monitor_gift:after {
	content: '';
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 5px;
	background-color: #eee;
}

.monitor_gift>.tit {
	display: block;
	font-size: 17px;
}

.monitor_gift>input {
	display: block;
	margin-top: 20px;
	width: 100%;
}

.monitor_gift>.txt_tip {
	display: block;
	margin-top: 12px;
	font-size: 12px;
}

.monitor_gift>.gift_top {
	position: relative;
	padding-bottom: 5px;
	border-bottom: 1px solid #eee;
}

.monitor_gift>.gift_top>.tit {
	font-size: 13px;
	line-height: 34px;
}

.monitor_gift>.gift_top>.tit .color_red {
	color: #E5153C;
}

.monitor_gift>.gift_top .btn_bdr_refresh {
	position: absolute;
	right: 0;
	top: 0;
	width: 36px;
	height: 34px;
}

.monitor_gift>.gift_con {
	padding-top: 20px;
	height: 170px;
	overflow-y: auto;
}

.monitor_gift>.gift_con li {
	position: relative;
}

.monitor_gift>.gift_con li ~ li {
	margin-top: 24px;
}

.monitor_gift>.gift_con li>input {
	position: absolute;
}

.monitor_gift>.gift_con li>label {
	display: block;
	position: relative;
	padding-left: 34px;
	font-size: 13px;
	line-height: 20px;
}

.monitor_gift>.gift_con li>label:before {
	position: absolute;
	left: 0;
	top: 0;
}

.monitor_gift>.gift_con li>label>span {
	display: block;
}

/* ë§ˆì´íŽ˜ì´ì§€/MYí´ëŸ½ ========================================================================================= */
/* ë¦¬ìŠ¤íŠ¸, ê°€ìž…í˜„í™© ============================== */
.my_title_top:after {
	display: block;
	content: '';
	clear: both;
}

.my_title_top>.tit {
	float: left;
	font-size: 26px;
	color: #000;
}

.my_title_top .group_rgt {
	float: right;
}

.club_mem_box {
	font-size: 0;
}

.club_mem_box>.tit {
	margin-right: 18px;
	font-size: 15px;
}

.club_mem_box>span.txt_col4 {
	color: #666;
	line-height: 20px;
	font-size: 9px;
	font-weight: 800;
}

.club_mem_box>span.txt_col4 ~ span.txt_col4 {
	margin-left: 4px;
}

.club_list {
	margin-top: 20px;
	margin-bottom: 30px;
	margin-left: -20px;
}

.club_list:after {
	display: block;
	content: '';
	clear: both;
}

.club_list li {
	float: left;
	margin-left: 20px;
	width: 480px;
	height: 255px;
}

.club_list li a {
	display: block;
	position: relative;
	padding-left: 22px;
	padding-top: 70px;
	width: 100%;
	height: 100%;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.club_list li .thm {
	position: absolute;
	left: 0;
	top: 0;
	z-index: -1;
}

.club_list li .state {
	position: absolute;
	right: 0;
	top: 0;
	width: 56px;
	height: 25px;
	color: #fff;
	line-height: 25px;
	font-size: 11px;
	font-weight: bold;
	text-align: center;
	background-color: rgba(0, 0, 0, .3);
}

.club_list li .txt {
	line-height: 26px;
	font-size: 21px;
}

.club_list li .txt span {
	font-weight: bold;
}

.club_list li .benefit {
	position: absolute;
	left: 273px;
	top: 90px;
	width: 208px;
	font-size: 0;
}

.club_list .benefit [class*="colr"] {
	display: inline-block;
	padding-top: 35px;
	width: 104px;
	height: 104px;
	color: #fff;
	line-height: 22px;
	font-size: 17px;
	font-weight: bold;
	letter-spacing: -.5px;
	text-align: center;
	border-radius: 82px;
	background: rgba(0, 0, 0, 0.8);
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.club_list .benefit [class*="colr"]+[class*="colr"] {
	position: relative;
	left: -19px;
}

.club_list .benefit .colr1 {
	background: rgba(24, 168, 220, 0.8)
}

.club_list .benefit .colr2 {
	background: rgba(227, 22, 116, 0.8)
}

.club_list .benefit .colr3 {
	background: rgba(74, 22, 37, 0.8)
}

.club_list .benefit .colr4 {
	background: rgba(45, 74, 121, 0.8)
}

.club_list .benefit [class*="colr"] em {
	font-size: 19px;
	font-family: 'Roboto';
}

.club_list .benefit [class*="colr"] span {
	font-size: 18px;
}
/* ì‚¬ìš©ë°©ë²•,ê¸°ê°„ */
.setp_guide {
	margin-top: 30px;
}

.setp_guide dt {
	margin-bottom: 14px;
	font-size: 15px;
}

.setp_guide dd {
	font-size: 13px;
}

.setp_guide dd ~ dd {
	margin-top: 10px;
}

.setp_guide+.list_bdr_box {
	margin-top: 50px;
}

/* í´ëŸ½ ============================== */
.mypage_wrap .club_noticy_info {
	margin-top: 40px;
	padding: 30px 0 70px;
	text-align: center;
	background: url('../images/icon/ic_quotation.png') no-repeat center top;
}

.mypage_wrap .club_noticy_info .tit {
	color: #E5153C;
	font-size: 18px;
}

.mypage_wrap .club_noticy_info .txt {
	margin-top: 16px;
	font-size: 15px;
	line-height: 20px;
}

.mypage_wrap .club_noticy_info .txt.light {
	margin-top: 14px;
	color: #666;
}

.mypage_wrap .club_noticy_info .txt em {
	font-family: "Roboto";
}

.mypage_wrap .step_list:after {
	display: block;
	content: '';
	clear: both;
}

.mypage_wrap .step_list li {
	float: left;
	padding-top: 20px;
	width: 314px;
	height: 80px;
	text-align: center;
	border: 1px solid #eee;
	border-radius: 4px;
	background-color: #f8f8f8;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.mypage_wrap .step_list li ~ li {
	margin-left: 19px;
}

.mypage_wrap .step_list li span {
	display: block;
	font-size: 11px;
}

.mypage_wrap .step_list li strong {
	display: block;
	margin-top: 6px;
	font-size: 15px;
}

.mypage_wrap .step_list li em {
	font-family: "Roboto";
}

.mypage_wrap .club_coupon {
	position: relative;
	padding-top: 144px;
	height: 210px;
	text-align: center;
	background-color: #F8F8F8;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.mypage_wrap .club_coupon:after {
	content: '';
	position: absolute;
	left: 50%;
	top: 30px;
	margin-left: -145px;
	width: 287px;
	height: 112px;
	background: url('../images/member/bg_clubcoupon_01.png') no-repeat;
}

.mypage_wrap .club_coupon.ty2:after {
	background: url('../images/member/bg_clubcoupon_02.png') no-repeat;
}

.mypage_wrap .club_coupon.ty3:after {
	background: url('../images/member/bg_clubcoupon_03.png') no-repeat;
}

.mypage_wrap .club_coupon .coupon_tit {
	position: absolute;
	left: 0;
	top: 92px;
	z-index: 1;
	width: 100%;
	color: #fff;
	font-size: 21px;
	text-align: center;
	letter-spacing: -.5px;
}

.mypage_wrap .club_coupon .coupon_tit em {
	font-size: 24px;
	font-family: "Roboto";
}

.mypage_wrap .club_coupon .coupon_num {
	margin-top: 12px;
	font-size: 18px;
}

.mypage_wrap .club_coupon .tip_area {
	margin-top: 4px;
	font-size: 15px;
	color: #666;
}

.mypage_wrap .club_coupon .tip_area span ~ span:before {
	content: '/';
	padding-right: 4px;
}
/* í´ëŸ½ë©¤ë²„ì‹­ ê°€ìž…ì•ˆë‚´ 2020.07.17 */
.tab_wrap.join>li>.tab_tit span {
	font-size: 18px
}

.tab_wrap.join>li>.tab_tit {
	text-align: center
}

.mypage_wrap .tab_wrap.join .step_list li span {
	display: block;
	margin-top: 6px;
	font-size: 15px;
}

.mypage_wrap .tab_wrap.join .step_list li {
	width: 230px
}

.tab_wrap.join>li .list_bdr_box {
	padding: 10px 25px;
	text-align: center;
}

.club_list.joinedclub li {
	position: relative;
	width: 313px;
	height: auto
}

.club_list.joinedclub li a {
	padding-left: 0;
	padding-top: 0;
}
/* .club_list.joinedclub li:after {content: ''; display: block; clear: both;} */

/* ë§ˆì´íŽ˜ì´ì§€/MYì˜í™”ê´€ë¦¬ ========================================================================================= */
.my_movie_list {
	margin-left: -40px;
}

.my_movie_list::after {
	display: block;
	content: '';
	clear: both;
}

.my_movie_list li {
	position: relative;
	float: left;
	margin-left: 40px;
	margin-top: 40px;
	padding-left: 204px;
	width: 246px;
	min-height: 262px;
}

.my_movie_list li:first-child, .my_movie_list li:first-child+li {
	margin-top: 0;
}

.my_movie_list .poster {
	position: absolute;
	left: 0;
	top: 0;
	width: 184px;
	height: 262px;
	overflow: hidden;
	border-radius: 4px;
}

.my_movie_list .poster a {
	display: block;
	width: 184px;
	height: 262px;
}

.my_movie_list .poster img {
	width: 100%;
	height: 100%;
}

.my_movie_list .tit {
	display: block;
	padding-top: 8px;
	font-size: 22px;
}

.my_movie_list .tit .ic_grade {
	margin-top: -6px;
	margin-right: 8px;
}

.my_movie_list .detail_info {
	padding-top: 3px;
	height: 75px;
}

.my_movie_list .detail_info+.review_box dd {
	margin-top: 16px;
	height: 72px;
	overflow-y: auto;
}

.my_movie_list .detail_info>.txt {
	display: block;
	font-size: 14px;
	line-height: 23px;
}

.my_movie_list .detail_info>.txt.time {
	font-family: "Roboto";
}

.my_movie_list .detail_info>.txt.time em+em {
	margin-left: 8px;
}

.my_movie_list .detail_info.ty1 {
	margin-top: 10px;
	margin-bottom: 25px;
	padding-bottom: 25px;
	height: 17px;
	border-bottom: 1px solid #EBEBEB;
}

.my_movie_list .detail_info.ty1>span {
	display: inline-block;
	vertical-align: middle;
}

.my_movie_list .detail_info.ty1>* ~ * {
	margin-left: 10px;
}

.my_movie_list .detail_info.ty1>span em {
	font-size: 14px;
}

.my_movie_list .detail_info.ty1>span strong {
	margin-left: 8px;
	font-size: 15px;
	font-family: "Roboto";
	font-weight: bold;
}

.my_movie_list .detail_info.ty1 .txt_ic_score strong {
	margin-left: 2px;
}

.my_movie_list .detail_info.ty1>.txt_lastday strong {
	color: #FF7787;
}

.my_movie_list .review_box dt {
	color: #FF7787;
	font-size: 12px;
	font-family: "Roboto";
	font-weight: bold;
}
/*.my_movie_list .review_box dd {margin-top:6px; font-size:13px; line-height:18px; letter-spacing:-.5px;}*/
/* ì •ì§„í˜¸ ìˆ˜ì • [HS_350] ë§ˆì´ > MYë¬´ë¹„ë¡œê·¸ > ë‚´ê°€ ë³¸ ì˜í™” > ë“±ë¡í•œ ê´€ëžŒí‰ í•œì¤„ë¡œ ê¸¸ê²Œ ë…¸ì¶œ ë¨*/
.my_movie_list .review_box dd {
	margin-top: 6px;
	font-size: 13px;
	line-height: 18px;
	letter-spacing: -.5px;
	height: 76px;
	overflow: hidden;
	word-break: break-all;
}

.my_movie_list .detail_info.ty1+.review_box dd {
	margin-top: 16px;
	height: 72px;
	overflow-y: auto;
}

.my_movie_list .btn_box {
	position: absolute;
	left: 204px;
	bottom: 0;
	font-size: 0;
}

.my_movie_list .btn_box>.btn_col3 ~ .btn_col3 {
	margin-left: 10px;
}

.my_movie_list .btn_box>.btn_txt_del {
	margin-left: 20px;
}

.my_movie_list .user_review_box {
	position: absolute;
	left: 204px;
	bottom: 38px;
}

.my_movie_list .user_review_box span {
	display: inline-block;
	height: 13px;
	line-height: 13px;
}

.my_movie_list .user_review_box span ~ span {
	margin-left: 16px;
}

.my_movie_list+.btn_txt_more {
	margin-top: 56px;
}
/* ë‚˜ì˜ì˜í™”ê°€ì—†ëŠ”ê²½ìš° ë…¸ì¶œ */
.movie_booking_box {
	position: relative;
	padding: 20px 100px;
}

.movie_booking_box>.tit {
	margin-bottom: 18px;
	font-size: 18px;
}

.movie_booking_box .mypage_booking {
	margin-top: 18px;
}

.movie_booking_box .swiper-button-prev-unique, .movie_booking_box .swiper-button-next-unique
	{
	position: absolute;
	top: 50%;
	margin-top: -55px;
	width: 30px;
	height: 60px;
	background-repeat: no-repeat;
	background-position: center;
	cursor: pointer;
}

.movie_booking_box .swiper-button-disabled {
	opacity: 0.3;
}

.movie_booking_box .swiper-button-prev-unique {
	left: 30px;
	background-image: url('../images/icon/arr_lf_31.png');
}

.movie_booking_box .swiper-button-next-unique {
	right: 30px;
	width: 30px;
	height: 60px;
	background-image: url('../images/icon/arr_rg_31.png');
}

.movie_booking_box .poster {
	display: block;
	overflow: hidden;
	position: relative;
	width: 184px;
	height: 262px;
	border-radius: 4px;
	overflow: hidden;
	font-size: 0;
}

.movie_booking_box .poster img {
	width: 100%;
	border-radius: 4px;
}

.movie_booking_box .poster .ic_grade {
	position: absolute;
	right: 8px;
	top: 8px;
}

.movie_booking_box .movie_info {
	margin-top: 15px;
	text-align: center;
}

.movie_booking_box .movie_info .tit_info {
	display: block;
	font-size: 13px;
}

.movie_booking_box .movie_info .sub_info {
	display: block;
	margin-top: 4px;
	font-size: 0;
}

.movie_booking_box .movie_info .sub_info>span ~ span {
	position: relative;
	margin-left: 16px;
}

.movie_booking_box .movie_info .sub_info>span ~ span::before {
	content: '';
	position: absolute;
	left: -8px;
	top: 50%;
	margin-top: -4px;
	width: 1px;
	height: 8px;
	background-color: #ADADAD;
}

.movie_booking_box .movie_info .sub_info strong {
	font-weight: bold;
}

.movie_booking_box .txt {
	font-size: 11px;
	vertical-align: middle;
}

.movie_booking_box .txt strong {
	font-family: 'Roboto';
}

.movie_booking_box .btn_col8 {
	margin-top: 12px;
}

/* ë§ˆì´íŽ˜ì´ì§€/MYì •ë³´ê´€ë¦¬ ========================================================================================= */
.mypage_menu_box:after {
	display: block;
	content: '';
	clear: both;
}

.mypage_menu_box li {
	float: left;
	background-color: #F8F8F8;
}

.mypage_menu_box li ~ li {
	margin-left: 10px;
}

.mypage_menu_box li a {
	display: block;
	position: relative;
	padding-top: 83px;
	width: 188px;
	height: 126px;
	text-align: center;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.mypage_menu_box li .img {
	position: absolute;
	left: 0;
	top: 34px;
	width: 100%;
	text-align: center;
}

.mypage_menu_box+.list_bdr_box {
	margin-top: 20px;
}

.mypage_menu_box li .txt_rt_arrow {
	padding-right: 13px;
	font-size: 13px;
	background: url('../images/icon/arr_rg_6_03.png') no-repeat right center;
	background-position: right 6px;
}

.contents_mypage .mypage_myinfo {
	margin-top: 65px;
}

.contents_mypage .mypage_myinfo .tbl_list .ty5.rnd {
	width: 76px;
	padding: 0;
	text-align: center;
}

.contents_mypage .mypage_myinfo .brd_paginate>div {
	position: absolute;
	right: 0;
	top: -14px;
}

.contents_mypage .mypage_myinfo .brd_paginate>div button {
	width: 146px;
}

.contents_mypage .mypage_myinfo .tbl_list .lost_info {
	position: relative;
	margin-top: 8px;
	color: #666666;
	font-size: 13px;
}

.contents_mypage .mypage_myinfo .tbl_list .lost_info dt,
	.contents_mypage .mypage_myinfo .tbl_list .lost_info dd {
	display: inline-block;
}

.contents_mypage .mypage_myinfo .tbl_list .lost_info dt {
	position: relative;
	padding-right: 8px;
}

.contents_mypage .mypage_myinfo .tbl_list .lost_info dt:after {
	content: '';
	position: absolute;
	right: -3px;
	top: 50%;
	margin-top: -5px;
	width: 1px;
	height: 11px;
	background-color: #666;
}

.contents_mypage .mypage_myinfo .tbl_list .lost_info dd {
	padding-left: 8px;
	margin-right: 15px;
}

.contents_mypage .mypage_myinfo .tbl_dtal {
	border-top: 1px solid #BBBBBB;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_info>td {
	border-bottom-color: #ffffff;
	font-size: 13px;
	padding: 14px 35px;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_info>td .tit:after {
	background: #BBBBBB;
	height: 10px;
	margin: 0 10px;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_info>td .cont em.txt_file
	{
	margin-right: 10px;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_info>td .cont+.tit {
	margin-left: 40px;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_info.ty2>td {
	background: #ffffff;
	border-bottom-color: #EEEEEE;
	font-size: 13px;
	padding: 20px 35px;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_info.ty2>td>div {
	padding: 10px 0px;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_info.ty2>td .tit {
	display: inline-block;
	min-width: 70px;
	text-align: right;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_content>td {
	position: relative;
	padding: 30px 30px 50px;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_content>td .qna_wrap dt
	{
	background-position: 0 0;
	background-repeat: no-repeat;
	font-weight: bold;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_content>td .qna_wrap dt .txt_qna
	{
	margin-right: 10px;
	vertical-align: middle;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_content>td .qna_wrap dd
	{
	line-height: 22px;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_content>td .qna_wrap.qus dt
	{
	margin-bottom: 14px;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_content>td .qna_wrap.qus dd
	{
	padding-left: 33px;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_content>td .qna_wrap.ans dt,
	.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_content>td .qna_wrap.ans dd
	{
	display: inline-block;
	vertical-align: top;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_content>td .qna_info {
	position: absolute;
	right: 32px;
	top: 33px;
	text-align: right;
}

.contents_mypage .mypage_myinfo .tbl_dtal tr.tb_content>td .qna_info .info_date,
	.contents_mypage .mypage_myinfo .survey_wrap.ty2 .info_date {
	display: block;
	margin-bottom: 19px;
	font-family: 'Roboto';
	font-size: 13px;
	color: #666666;
}

.contents_mypage .mypage_myinfo .survey_wrap {
	position: relative;
	background: #F8F8F8;
	border-top: 1px solid #eeeeee;
	border-bottom: 1px solid #eeeeee;
}

.contents_mypage .mypage_myinfo .survey_wrap>dl>dt {
	border-bottom: 1px solid #EEEEEE;
	padding: 28px 31px;
	font-size: 15px;
	color: #8B8B8B;
}

.contents_mypage .mypage_myinfo .survey_wrap>dl>dt strong {
	color: #000000;
	margin-right: 21px;;
}

.contents_mypage .mypage_myinfo .survey_wrap>dl>dd {
	position: relative;
	padding: 35px 35px;
}

.contents_mypage .mypage_myinfo .survey_wrap .bx_category_slct {
	display: inline-block;
}

.contents_mypage .mypage_myinfo .survey_wrap .ico_sur {
	display: inline-block;
	background-color: transparent;
	background-repeat: no-repeat;
	background-position: 0 50%;
	border: 0 none;
	height: 48px;
	padding-left: 58px;
	margin-right: 50px;
	vertical-align: middle;
	opacity: .5;
}

.contents_mypage .mypage_myinfo .survey_wrap .ico_sur.active {
	opacity: 1;
}

.contents_mypage .mypage_myinfo .survey_wrap .ty6.rnd {
	position: absolute;
	right: 35px;
	width: 150px;
}

.contents_mypage .mypage_myinfo .survey_wrap .ico_sur.ty1 {
	background-image: url('../images/customer/ic_survey_01.png');
}

.contents_mypage .mypage_myinfo .survey_wrap .ico_sur.ty2 {
	background-image: url('../images/customer/ic_survey_02.png');
}

.contents_mypage .mypage_myinfo .survey_wrap .ico_sur.ty3 {
	background-image: url('../images/customer/ic_survey_03.png');
}

.contents_mypage .mypage_myinfo .survey_wrap .ico_sur.ty4 {
	background-image: url('../images/customer/ic_survey_04.png');
}

.contents_mypage .mypage_myinfo .survey_wrap .ico_sur.ty5 {
	background-image: url('../images/customer/ic_survey_05.png');
}

.contents_mypage .mypage_myinfo .survey_wrap.ty2 dd {
	padding: 35px 30px 35px 60px;
}

.contents_mypage .mypage_myinfo .survey_wrap.ty2 .ico_sur {
	font-size: 18px;
	opacity: 1;
}

.contents_mypage .mypage_myinfo .survey_wrap.ty2 .ico_sur span {
	display: block;
	margin: 5px 0;
	color: #666;
	font-size: 12px;
}

.contents_mypage .mypage_myinfo .survey_wrap.ty2 .info_date {
	float: right;
}

/* íŒì—… - ê´‘ê³ ìˆ˜ì‹ ë™ì˜ë‚´ì—­í™•ì¸ë°ë³€ê²½ ============================== */
.layer_wrap.layer_ad_agree {
	width: 700px;
}

.layer_wrap.layer_ad_agree .ad_agree_info {
	padding: 30px 50px 0;
}

.layer_wrap.layer_ad_agree .ad_agree_info .ad_txt {
	font-size: 15px;
	font-weight: bold;
}

.layer_wrap.layer_ad_agree .ad_agree_info .ad_txt2 {
	margin-top: 16px;
	font-size: 13px;
	line-height: 18px;
	letter-spacing: -0.5px;
}

.layer_wrap.layer_ad_agree .ad_agree_info .bg_txt {
	margin-top: 20px;
	padding: 30px;
	border: 1px solid #D8D8D8;
	background-color: #f8f8f8;
}

.layer_wrap.layer_ad_agree .ad_agree_info .bg_txt>.tit {
	font-size: 15px;
}

.layer_wrap.layer_ad_agree .ad_agree_info .bg_txt>.txt {
	display: block;
	margin-top: 10px;
	font-size: 13px;
	line-height: 20px;
}

.layer_wrap.layer_ad_agree .ad_agree_info .ad_txt_list {
	margin-top: 30px;
}

.layer_wrap.layer_ad_agree .ad_agree_info .ad_txt_list .tit {
	margin-bottom: 15px;
	font-size: 15px;
}

.layer_wrap.layer_ad_agree .ad_agree_info .ad_txt_list dl {
	font-size: 13px;
	letter-spacing: -0.5px;
}

.layer_wrap.layer_ad_agree .ad_agree_info .ad_txt_list dl ~ dl {
	margin-top: 21px;
}

.layer_wrap.layer_ad_agree .ad_agree_info .ad_txt_list dt {
	position: relative;
	padding-left: 6px;
}

.layer_wrap.layer_ad_agree .ad_agree_info .ad_txt_list dt::after {
	content: '-';
	position: absolute;
	left: 0;
	top: 0;
}

.layer_wrap.layer_ad_agree .ad_agree_info .ad_txt_list dd {
	margin-top: 10px;
	padding-left: 6px;
	letter-spacing: -.7px;
}

.layer_wrap.layer_ad_agree .btn_btm_wrap {
	margin-top: 40px;
	margin-bottom: 40px;
}

.layer_wrap.layer_ad_agree .btn_btm_wrap>* {
	width: 295px;
}

/* ë§ˆì´íŽ˜ì´ì§€/vipì¡´ ========================================================================================= */
#contents.contents_vipzone:before {
	content: "";
	position: absolute;
	z-index: -1;
	left: 0;
	right: 0;
	top: 114px;
	height: 280px;
	background: url('../images/member/bg_vipzone.jpg') repeat-x;
}

#contents.contents_vipzone>.vip_title {
	margin-bottom: 50px;
	text-align: center;
}

.vip_top_infor {
	overflow: hidden;
	position: relative;
	margin: 0 auto 50px;
	border-radius: 10px;
	box-shadow: 0 10px 10px rgba(0, 0, 0, .1);
	background-color: #FFF;
}

.vip_top_infor .mypage_box {
	float: none;
	padding: 0 162px;
	width: auto;
	height: auto;
	min-height: inherit;
	margin-bottom: 40px;
}

.vip_top_infor .mypage_box .my_info {
	padding: 37px 0 0 0;
}

.vip_top_infor .mypage_box .my_info .profile_img {
	display: none;
	left: 0;
	top: 30px;
}

.vip_top_infor .mypage_box .my_info .name strong {
	vertical-align: middle;
}

.vip_top_infor .mypage_box .my_info .name span {
	vertical-align: middle;
}

.vip_top_infor .mypage_box .my_info .name [class*="txt_rank"] {
	margin-top: 1px;
	padding: 0 10px
}

.vip_top_infor .mypage_box .my_info .btn_txt_list {
	margin-left: 0;
	position: absolute;
	right: 0;
	top: -25px;
	border: 0;
}

.vip_top_infor .mypage_box  .bx_grade {
	margin-top: 0;
	padding: 0;
}

.vip_top_infor .btn_wrap {
	position: relative;
	height: 66px;
	margin-top: 26px;
	font-size: 0;
	border-top: 1px solid #eee;
}
/* merge20200116 ì´ì „
.vip_top_infor .mypage_box .my_info .btn_txt_list {margin-left:0; position:absolute; right:0; top:-3px; border:0;}
.vip_top_infor .mypage_box  .bx_grade {margin-top:22px; padding:0;}
.vip_top_infor .btn_wrap {position:relative; height:66px; margin-top:34px; font-size:0; border-top:1px solid #eee;}
*/
.vip_top_infor .btn_wrap:after {
	content: '';
	position: absolute;
	left: 50%;
	top: 23px;
	width: 1px;
	height: 20px;
	background-color: #ddd;
}

.vip_top_infor .btn_wrap>* {
	display: inline-block;
	width: 50%;
	height: 100%;
	line-height: 66px;
	font-size: 15px;
	text-align: center;
	border: 0;
}

.vip_top_infor .btn_wrap>* .btn_txt_edit {
	font-size: inherit;
	font-weight: bold;
}

.vip_top_infor .nomem_page_box {
	margin: 40px 38px 62px;
}

.vip_top_infor .nomem_page_box .user_info .bx_con {
	margin-bottom: 20px;
	text-align: center;
}

.vip_top_infor .nomem_page_box .user_info .bx_con .profile_img {
	display: none;
	overflow: hidden;
	width: 75px;
	height: 75px;
	margin: 0 auto 8px;
}

.vip_top_infor .nomem_page_box .user_info .bx_con .txt {
	line-height: 1.4;
	margin-bottom: 10px;
	font-size: 18px;
	color: #666
}

.vip_top_infor .nomem_page_box .user_info .bx_con .txt strong {
	font-weight: bold;
	color: #000;
}

.vip_top_infor .nomem_page_box .user_info .bx_btm {
	position: relative;
	text-align: center;
}

.vip_top_infor .nomem_page_box .user_info .bx_btm .btn_lnk2 {
	position: absolute;
	right: 0;
	bottom: 0;
}

.rank_2020_wrap {
	margin-top: 50px;
}

.rank_2020_wrap>.tit {
	font-size: 18px;
}

.rank_2020_wrap .rank_2020_list {
	position: relative;
	margin-top: 20px;
	border-top: 1px solid #bbb;
	border-bottom: 1px solid #eee;
}

.rank_2020_wrap .rank_2020_list::before {
	content: '';
	position: absolute;
	left: 0;
	top: 79px;
	width: 100%;
	height: 1px;
	background-color: #bbb;
}

.rank_2020_wrap .rank_2020_list::after {
	display: block;
	content: '';
	clear: both;
}

.rank_2020_wrap .rank_2020_list dl {
	float: left;
	width: 25%;
	text-align: center;
}

.rank_2020_wrap .rank_2020_list dl dt {
	margin-bottom: 16px;
	padding-top: 40px;
}

.rank_2020_wrap .rank_2020_list dl dd {
	padding: 28px 0;
	font-size: 15px;
}

.rank_2020_wrap .rank_2020_list dl dd em {
	font-family: 'Roboto';
}

.rank_2020_wrap .rank_2020_list dl .ic_2020_gold+dd {
	padding-top: 18px;
	padding-bottom: 4px;
}

.rank_2020_wrap .rank_2020_list dl dd ~ dd {
	padding: 0;
}
/* ì¤€íšŒì› ë¡œê·¸ì¸ì‹œ */
.vipnomember_box {
	padding: 30px 0;
	margin: 18px 0 40px 0;
	background-color: #F5F5F5;
	border-radius: 5px;
	text-align: center;
	opacity: .9;
}

.vipnomember_box .tip {
	margin-top: 15px;
	font-size: 18px;
	color: #000;
}
/* í˜œíƒ */
.benefit_wrap {
	margin-top: 60px;
}

.benefit_wrap>.tit {
	font-size: 18px;
}

.benefit_wrap .benefit_box {
	margin-top: 60px;
}

.benefit_wrap .benefit_box::after {
	display: block;
	content: '';
	clear: both;
}

.benefit_wrap .benefit_box>li {
	position: relative;
	float: left;
	padding: 56px 25px 30px;
	width: 314px;
	font-size: 12px;
	border-radius: 4px;
	border: 1px solid #ddd;
	background-color: #f8f8f8;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.benefit_wrap .benefit_box>li ~ li {
	margin-left: 19px;
}

.benefit_wrap .benefit_box .benefit .tit {
	padding-bottom: 8px;
	font-size: 15px;
	border-bottom: 1px solid #000;
}

.benefit_wrap .benefit_box .benefit .tit span {
	margin-left: 5px;
	font-size: 11px;
}

.benefit_wrap .benefit_box .benefit .list {
	padding-left: 6px;
	padding-right: 12px;
}

.benefit_wrap .benefit_box strong+.benefit .tit+.list {
	min-height: 83px;
}

.benefit_wrap .benefit_box .benefit .tit+.list {
	padding-top: 12px;
}

.benefit_wrap .benefit_box .benefit .list+.list {
	min-height: 54px;
}

.benefit_wrap .benefit_box .benefit+.benefit {
	margin-top: 28px;
}

.benefit_wrap .benefit_box .benefit .list li {
	position: relative;
	line-height: 25px;
}

.benefit_wrap .benefit_box .benefit .list li ~ li {
	margin-top: 4px;
}

.benefit_wrap .benefit_box .benefit .list strong {
	font-size: 13px;
}

.benefit_wrap .benefit_box .benefit .list strong::before {
	display: inline-block;
	content: 'Â·';
	padding-right: 4px;
}

.benefit_wrap .benefit_box .benefit .list span {
	position: absolute;
	right: 0;
	top: 0;
	font-size: 13px;
}

.benefit_wrap .benefit_box .benefit .list span::before {
	content: '';
	position: absolute;
	right: 45px;
	top: 7px;
	width: 11px;
	height: 11px;
	background: url('../images/icon/cross_11.png') no-repeat;
}

.benefit_wrap .benefit_box .benefit .list span em {
	font-size: 18px;
	font-family: 'Roboto';
}

.benefit_wrap .benefit_box .benefit .list ~ .list {
	margin-top: 20px;
	padding-top: 22px;
	border-top: 1px dashed #ddd;
}

.contents_vipzone .txt_list_wrap {
	margin-top: 60px;
}
/* ì´ë²¤íŠ¸í˜œíƒ */
.mypage_event_box {
	margin-top: 100px;
	padding-left: 110px;
	height: 240px;
	background: url('../images/member/bg_vip_event.jpg') no-repeat;
}

.mypage_event_box::after {
	display: block;
	content: '';
	clear: both;
}

.mypage_event_box li {
	float: left;
	width: 140px;
}

.mypage_event_box li ~ li {
	margin-left: 140px;
}

.mypage_event_box li:first-child+li+li {
	width: 196px;
}

.mypage_event_box li a {
	display: block;
	position: relative;
	padding-top: 110px;
	padding-left: 6spx;
}

.mypage_event_box li em {
	font-family: 'Roboto';
	letter-spacing: 0;
}

.mypage_event_box li .thm {
	position: absolute;
	left: 0;
	top: -40px;
}

.mypage_event_box li .num {
	display: block;
	width: 42px;
	height: 17px;
	color: #fff;
	line-height: 17px;
	font-size: 11px;
	text-align: center;
	background-color: #786D4C;
}

.mypage_event_box li .cont {
	margin-top: 8px;
	line-height: 20px;
	font-size: 16px;
	letter-spacing: -.5px;
}

.mypage_event_box li .cont .tip {
	display: block;
	margin-top: 8px;
	font-size: 11px;
	font-family: 'Roboto';
	letter-spacing: 0;
}

/* íŒì—… - ì ë¦½ë‚´ì—­ ============================== */
/* ë“±ê¸‰ì˜ì—­ */
.my_rank_history {
	margin: 0 auto;
	padding: 30px 32px; /*width:340px;*/
	border-radius: 4px;
	border: 1px solid #333;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.my_rank_history>ul::after {
	display: block;
	content: '';
	clear: both;
}

.my_rank_history>ul>li {
	float: left;
	padding-top: 3px;
	text-align: center;
}

.my_rank_history>ul>li ~ li {
	position: relative;
	margin-left: 40px;
}

.my_rank_history>ul>li ~ li:after {
	content: '';
	position: absolute;
	left: -20px;
	top: 0;
	width: 1px;
	height: 140px;
	background-color: #eee;
}

.my_rank_history>ul>li .year {
	font-size: 15px;
	font-family: 'Roboto';
}

.my_rank_history>ul>li [class*="rankbox_"] {
	margin-top: 10px;
	margin-bottom: 0;
}

.my_rank_history>ul>li .sum {
	display: block;
	margin-top: 28px;
}

.my_rank_history .tip {
	margin-top: 20px;
	font-size: 12px;
	color: #666;
	text-align: center;
}
/* ì ë¦½ë‚´ì—­_ë¦¬ìŠ¤íŠ¸ */
.vip_saving_list {
	margin: 40px auto 0; /*width:340px;*/
}

.vip_saving_list .list_top_area {
	position: relative;
}

.vip_saving_list .list_top_area>.tit {
	font-size: 15px;
}

.vip_saving_list .list_top_area>.infor {
	margin-top: 8px;
}

.vip_saving_list .list_top_area>.infor::after {
	display: block;
	content: '';
	clear: both;
}

.vip_saving_list .list_top_area>.infor li {
	position: relative;
	float: left;
	font-size: 13px;
}

.vip_saving_list .list_top_area>.infor li ~ li {
	margin-left: 20px;
}

.vip_saving_list .list_top_area>.infor li ~ li::before {
	content: '';
	position: absolute;
	left: -10px;
	top: 50%;
	margin-top: -5px;
	width: 1px;
	height: 10px;
	background-color: #ddd;
}

.vip_saving_list .list_top_area>.infor li span {
	display: inline-block;
	margin-right: 6px;
	color: #666;
}

.vip_saving_list .list_top_area>.infor li em {
	font-family: 'Roboto';
}

.vip_saving_list .list_top_area select {
	position: absolute;
	right: 0;
	top: 0;
}

.vip_saving_list .saving_list {
	margin-top: 10px;
	border-top: 1px solid #999;
}

.vip_saving_list .saving_list li {
	position: relative;
	padding: 18px 10px 10px;
	height: 65px;
	border-bottom: 1px solid #eee;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.vip_saving_list .saving_list li .date {
	display: block;
	font-size: 11px;
	font-family: 'Roboto';
}

.vip_saving_list .saving_list li .tit {
	display: block;
	margin-top: 6px;
	font-size: 13px;
}

.vip_saving_list .saving_list li .sum {
	position: absolute;
	right: 10px;
	top: 50%;
	margin-top: -9px;
	font-size: 13px;
}

.vip_saving_list+.notice_box h6 {
	margin-top: 30px;
	font-weight: bold;
} /* 2019.12.31 ì •ì§„í˜¸ */
.vip_saving_list+.notice_box h6.first {
	margin-top: 0;
} /* 2019.12.31 ì •ì§„í˜¸*/

/* íŒì—… - ê¸°ë…ì¼ë“±ë¡ ============================== */
.aniversary_box {
	padding: 0 10px;
}

.aniversary_box .txt {
	font-size: 15px;
}

.aniversary_box .date_box {
	margin-top: 10px;
	font-size: 0;
}

.aniversary_box .date_box select.ty3 {
	width: 106px;
}

.aniversary_box .date_box select.ty3 ~ select.ty3 {
	margin-left: 5px;
}

.aniversary_box+.btn_btm_wrap {
	margin-top: 10px;
}

/* íŒì—… - VIPì¿ í°ë‹¤ìš´ë¡œë“œ ============================== */
.vip_coupon_box [class*="rankbox_"] {
	margin: 0 auto 11px;
}

.vip_coupon_box .tit {
	display: block;
	padding-top: 10px;
	font-size: 18px;
	text-align: center;
}

.vip_coupon_box .txt {
	display: block;
	margin-top: 4px;
	font-size: 12px;
	text-align: center;
}

.vip_coupon_box .txt em {
	font-family: 'Roboto';
}

.total_coupon {
	position: relative;
	margin: 15px auto 0;
	width: 300px;
	height: 40px;
	line-height: 40px;
	font-size: 0;
	border-radius: 4px;
	background-color: #fafafa;
}

.total_coupon::after {
	content: '';
	position: absolute;
	left: 50%;
	top: 50%;
	margin-top: -6px;
	width: 1px;
	height: 13px;
	background-color: #ddd;
}

.total_coupon .coupon {
	display: inline-block;
	width: 50%;
	font-size: 13px;
	text-align: center;
}

.total_coupon .coupon em {
	font-size: 11px;
	font-family: 'Roboto';
}

.benefit_list_box {
	margin-top: 30px;
}

.benefit_list_box .tit_area {
	padding-bottom: 7px;
	font-size: 0;
	border-bottom: 1px solid #000;
}

.benefit_list_box .tit_area strong {
	font-size: 15px;
}

.benefit_list_box .tit_area span {
	margin-left: 5px;
	color: #666;
	font-size: 11px;
}

.benefit_list_box .tooltip_qs_box .tooltip {
	left: -31px;
	top: auto;
	bottom: 45px;
}

.basic_list dl {
	position: relative;
	padding: 12px 15px 12px 95px;
	min-height: 80px;
	border-bottom: 1px dashed #ddd;
	box-sizing: border-box;
}

.basic_list dl dt {
	position: absolute;
	left: 15px;
	top: 50%;
	margin-top: -28px;
	height: 57px;
	text-align: center;
}

.basic_list dl dt span {
	display: block;
	margin-top: 5px;
	font-size: 11px;
	opacity: 0.3;
}

.basic_list dl dd {
	position: relative;
	line-height: 25px;
}

.basic_list dl dd ~ dd {
	margin-top: 3px;
}

.basic_list dl dd:last-child {
	margin-bottom: 0;
}

.basic_list dl dd:before {
	content: 'Â·';
	margin-right: 2px;
}

.basic_list dl dd .coupon {
	font-size: 13px;
	color: #666;
}

.benefit_list_box .quantity {
	position: absolute;
	right: 0;
	top: 50%;
	margin-top: -12px;
	font-size: 13px;
}

.benefit_list_box .quantity em {
	margin-top: -1px;
	font-size: 18px;
	font-family: 'Roboto';
}

.benefit_list_box .quantity::before {
	content: '';
	position: absolute;
	right: 45px;
	top: 50%;
	margin-top: -6px;
	width: 11px;
	height: 11px;
	background: url('../images/icon/cross_11.png') no-repeat;
}

.benefit_list_box .choice_chk_list>li {
	position: relative;
	padding: 0 15px;
	line-height: 45px;
	font-size: 13px;
	border-bottom: 1px dashed #ddd;
}

.benefit_list_box .choice_chk_list .quantity {
	right: 15px;
	margin-top: -23px;
}

.benefit_list_box .choice_chk_list label {
	color: #666;
}

.benefit_list_box .choice_chk_list .tooltip_box {
	margin-left: 4px;
}

.benefit_list_box .tooltip_box .tooltip {
	left: 0;
	top: auto;
	bottom: 45px;
	width: 350px;
}
/* íŒì—… - VIPì¿ í°ë‹¤ìš´ë¡œë“œ Type1 20200110 : í°íŠ¸ ë° ì´ë¯¸ì§€ ì‚¬ì´ì¦ˆ ì¤„ìž„ */
.basic_list.type1 dl {
	position: relative;
	padding: 12px 15px 12px 75px;
	min-height: 80px;
	border-bottom: 1px dashed #ddd;
	box-sizing: border-box;
}

.basic_list.type1 dl dt {
	position: absolute;
	left: 15px;
	top: 50%;
	margin-top: -28px;
	height: 57px;
	text-align: center;
}

.basic_list.type1 dl dt span {
	display: block;
	margin-top: 5px;
	font-size: 11px;
	opacity: 0.3;
}

.basic_list.type1 dl dd {
	position: relative;
	line-height: 22px;
}

.basic_list.type1 dl dd ~ dd {
	margin-top: 3px;
}

.basic_list.type1 dl dd:last-child {
	margin-bottom: 0;
}

.basic_list.type1 dl dd:before {
	content: 'Â·';
	margin-right: 0;
}

.basic_list.type1 dl dd.bgnone:before {
	content: '';
	margin-right: 0;
}

.basic_list.type1 dl dd.not_blt:before {
	display: none;
}

.basic_list.type1 dl dd .coupon {
	font-size: 12px;
	color: #666;
}

.basic_list.type1 .lefticon {
	width: 80%
}

.benefit_list_box .basic_list.type1 .quantity {
	position: absolute;
	right: 0;
	top: 50%;
	margin-top: -12px;
	font-size: 12px;
}

.benefit_list_box .basic_list.type1 .quantity em {
	margin-top: -1px;
	font-size: 17px;
	font-family: 'Roboto';
}

.benefit_list_box .basic_list.type1 .quantity.bgnone em {
	margin-right: -1px;
}

.benefit_list_box .basic_list.type1 .quantity::before {
	content: '';
	position: absolute;
	right: 25px;
	top: 58%;
	margin-top: -6px;
	width: 11px;
	height: 11px;
	background: url('../../Content/images/icon/cross_11.png') no-repeat;
	background-size: 90%;
}

.benefit_list_box .basic_list.type1 .quantity.bgnone:before {
	background: none;
}
/* ì—ëŸ¬íŽ˜ì´ì§€ ========================================================================================= */
.error_box {
	margin: 100px 0;
	text-align: center;
}

.error_box .txt_info {
	margin-bottom: 36px;
	padding-top: 108px;
	background: url('../../Content/images/icon/nodata_80_01.png') no-repeat
		50% 0;
	color: #666;
	font-size: 15px;
	line-height: 1.4;
}

.error_box .txt_info strong {
	display: block;
	margin-bottom: 10px;
	font-size: 24px;
	color: #000;
}

.error_box .txt_info em {
	font-weight: normal;
}

.error_box .txt_info .point {
	color: #FF243E
}

.error_box .btn_wrap a {
	margin: 0 3px;
}

/* ëª¨ë‹ˆí„°ë§ì¹´ë“œ ë¹„ë°€ë²ˆí˜¸ ë³€ê²½ ========================================================================================= */
.change_info_box .inner_con {
	width: 980px;
	margin: 0 auto;
	padding: 50px 0;
}

.change_info_box .tit_info {
	height: 58px;
	background: #292e34;
	line-height: 58px;
	font-size: 18px;
	color: #cdc197;
	font-weight: bold;
	padding: 0 30px;
}

.change_info_box .con_box {
	padding: 40px 30px;
	background: #F8F8F8;;
	border: 1px solid #292e34
}

.change_info_box .info_txt {
	margin-bottom: 20px;
	font-size: 14px;
}

.change_info_box .info_txt2 {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
	font-size: 14px;
}

.change_info_box .sub_txt {
	display: block;
	float: right;
	margin-top: -20px;
	color: #FF243E
}

.change_info_box .sub_txt em {
	display: inline-block;
	vertical-align: -4px;
}

.change_info_box .form_box {
	padding: 10px 30px;
	background: #fff;
	border: 1px solid #999999;
	border-right: none;
	border-left: none;
}

.change_info_box .btn_wrap {
	margin: 20px 0;
	text-align: center;
}

.change_info_box .list_bdr_box {
	padding: 0;
	border: none;
}

.change_info_box .tbl_write th label {
	position: relative;
	padding-right: 10px;
}

.change_info_box .tbl_write th label .txt_required {
	overflow: hidden;
	position: absolute !important;
	width: 1px;
	height: 1px;
	clip: rect(1px, 1px, 1px, 1px);
}

.change_info_box .tbl_write th label:before {
	content: '*';
	display: block;
	position: absolute;
	top: 6px;
	right: 0;
	color: #FF243E
}

/* ì•½ê´€ë™ì˜ ========================================================================================= */
.privacy_wrap {
	max-height: 999999px;
	background: #f9f6ec;
	min-height: 400px;
}

.privacy_wrap .txtarea>.color_red {
	font-size: 16px;
} /* 2019.12.31 ì •ì§„í˜¸ */
.privacy_con {
	position: relative;
	max-width: 980px;
	margin: 0 auto;
	padding: 0 0 40px;
}

.privacy_con .pTBx {
	margin-bottom: 30px;
	overflow: hidden;
	width: 100%;
}

.privacy_con.mail {
	text-align: center;
}

.selbox_userterms {
	position: absolute;
	top: 50px;
	right: 0;
}

.selbox_userterms .btnv_pick {
	border: 1px solid #dedede;
}
/* privacy_con */
.privacy_con .pTBx .privacy_date {
	right: 85px
}

.privacy_con h2.privacy_tit {
	padding-bottom: 0;
	margin-bottom: 30px;
	font-weight: bold;
	line-height: 38px;
	font-size: 2em;
	color: #000;
}

.privacy_con h3.privacy_tit {
	font-size: 18px;
	color: #000;
	margin-bottom: 20px;
}

.privacy_con h3.privacy_tit2, .privacy_con h4.privacy_tit {
	padding-top: 82px;
	font-size: 15px;
	color: #000;
	line-height: 24px;
	margin: 0 0 10px 0;
	font-weight: bold;
}

.privacy_con h4.privacy_tit2, .privacy_con h5.privacy_tit, .privacy_con h6.privacy_tit
	{
	font-size: 14px;
	color: #000;
	line-height: 24px;
	padding-left: 20px;
	margin-bottom: 10px;
}

.privacy_con .privacy_date {
	position: absolute;
	top: 50px;
	right: 0;
	padding: 6px 14px;
}

.privacy_con .default_txt {
	font-size: 13px;
	line-height: 22px;
	color: #000;
	margin-bottom: 0px !important;
}

.privacy_con .default_txt.type2 {
	margin-left: 20px;
	text-indent: 0
}

.privacy_con .default_txt2 {
	font-size: 15px;
	line-height: 22px;
	color: #000;
	margin-bottom: 30px !important;
}

.privacy_con .default_nomargin {
	font-size: 13px;
	line-height: 22px;
	margin-bottom: 10px;
}

.privacy_con .default_nomargin.type2 {
	margin-left: 20px;
	text-indent: 0px;
}

.privacy_con .default_nomargin2 {
	padding-left: 20px;
	font-size: 13px;
	line-height: 22px;
	margin-bottom: 10px;
}

.privacy_con ol.default_nomargin2 {
	margin-bottom: 42px;
}

.privacy_con .default_nomargin3 {
	font-size: 14px;
	line-height: 22px;
}

.privacy_con .default_nomargin3 li {
	padding-bottom: 0;
	margin-left: 12px;
	text-indent: -12px;
}

.privacy_con .default_nomargin3 li:last-child {
	padding-bottom: 0
}

.privacy_con .default_nomargin3 li>ul {
	margin: 10px;
}

.privacy_con .privacy_listbox {
	background: #F8F8F8;
	width: 100%;
	box-sizing: border-box;
	overflow: hidden;
	padding: 26px 30px;
	border: 1px solid #D8D8D8;
	margin-bottom: 36px;
	border-radius: 4px;
}

.privacy_con .privacy_listbox ol {
	float: left;
}

.privacy_con .privacy_listbox ol:first-child {
	width: 489px;
}

.privacy_con .privacy_listbox a.on { /*text-decoration:underline; */
	font-weight: bold;
	color: #000;
}

.privacy_con .privacy_listbox a {
	font-size: 15px;
	line-height: 33px;
	color: #000;
	outline-color: blcak
}

.privacy_con .privacy_list {
	padding-left: 40px;
	margin-bottom: 10px;
}

ol.default_txt>li ul.privacy_list {
	padding-left: 20px;
}

ol.default_txt>li ul.privacy_list li {
	margin-left: 0;
	text-indent: 0
}

.privacy_con .privacy_list2 {
	padding-left: 20px;
	margin-bottom: 10px;
}

.privacy_con .privacy_list li, .privacy_con .privacy_list2 li {
	font-size: 13px;
	line-height: 24px;
	color: #000;
}

.privacy_con .privacy_list li strong, .privacy_con .privacy_list2 li strong
	{
	font-weight: bold;
}

.privacy_con .version dt {
	margin-top: 10px;
}

.privacy_con .privacy_list li .pl18 {
	display: block;
	padding-left: 18px;
}
/* privacy_tb */
.privacy_tb {
	width: 100%;
	border-collapse: collapse;
	border-top: 1px solid #BBB;
	border-bottom: 1px solid #dedede;
	margin-bottom: 50px;
}

.privacy_tb tbody th, .privacy_tb tbody td {
	padding: 10px 0;
	font-weight: normal;
	vertical-align: middle;
	font-size: 13px;
}

.privacy_tb thead th {
	line-height: 33px;
	border-bottom: 1px solid #BBB;
	color: #000;
	font-size: 15px;
	font-weight: bold;
}

.privacy_tb tbody tr>td:first-child {
	text-align: center;
}

.privacy_tb .border_bottom {
	border-bottom: 1px solid #dedede;
}

.privacy_tb .border_top {
	border-top: 1px solid #dedede;
}

.privacy_tb .center th, .privacy_tb .center td {
	text-align: center;
}

.privacy_con .table_comment {
	margin-top: -40px;
	font-size: 12px;
	color: #000;
	margin-bottom: 50px;
}

.privacy_tb.tbp2 th {
	border-left: 1px solid #dedede;
}

.privacy_tb.tbp2 td {
	border-left: 1px solid #dedede;
	text-align: left;
	padding-left: 40px;
	border-bottom: 1px solid #dedede;
}

.privacy_tb.tbp2 tbody tr>td:first-child {
	text-align: left;
	border-left: none;
}

.privacy_tb.tbp2 thead tr>th:first-child {
	border-left: none;
}

.privacy_tb.tbp3 th { /*border-left:1px solid #dedede; */
	padding: 10px 10px;
	line-height: 24px
}

.privacy_tb.tbp3 td {
	border-left: 1px solid #EEE;
	text-align: left;
	padding: 10px 10px;
	border-bottom: 1px solid #EEE;
}

.privacy_tb.tbp3 thead.center th, .privacy_tb.tbp3 tbody.center td {
	text-align: center
}

.privacy_tb.tbp3 tbody tr>td:first-child {
	border-left: none;
}

.privacy_tb.tbp3 thead tr>th:first-child {
	border-left: none;
}

.privacy_tb.tbp3 thead.center th.txtleft, .privacy_tb.tbp3 tbody.center td.txtleft
	{
	text-align: left
}

.privacy_tb.tbp3 td.txtcenter {
	text-align: center !important
}

.privacy_tb.tbp3 th.bdleft1, .privacy_tb.tbp3 td:first-child.bdleft1,
	.privacy_tb.tbp3 th.bdleft1, .privacy_tb.tbp3 td.bdleft1 {
	border-left: 1px solid #dedede
}
/* íŒì—… */
.layer_wrap.active.layer_agree_term {
	width: 1080px;
	height: 800px;
}

.layer_wrap.layer_agree_term .layer_contents {
	padding: 0;
	overflow: auto;
	height: 700px;
}

.layer_wrap.layer_agree_term .tit {
	margin-left: 32px;
	text-align: left;
}

.layer_wrap.layer_agree_term .tit em {
	margin-left: 10px;
	font-size: 15px;
}

.layer_wrap.layer_agree_term .privacy_con {
	padding: 30px 30px;
	max-width: 100%
}
/* ê°œì¸ì •ë³´ì²˜ë¦¬ë°©ì¹¨ */
.privacy_con .pl10 {
	padding-left: 10px !important;
}

.privacy_con .pl20 {
	padding-left: 20px !important;
}

.privacy_con .pl18 {
	padding-left: 18px !important;
}

.privacy_con .mb10 {
	margin-bottom: 10px !important;
}

.privacy_con .mt10 {
	margin-top: 10px !important;
}
/* ì´ë©”ì¼ë¬´ë‹¨ìˆ˜ì§‘ê±°ë¶€ */
.email_notCollect_con .box_con {
	padding: 105px 0;
	border-radius: 4px;
	background: #F8F8F8;
	font-size: 15px;
	border: 1px solid #D8D8D8;
	text-align: center;
}

.email_notCollect_con .box_con strong {
	display: block;
	margin-bottom: 20px;
	font-size: 22px;
}

.email_notCollect_con .box_con p {
	margin-top: 10px;
	line-height: 1.2
}

.email_notCollect_con .box_con p:first-child {
	margin-top: 0
}
/* ì˜ìƒì •ë³´ì²˜ë¦¬ê¸°ê¸° ìš´ì˜Â·ê´€ë¦¬ ë°©ì¹¨ */
.videoMgr_policy_con .privacy_tb {
	border-bottom: 1px solid #EEEEEE
}

.videoMgr_policy_con .privacy_tb tbody tr td, .videoMgr_policy_con .privacy_tb tbody tr th
	{
	padding: 12px 20px;
	border-top: 1px solid #EEEEEE;
	border-left: 1px solid #EEE;
}

.videoMgr_policy_con .privacy_tb tbody tr td:first-child,
	.videoMgr_policy_con .privacy_tb tbody tr th:first-child {
	border-left: none;
}

/* ê²°ì œ ========================================================================================= */
/* fieldset_wrap  */
.fieldset_wrap {
	margin: 20px 0;
}

.fieldset_wrap:first-child {
	margin-top: 0;
}

.fieldset_wrap.bdr {
	border-bottom: 5px solid #EEE;
}

.fieldset_wrap>.flex_btn {
	margin-bottom: 0;
}

.fieldset_wrap .fieldset_box {
	margin-top: 30px;
	padding: 0;
}

.fieldset_wrap .fieldset_box:first-child {
	margin-top: 0;
}

.fieldset_box {
	padding: 24px 18px 30px;
}

.fieldset_box.pad0 {
	padding: 0;
}

.fieldset_box .tit {
	margin-bottom: 10px;
	color: #000;
	font-size: 15px;
}

.fieldset_box .tit_area {
	display: flex;
	justify-content: space-between;
	align-items: baseline;
	margin-bottom: 10px;
}

.fieldset_box .tit_area strong {
	font-size: 15px;
}

.fieldset_box .tit_area strong em {
	font-size: 10px;
}

.fieldset_box .tit_area span {
	font-size: 10px;
}

.fieldset_box .tit_area span em {
	color: #FF243E;
}

.fieldset_box .tit_area .big {
	font-size: 15px;
}

.fieldset_box .tit_area+.nodata {
	margin-top: 18px;
}

.fieldset_box .array_box {
	margin-top: 0;
}

.fieldset_box .ip_box {
	margin-bottom: 13px;
}

.fieldset_box .ip_box .ip_radio {
	margin-right: 15px;
}

.fieldset_box .ip_txt input {
	font-size: 13px;
}

.fieldset_box .ip_txt.timer {
	position: relative;
}

.fieldset_box .ip_txt.timer .txt_timer {
	position: absolute;
	right: 15px;
	top: 0;
	color: #666;
	line-height: 45px;
	font-size: 13px;
}

.fieldset_box .txt {
	margin-bottom: 8px;
	font-size: 10px;
}

.fieldset_box .txt:last-child {
	margin-bottom: 0;
}

.fieldset_box .bx_inp_type {
	margin-bottom: 10px;
}

.fieldset_box .bx_inp_type:last-child {
	margin-bottom: 0;
}

.fieldset_box .bx_inp_type .ip_txt {
	margin-bottom: 0;
}

.fieldset_box .bx_inp_type .count_box {
	margin-bottom: 0;
}

.fieldset_box .tab_con_wrap {
	margin-bottom: 10px;
}

.fieldset_box .tab_con_wrap .input_type2 {
	margin-bottom: 0;
}

.fieldset_box .input_type2 li:nth-of-type(1n+2) {
	margin-top: 10px;
}

.fieldset_box .notice_list li {
	font-size: 12px;
	font-weight: 100;
}

.fieldset_box .notice_list li:nth-of-type(1n+2) {
	margin-top: 5px;
}

.fieldset_box>.btn_btm_wrap {
	margin: 10px 0 0;
}

.fieldset_box .point_price {
	display: flex;
	justify-content: space-between;
	height: 34px;
	line-height: 34px;
	color: #000;
	border-top: 1px solid #eee;
}

.fieldset_box .point_price.non_bdr {
	border-top: none;
}

.fieldset_box .point_price strong {
	font-size: 13px;
}

.fieldset_box .point_price strong>span {
	font-weight: bold;
}

.fieldset_box .point_price em {
	font-size: 13px;
	font-family: "Roboto";
}

.fieldset_box .point_price span {
	font-size: 10px;
}

.fieldset_box .point_price.total {
	padding-top: 0;
	border-top: 0;
}

.fieldset_box .point_price.total strong {
	font-size: 15px;
}

.fieldset_box .point_price.total span {
	font-size: 13px;
}

.fieldset_box .point_price.total em {
	color: #2AA3FE;
	font-size: 15px;
}

.fieldset_box .point_price.total .not_colr {
	color: #000;
}

.fieldset_box .btn_btm_wrap+.point_price.total {
	margin-top: 20px;
}
/* form */
.fieldset_box select {
	height: 45px;
}

.fieldset_box input[type="text"], .fieldset_box input[type="password"],
	.fieldset_box input[type="text"], .fieldset_box input[type="number"],
	.fieldset_box input[type="tel"] {
	width: 100%;
	padding: 0 15px;
	box-sizing: border-box;
	border: none;
	background: #F5F5F5;
	height: 45px;
	line-height: 45px;
	border-radius: 4px;
}

.fieldset_box input:read-only {
	color: #ccc;
}

.fieldset_box input[type="checkbox"]+label.ty2:before {
	position: absolute;
	right: 15px;
	top: 20px;
}

.fieldset_box input[type="checkbox"]+label.ty2.disabled:before {
	display: none;
} /* 2020-01-06, eskang fixed */
/* scroll */
.fieldset_box .bx_list_scroll {
	overflow-y: scroll;
	height: 124px;
	margin: 10px 0;
}
/* input box */
.ip_txt {
	display: block;
	width: 100%;
	margin: 10px 0;
}

.ip_txt:first-child {
	margin-top: 0
}

.bx_inp_type:after {
	content: "";
	display: block;
	clear: both;
}

.bx_inp_type>.ip_txt {
	position: relative;
	float: left;
	width: 64%;
}

.bx_inp_type>a, .bx_inp_type>button {
	float: left;
	width: 33%;
	margin-left: 3%;
	padding: 0 5px;
	white-space: nowrap;
}

.bx_inp_type.dual .ip_txt {
	margin: 0;
	width: 47%;
}

.bx_inp_type.dual .ip_txt:nth-child(2) {
	position: relative;
	margin-left: 6%;
}

.bx_inp_type.dual .ip_txt:nth-child(2)::before {
	content: "/";
	position: absolute;
	left: -11px;
	top: 50%;
	transform: translateY(-50%);
	font-size: 14px;
	font-family: "Roboto";
}
/* ì „í™”ë²ˆí˜¸ */
.bx_phone {
	margin: 10px 0;
}

.bx_phone:after {
	content: "";
	display: block;
	clear: both;
}

.bx_phone select {
	float: left;
	width: 32%;
}

.bx_phone span {
	float: left;
	margin-left: 6px;
	width: 32%;
	box-sizing: border-box;
}
/* ë§¤ìˆ˜ ì˜ì—­ */
.count_box {
	position: relative;
	float: left;
	width: 64%;
	height: 45px;
	box-sizing: border-box;
	padding: 0 45px;
	border-radius: 4px;
	border: 1px solid #DDD;
	background-color: #FFF;
}

.count_box button {
	position: absolute;
	z-index: 1;
	top: 0;
	width: 45px;
	height: 100%;
	border: none;
	text-indent: -9999em;
}

.count_box .minus {
	left: 0;
	background: url('../../Content/images/icon/minus_12.png') no-repeat
		center center;
}

.count_box .plus {
	right: 0;
	background: url('../../Content/images/icon/plus_12.png') no-repeat
		center center;
}

.count_box .num {
	display: block;
	line-height: 43px;
	font-size: 13px;
	text-align: center;
}

.count_box .num em {
	padding: 11px 0;
	font-family: 'Roboto';
	font-size: 17px;
}

.count_box.disabled .num {
	color: #B2B2B2;
}
/* ì¿ í°ë¦¬ìŠ¤íŠ¸ */
.input_type2>li>input {
	position: absolute;
	top: 0;
	left: 0;
	width: 0;
	height: 0;
	border: none 0
}

.input_type2>li>input+label {
	display: block;
	position: relative;
	width: 100%;
	padding: 12px 14px;
	border: 1px solid #ddd;
	border-radius: 4px;
	box-sizing: border-box;
}

.input_type2>li>input:checked+label {
	border-color: #000;
	background-size: 20px;
}

.input_type2 label>.txt_cpn1, .input_type2 label>.txt_cpn2 {
	margin-top: -2px;
	vertical-align: top;
}

.input_type2 .info {
	display: inline-block;
	margin-left: 5px;
}

.input_type2 .info>* {
	display: block;
}

.input_type2 .info strong {
	position: relative;
	color: #000;
	font-size: 13px;
}

.input_type2 .info em {
	margin-top: 4px;
	color: #666;
	font-size: 10px;
	font-family: "Roboto";
}

.input_type2 .info .txt {
	margin-top: 4px;
	font-size: 10px;
}

.input_type2 .info select {
	position: absolute;
	right: 50px;
	top: 50%;
	transform: translateY(-50%);
}
/* nodata */
.nodata {
	padding: 15px 0;
	font-size: 11px;
	text-align: center;
	background-color: #F8F8F8;
}

label.lab_txt .tit_lab {
	overflow: hidden;
	position: absolute;
	float: none;
	width: 1px;
	height: 1px;
}

/* ì¢Œì„ì„ íƒ ========================================================================================= */
.seat_wrap {
	padding-top: 0 !important
}

.mseat_wrap {
	position: relative;
	background: #000; /*padding-top:150px;*/
}

.mseat_inner {
	overflow: hidden;
	width: 1200px;
	height: 470px !important;
	max-height: 470px;
	margin: 0 auto;
	box-sizing: border-box;
	padding: 0 15px;
}

.mseat_inner .mCustomScrollbar {
	height: 470px;
}

.meat_door_pos {
	position: relative;
	/* height:470px !important; overflow:hidden !important;*/
	/*overflow-y:scroll; overflow-x:scroll*/
}

.mseat_hidden {
	overflow: hidden;
	margin: 0 auto;
} /* margin:0 auto ì¶”ê°€ */
.mseat_inner .title_screen1 {
	display: block;
	padding: 5px 0 5px;
	color: #fff;
	font-size: 16px;
	font-family: 'Roboto', "Noto Sans KR";
	text-align: center;
	letter-spacing: 15px;
	margin: 0 0 30px;
	background: #6E6E6E
}

.mseat_inner .title_screen1 img {
	width: 72px;
	height: 18px
}

.mseat_inner .title_screen1+.floor_bx {
	margin-top: 15px;
	padding-top: 0;
}

.mseat_inner .floor_bx {
	position: relative;
	padding: 0 0 35px;
	box-sizing: border-box
}

.mseat_inner .floor_bx .floor_tit {
	display: block; /*padding:5px 0; */
	text-align: right;
	color: #fff;
	font-size: 17px;
	font-weight: bold;
	font-family: 'Roboto', "Noto Sans KR";
}

.mseat_inner .floor_bx .floor_tit.color_a {
	background: #5f602e;
}

.mseat_inner .floor_bx .floor_tit.color_b {
	background: #253854;
}

.mseat_inner .floor_bx .seat_area {
	position: relative;
	margin: 10px auto 0;
}

.mseat_inner .floor_bx .seat_area .sel {
	position: absolute;
	font-size: 10px;
	outline-color: white
}

.mseat_inner .floor_bx .dim {
	overflow: hidden;
	position: absolute;
	left: 0;
	top: 0;
}
/*ì¢Œì„ë³„ ìŠ¤íƒ€ì¼ */
.mseat_inner .floor_bx .seat_area .sel>span {
	position: relative;
	display: block;
	overflow: hidden;
	width: 21px;
	height: 16px;
	line-height: 17px;
	background: #E8E8E8;
	color: #000;
	font-size: 10px;
	text-align: center;
	letter-spacing: -0.5px;
	box-sizing: border-box;
	border-radius: 7px 7px 2px 0px;
	font-family: 'Roboto', "Noto Sans KR";
} /* ë””í´íŠ¸ */
.mseat_inner .floor_bx .seat_area .sel>span.disabled {
	background: none;
}
/* ë°œë°›ì¹¨ */
.mseat_inner .floor_bx .seat_area .sel>.foot_seat:after {
	content: '';
	display: block;
	position: absolute;
	top: 3px;
	left: 50%;
	width: 9px;
	height: 1px;
	background: #A1A1A1;
	-webkit-transform: translate(-50%, 0);
	transform: translate(-50%, 0)
}

.mseat_inner .floor_bx .seat_area .sel>.sweet_spot {
	min-height: 14px;
	border: 1px solid #d41017;
	line-height: 14px;
	background-color: #fff
} /* ìŠ¤ìœ„íŠ¸ìŠ¤íŒŸ */
.mseat_inner .floor_bx .seat_area .sel>.super_vibe {
	color: #fff;
	background: #83399a;
}

.mseat_inner .floor_bx .seat_area .sel>.sweet_spot.Impossible {
	border: 0 none;
	line-height: 14px;
}
/* ì»¤í”Œì„ */
.mseat_inner .floor_bx .seat_area .sel>.cine_couple {
	color: #fff;
	background: #EF3D7B;
}

.mseat_inner .floor_bx .seat_area .sel>.cine_couple:after {
	position: absolute;
	top: 5px;
	right: -3px;
	content: " ";
	height: 0;
	z-index: 1;
	border-bottom: 7px solid;
	border-left: 4px solid rgba(0, 0, 0, 0);
	border-right: 4px solid rgba(0, 0, 0, 0);
	color: #2C2C2C;
	transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-moz-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
}

.mseat_inner .floor_bx .seat_area .sel.no_select>.cine_couple:before {
	border: none;
}
/* ì”¨ë„¤íŒ¨ë°€ë¦¬ */
.mseat_inner .floor_bx .seat_area .sel>.cine_family {
	color: #fff;
	background: #3A7CC8;
}
/* ìž¥ì• ì¸ */
.mseat_inner .floor_bx .seat_area .sel>.handicapped {
	color: #fff;
	background: #427652
}
/* ìŠ¤íŽ˜ì…œìš”ê¸ˆ */
.mseat_inner .floor_bx .seat_area .sel>.special_fee {
	color: #fff;
	background: #e96106;
}
/* ë¦¬í´ë¼ì´ë„ˆ */
.mseat_inner .floor_bx .seat_area .sel>.recliner {
	color: #fff;
	background: #1EAFFD;
}

.mseat_inner .floor_bx .seat_area .sel>.recliner:after {
	content: '';
	display: block;
	position: absolute;
	top: 3px;
	left: 50%;
	width: 9px;
	height: 1px;
	background: #fff;
	-webkit-transform: translate(-50%, 0);
	transform: translate(-50%, 0)
}

.mseat_inner .floor_bx .seat_area .sel.completed {
	cursor: inherit;
} /* ì¢Œì„ì™„ë£Œ */
.mseat_inner .floor_bx .seat_area .sel.completed span:before {
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 21px;
	height: 16px;
	background: #000;
	opacity: 0.5;
	z-index: 1
}

.mseat_inner .floor_bx .seat_area .sel.completed span.Impossible {
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 21px;
	height: 16px;
	background: #c28721
		url(../../Content/images/icon/bg_no_select_distance.png) no-repeat
		center center;
	opacity: inherit;
	z-index: 9;
	font: 0 auto
}

.mseat_inner .floor_bx .seat_area .sel.completed span.Impossible:before
	{
	background: #333;
	opacity: 0.25;
}

.mseat_inner .floor_bx .seat_area .sel.no_select:not (.disabled ):not (.on
	) span {
	overflow: hidden;
	text-indent: -7000000em;
	font-size: 0;
	line-height: 0;
	cursor: inherit;
	background: #e8e8e8 url(../../Content/images/common/seat_no_select.png)
		no-repeat center center;
	background-size: 28px 21px;
	opacity: 0.5;
}

.mseat_inner .floor_bx .seat_area .sel.no_select:not (.disabled ):not (.on
	) span:before {
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 21px;
	height: 16px;
	background: #000;
	opacity: 0.5
}

.mseat_inner .floor_bx .seat_area .sel.no_select span:after {
	display: none;
}

.mseat_inner .floor_bx .seat_area .sel.no_select {
	width: 21px;
	height: 16px;
	background: url(../../Content/images/common/seat_no_select.png)
		no-repeat center center;
	cursor: inherit;
}

.mseat_inner .floor_bx .seat_area .sel.no_select>.cine_couple:before {
	right: 0;
	-webkit-transform: translate(0, 0);
	transform: translate(0, 0)
}

.mseat_inner .floor_bx .seat_area .sel.no_select>.sweet_spot {
	border: none;
	line-height: 17px;
}
/* ì‹œë„¤íŒ¨ë°€ë¦¬ ê´€ ë¶„ë¦¬ */
.mseat_inner .floor_bx .seat_area .sel.disabled span:before {
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 21px;
	height: 17px;
	background: url(../../Content/images/common/seat_no_select.png)
		no-repeat center center;
	background-size: 21px 17px
}

.mseat_inner .floor_bx .seat_area .sel.disabled {
	width: 21px;
	height: 16px;
	background: url(../../Content/images/common/seat_no_select.png)
		no-repeat center center;
	cursor: inherit;
}

/* ì„ íƒì‹œ ë°±ê·¸ë¼ìš´ë“œ ì´ë¯¸ì§€ë¥¼ ì§€ìš¸ ê²½ìš° 
.mseat_inner .floor_bx .seat_area .sel.on span:after {display:none;}
*/
/* .mseat_inner .floor_bx .seat_area .sel > .foot_seat.sweet_spot {background-size:35px 35px;}
.mseat_inner .floor_bx .seat_area .sel > .foot_seat.super_vibe {background-image:url(../../Content/images/common/bg_super_vibe_footseat.png); }
.mseat_inner .floor_bx .seat_area .sel > .foot_seat.cine_couple {background-image:url(../../Content/images/common/bg_cine_couple_footseat.png); }
.mseat_inner .floor_bx .seat_area .sel > .foot_seat.cine_family {background-image:url(../../Content/images/common/bg_cine_family_footseat.png); }
.mseat_inner .floor_bx .seat_area .sel > .foot_seat.handicapped {background-image:url(../../Content/images/common/bg_handicapped_footseat.png); }
.mseat_inner .floor_bx .seat_area .sel > .foot_seat.special_fee {background-image:url(../../Content/images/common/bg_special_fee_footseat.png); }
.mseat_inner .floor_bx .seat_area .sel > .foot_seat.recliner:after {content:''; display:block; position:absolute; top:3px; left:50%; width:9px; height:1px; background:#050809; -webkit-transform:translate(-50%, 0); transform:translate(-50%, 0)background-image:url(../../Content/images/common/bg_recliner.png); } */
.mseat_inner .floor_bx .seat_area .sel>.sweet_spot.super_vibe {
	background-color: #83399a;
}

.mseat_inner .floor_bx .seat_area .sel>.sweet_spot.cine_couple {
	background-color: #EF3D7B;
}

.mseat_inner .floor_bx .seat_area .sel>.sweet_spot.cine_family {
	background-color: #3A7CC8;
}

.mseat_inner .floor_bx .seat_area .sel>.sweet_spot.handicapped {
	background-color: #427652;
}

.mseat_inner .floor_bx .seat_area .sel>.sweet_spot.special_fee {
	background-color: #e96106;
}

.mseat_inner .floor_bx .seat_area .sel>.sweet_spot.recliner {
	background-color: #1EAFFD;
}

.mseat_inner .floor_bx .seat_area .sel.on span {
	background: #FF243E;
	color: #fff;
}

.mseat_inner .floor_bx .seat_area .sel.on>.sweet_spot {
	border: 0 none;
	line-height: 17px;
}

.mseat_inner .floor_bx .seat_area .sel.on>.sweet_spot.super_vibe {
	background-color: #FF243E;
}

.mseat_inner .floor_bx .seat_area .sel.on>.sweet_spot.cine_couple {
	background-color: #FF243E;
}

.mseat_inner .floor_bx .seat_area .sel.on>.sweet_spot.cine_family {
	background-color: #FF243E;
}

.mseat_inner .floor_bx .seat_area .sel.on>.sweet_spot.handicapped {
	background-color: #FF243E;
}

.mseat_inner .floor_bx .seat_area .sel.on>.sweet_spot.special_fee {
	background-color: #FF243E;
}

.mseat_inner .floor_bx .seat_area .sel.on>.sweet_spot.recliner {
	background-color: #FF243E;
}

.mseat_inner .floor_bx .seat_area .sel>.sweet_spot.completed {
	border: 0 none;
	line-height: 17px;
}

/* ì¶œìž…ë¬¸ */
.w_left {
	position: absolute;
	top: 300px;
	left: 0;
	background: url(../../Content/images/common/bg_window_left.png)
		no-repeat center center;
	background-size: 4.5px 28px;
	display: block;
	width: 4.5px;
	height: 28px;
	text-indent: -9999em;
}

.w_right {
	position: absolute;
	top: 0;
	right: 0;
	background: url(../../Content/images/common/bg_window_right.png)
		no-repeat center center;
	background-size: 4.5px 28px;
	display: block;
	width: 4.5px;
	height: 28px;
	text-indent: -9999em;
}

.w_center {
	position: absolute;
	top: 0;
	left: 300px;
	background: url(../../Content/images/common/bg_window_top.png) no-repeat
		center center;
	background-size: 28px 4.5px;
	display: block;
	width: 28px;
	height: 4.5px;
	text-indent: -9999em;
}

.w_bottom {
	position: absolute;
	bottom: 0;
	left: 0;
	background: url(../../Content/images/common/bg_window_bottom.png)
		no-repeat center center;
	background-size: 28px 4.5px;
	display: block;
	width: 28px;
	height: 4.5px;
	text-indent: -9999em;
}

/* ì¢Œì„_ë¯¸ë‹ˆ
.smallScreen {position:absolute; left:10px; top:10px; z-index:1; padding:0 10px 10px 10px; background:url(../../Content/images/common/bg_screenMask.png) repeat left top;}
.smallScreen .redView {position:absolute; width:40px; height:32.5px; border:1px solid #d41017;}
.smallScreen .title_screen1 {display:block; text-align:center; padding-bottom:2.5px; background:url(../../Content/images/common/bg_screen_mini.png) repeat-x left bottom;}
.smallScreen .title_screen1 img {width:22.5px; height:6px}
.smallScreen .floor_bx:first-child {padding-top:1px;}
.smallScreen .floor_bx {padding-top:5px;}
.smallScreen .floor_bx .floor_tit {display:block; text-align:center; background:#4f4c4d; color:#fff; height:7px; font-size:7px; line-height:7px}
.smallScreen .floor_bx .floor_tit.color_a {background:#5f602e;}
.smallScreen .floor_bx .floor_tit.color_b {background:#253854;}
.smallScreen .floor_bx .seat_area {position:relative; margin:5px auto 0;}
.smallScreen .floor_bx .seat_area .sel {position:absolute;}
.smallScreen .floor_bx .seat_area .sel > span {overflow:hidden; display:block; width:4px; height:3px; background:#fff; line-height:0; font-size:0; text-indent:-7000000em; border-radius:1px 1px 0 0}
.smallScreen .floor_bx .seat_area .sel.no_select span {background:#2f2f2f; cursor:inherit;}
.smallScreen .floor_bx .seat_area .sel.on span {background:#FF243E !important;}
 */
/* ì„ íƒëœ ì¢Œì„ */
.smallScreen .floor_bx .seat_area .sel>.completed:before {
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 36px;
	height: 36px;
	background: #000;
	opacity: 0.5
}

.smallScreen .floor_bx .seat_area .sel.on span {
	background: #FF243E
}
/* ìž¥ì• ì¸ì„ */
.smallScreen .floor_bx .seat_area .sel>.handicapped {
	color: #fff;
	background: #427652;
}
/* ì»¤í”Œì„ */
.smallScreen .floor_bx .seat_area .sel>.cine_couple {
	color: #fff;
	background: #EF3D7B;
}
/* ìœ—ì¸µ */
.floor_bx.seatSet2 .floor_tit {
	position: absolute;
	top: 0;
	right: 0;
}

.mseat_inner .floor_bx.seatSet2 .seat_area {
	margin: 6px auto 0;
}

.seat_tit {
	position: absolute;
	display: inline-block;
	width: 20px;
	height: 16px;
	line-height: 16px;
	text-align: left;
	font-size: 11px;
	font-weight: bold;
	font-family: 'Roboto', "Noto Sans KR";
	color: #fff
}

.seat_btm_box {
	overflow: hidden;
	margin: 35px 0 0 40px;
}

.seat_btm_box .seat_type_box {
	float: left;
	width: 615px;
}

.seat_btm_box .seat_type_box .top_info {
	margin-bottom: 15px;
}

.seat_btm_box .seat_type_box span {
	padding-left: 17px;
	margin-left: 6px;
}

.seat_btm_box .seat_type_box span:fisrt-child {
	margin-left: 0
}

.seat_btm_box .seat_type_box span.seat_type1 {
	background: url('../../Content/images/icon/ic_seat_type1.png') no-repeat
		0 4px;
}

.seat_btm_box .seat_type_box span.seat_type2 {
	background: url('../../Content/images/icon/ic_seat_type2.png') no-repeat
		0 4px;
}

.seat_btm_box .seat_type_box span.seat_type3 {
	background: url('../../Content/images/icon/ic_seat_type3.png') no-repeat
		0 4px;
}

.seat_btm_box .seat_type_box span.seat_type4 {
	background: url('../../Content/images/icon/ic_seat_type4.png') no-repeat
		0 4px;
}

.seat_btm_box .seat_type_box span.seat_type5 {
	background: url('../../Content/images/icon/ic_seat_type5.png') no-repeat
		0 4px;
}

.seat_btm_box .seat_type_box span.seat_type6 {
	background: url('../../Content/images/icon/ic_seat_type6.png') no-repeat
		0 4px;
}

.seat_btm_box .seat_type_box span.seat_type7 {
	background: url('../../Content/images/icon/ic_seat_type7.png') no-repeat
		0 4px;
}

.seat_btm_box .seat_type_box span.seat_type8 {
	background: url('../../Content/images/icon/ic_seat_type8.png') no-repeat
		0 4px;
}

.seat_btm_box .seat_type_box span.seat_type9 {
	background: url('../../Content/images/icon/ic_seat_type9.png') no-repeat
		0 4px;
}

.seat_btm_box .seat_type_box span.seat_type10 {
	background: url('../../Content/images/icon/ic_seat_type10.png')
		no-repeat 0 4px;
}

.seat_btm_box .seat_type_box span.seat_type11 {
	background: url('../../Content/images/icon/ic_seat_type11.png')
		no-repeat 0 6px;
}

.seat_btm_box .seat_type_box span.seat_type12 {
	background: url('../../Content/images/icon/ic_seat_type12_distance.png')
		no-repeat 0 4px;
}

.seat_btm_box .notice_box {
	float: left;
}

.seat_btm_box .notice_box .tit_info {
	font-size: 15px;
}

.seat_btm_box .list_txt.ty3 li {
	margin-top: 7px;
	color: #fff;
	font-size: 11px;
}

.seat_btm_box .list_txt.ty3>li:before {
	content: '';
	top: 8px;
	width: 3px;
	height: 1px;
	color: #fff;
	background: #fff;
}

/*
.seat_info_wrap {background:#1c191a;}
.seat_info_wrap .seat_info {overflow:hidden; margin:0 auto; max-width:320px; padding:5px 0 20px 10px; background:#1c191a;}
.seat_info_wrap .seat_info li {float:left; width:33.3%; padding-top:10px;}
.seat_info_wrap .seat_info li > span {display:block; padding-left:18px; color:#ccc; font-size:11px; font-weight:bold;}
.seat_info_wrap .seat_info li.s_01 span {background:url(../../Content/images/common/bg_s_info01.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_02 span {background:url(../../Content/images/common/bg_s_info02.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_03 span {background:url(../../Content/images/common/bg_s_info03.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_04 span {background:url(../../Content/images/common/bg_s_info04.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_05 span {background:url(../../Content/images/common/bg_s_info05.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_06 span {background:url(../../Content/images/common/bg_s_info06.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_07 span {background:url(../../Content/images/common/bg_s_info07.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_08 span {background:url(../../Content/images/common/bg_s_info08.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_09 span {background:url(../../Content/images/common/bg_s_info09.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_10 span {background:url(../../Content/images/common/bg_s_info10.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_11 span {background:url(../../Content/images/common/bg_s_info11.png) no-repeat left center; background-size:12px 12px;}
.seat_info_wrap .seat_info li.s_12 span {background:url(../../Content/images/common/bg_window_bottom.png) no-repeat left 90%; background-size:12px 4px;}
.seat_info_wrap .seat_info li.s_13 span {background:url(../../Content/images/common/bg_s_info13.png) no-repeat left center; background-size:12px 12px;}
*/

/* ì¢Œì„_ë¯¸ë‹ˆ */
.smallScreen {
	position: absolute;
	left: 10px;
	top: 10px; /*z-index:1; */
	padding: 0 10px 10px 10px;
	background: url(../../Content/images/common/bg_screenMask.png) repeat
		left top;
}

.smallScreen .redView {
	position: absolute;
	width: 40px;
	height: 32.5px;
	border: 1px solid #d41017;
}

.smallScreen .title_screen1 {
	display: block;
	text-align: center;
	background: url(../../Content/images/common/bg_screen_mini.png) repeat-x
		left bottom;
}

.smallScreen .title_screen1 img {
	width: 22.5px;
	height: 6px
}

.smallScreen .floor_bx.seatSet2 .floor_tit {
	height: 7px;
	font-size: 7px;
	line-height: 7px;
}

.smallScreen .floor_bx .floor_tit.color_a {
	background: #5f602e;
}

.smallScreen .floor_bx .floor_tit.color_b {
	background: #253854;
}

.smallScreen .floor_bx .seat_area {
	position: relative;
	margin: 5px auto 0;
}

.smallScreen .floor_bx .seat_area .sel {
	position: absolute;
}

.smallScreen .floor_bx .seat_area .sel>span {
	overflow: hidden;
	display: block;
	width: 4px;
	height: 3px;
	background: #fff;
	line-height: 0;
	font-size: 0;
	text-indent: -7000000em;
	border-radius: 1px 1px 0 0
}

.smallScreen .floor_bx .seat_area .sel.no_select span {
	background: #2f2f2f;
	cursor: inherit;
}

.smallScreen .floor_bx .seat_area .sel.on span {
	background: #FF243E !important;
}

.smallScreen .floor_bx .seat_area .sel>.completed:before {
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 36px;
	height: 36px;
	background: #000;
	opacity: 0.5
} /* ì„ íƒëœ ì¢Œì„ */
.smallScreen .floor_bx .seat_area .sel.on span {
	background: #FF243E;
	text-align: right;
}

.smallScreen .floor_bx .seat_area .sel>.handicapped {
	color: #fff;
	background: #427652;
} /* ìž¥ì• ì¸ì„ */
.smallScreen .floor_bx .seat_area .sel>.cine_couple {
	color: #fff;
	background: #EF3D7B;
} /* ì»¤í”Œì„ */
/* step04_ì¢Œì„ë¯¸ë¦¬ë³´ê¸° */
.screen_preview_box {
	padding: 0; /*margin-top:35px*/
}

.screen_preview_box .smallScreen {
	width: 100%;
	height: 140px;
	position: relative;
	top: 0;
	left: 0;
	background: #fff;
	padding: 0
}

.screen_preview_box .smallScreen .title_screen1 {
	position: relative;
	z-index: 1;
	color: #bdbdbd;
	letter-spacing: 5px;
	background: none;
}

.screen_preview_box .smallScreen .floor_bx {
	position: relative;
	margin: 10px 0;
	padding: 5px 0;
}

.screen_preview_box .smallScreen .floor_bx .seat_area .sel>span {
	background: #000 none !important
}

.screen_preview_box .smallScreen .floor_bx .seat_area .sel>span.completed
	{
	background: #c2c2c2 !important
}

.screen_preview_box .smallScreen .floor_bx .seat_area .sel>.completed:before
	{
	background: none;
}

.screen_preview_box .smallScreen .floor_bx .floor_tit {
	display: block;
	background: #fff;
	color: #000;
	font-size: 12px;
	text-align: right;
	font-family: 'Roboto', "Noto Sans KR";
	text-align: right;
}

.screen_preview_box .minimap {
	position: relative;
	top: 50%;
	-webkit-transform: translate(0, -50%);
	transform: translate(0, -50%)
}

.screen_preview_box .smallScreen .floor_bx.seatSet2 {
	background: url('../../Content/images/common/bg_dash.png') repeat-x 0 0;
}

.screen_preview_box .smallScreen .floor_bx.seatSet2 .floor_tit {
	position: static;
}

.screen_preview_box .smallScreen .floor_bx .dim, .screen_preview_box .smallScreen .floor_bx .dim2
	{
	overflow: hidden;
	position: absolute;
	left: 0;
	top: 0;
}

/* ìŠ¤íŽ˜ì…œê´€/ì¤€ë¹„íŽ˜ì´ì§€ ========================================================================================= */
.bx_ready {
	padding: 100px 0;
	color: #666;
	font-size: 15px;
	line-height: 1.4;
	text-align: center;
}

.bx_ready img {
	margin-bottom: 40px;
}

.bx_ready strong {
	display: block;
	margin-bottom: 10px;
	font-size: 24px;
	color: #000;
}

/* ìŠ¤íŽ˜ì…œê´€/ê³µí†µ ========================================================================================= */
.visual_special {
	height: 596px;
	background-size: cover;
	background-position: 50% 50%;
}

.visual_special video {
	position: absolute;
	top: 0;
	left: 0;
	min-width: 100%;
	min-height: 100%; /* z-index ì‚½ìž…ì‹œ, ìž‘ë™ì•ˆë¨*/
}

.visual_special .section>img {
	width: 100%;
}

.visual_special .special_txt {
	position: absolute;
	bottom: 100px;
	left: 50%;
	margin-left: -490px;
	z-index: 1;
}

.visual_special .special_txt>img {
	display: block;
	margin-bottom: 30px;
}

.visual_special .special_txt .special_tit {
	color: #ffffff;
	margin-bottom: 15px;
	font-size: 60px;
	font-family: 'Roboto';
}

.visual_special .special_txt p {
	color: #fff;
	font-weight: 100;
	font-size: 18px;
	padding-left: 50px;
}
/* ë¹„ì£¼ì–¼_ìŠ¬ë¼ì´ë“œ - swiper */
.visual_special .visual_slide .swiper-slide .itm {
	width: 100%;
	height: 596px;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	transition: background-position 3.8s .3s linear;
	-webkit-transition: background-position 3.8s .3s linear;
	-moz-transition: background-position 3.8s .3s linear;
	-ms-transition: background-position 3.8s .3s linear;
	-o-transition: background-position 3.8s .3s linear;
}

.visual_special .visual_slide .swiper-slide .itm.slide_left {
	background-position-x: 100%;
}

.visual_special .visual_slide .swiper-slide .itm.slide_right {
	background-position-x: 0;
}

.visual_special .visual_slide .swiper-slide .itm.slide_top {
	background-position-y: 100%;
}

.visual_special .visual_slide .swiper-slide .itm.slide_bottom {
	background-position-y: 0;
}

.visual_special .visual_slide .swiper-slide.swiper-slide-active .itm.slide_left
	{
	background-position-x: 0;
}

.visual_special .visual_slide .swiper-slide.swiper-slide-active .itm.slide_right
	{
	background-position-y: 100%;
}

.visual_special .visual_slide .swiper-slide.swiper-slide-active .itm.slide_top
	{
	background-position-y: 0;
}

.visual_special .visual_slide .swiper-slide.swiper-slide-active .itm.slide_bottom
	{
	background-position-y: 100%;
}

/* ë¹„ì£¼ì–¼_ìŠ¬ë¼ì´ë“œ - owl */
.visual_special .owl-carousel .owl-item .itm {
	width: 100%;
	height: 596px;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	transition: background-position 3.8s .3s linear;
	-webkit-transition: background-position 3.8s .3s linear;
	-moz-transition: background-position 3.8s .3s linear;
	-ms-transition: background-position 3.8s .3s linear;
	-o-transition: background-position 3.8s .3s linear;
}

.visual_special .owl-carousel .owl-item .itm.slide_left {
	background-position-x: 100%;
}

.visual_special .owl-carousel .owl-item .itm.slide_right {
	background-position-x: 0;
}

.visual_special .owl-carousel .owl-item .itm.slide_top {
	background-position-y: 100%;
}

.visual_special .owl-carousel .owl-item .itm.slide_bottom {
	background-position-y: 0;
}

.visual_special .owl-carousel .owl-item.active .itm.slide_left {
	background-position-x: 0;
}

.visual_special .owl-carousel .owl-item.active .itm.slide_right {
	background-position-y: 100%;
}

.visual_special .owl-carousel .owl-item.active .itm.slide_top {
	background-position-y: 0;
}

.visual_special .owl-carousel .owl-item.active .itm.slide_bottom {
	background-position-y: 100%;
}

/* ìŠ¤íŽ˜ì…œê´€/í™ˆ ========================================================================================= */
.visual_special.special_home {
	background-image: url('../images/movie/visual_special_home.jpg');
}

.special_theater_home {
	position: relative;
}

.special_theater_home .special_tit_wrap {
	position: absolute;
	width: 625px;
	margin-top: 40px;
	padding: 18px 0;
} /* 2020.03.30 */
.special_theater_home .special_tit_wrap .tit {
	position: relative;
	padding: 45px 0 0 40px;
	font-size: 45px;
	font-family: 'Roboto';
	margin-bottom: 18px;
}

.special_theater_home .special_tit_wrap .tit>em {
	position: absolute;
	top: 0;
	left: 0;
}

.special_theater_home .special_tit_wrap p {
	padding-left: 20px;
	font-size: 15px;
}

.special_theater_home .special_list_wrap {
	margin-top: 275px;
} /* 2020.03.30 */
.special_theater_home .special_list_wrap:after {
	content: '';
	display: table;
	clear: both;
}

.special_theater_home .special_list {
	position: relative;
	margin-top: 80px;
	font-size: 0;
}

.special_theater_home .special_list>li {
	position: relative;
	display: inline-block;
	vertical-align: top;
}

.special_theater_home .special_list>li:nth-child(2n) {
	top: -43px;
}

.special_theater_home .special_list>li:last-child {
	top: -217px;
}

.special_theater_home .special_list>li+li {
	margin-left: 85px;
}

.special_theater_home .special_list>li>a {
	display: block;
}

.special_theater_home .special_list>li>a .sec_img {
	width: 270px;
	height: 270px;
	margin-bottom: 22px;
}

.special_theater_home .special_list>li>a .bx_txt {
	padding-left: 20px;
}

.special_theater_home .special_list>li>a .bx_txt .tit {
	margin-bottom: 10px;
	font-size: 18px;
}

.special_theater_home .special_list>li>a .bx_txt p {
	font-size: 11px;
}

/* ê°œë³„ì´ë¯¸ì§€ */
.special_theater_home .special_list>li>a .sec_img.img01 {
	background-image: url('../images/movie/special_charlotte_270.jpg');
}

.special_theater_home .special_list>li>a .sec_img.img02 {
	background-image: url('../images/movie/special_superplexg_270.jpg');
}

.special_theater_home .special_list>li>a .sec_img.img03 {
	background-image: url('../images/movie/special_superplex_270.jpg');
}

.special_theater_home .special_list>li>a .sec_img.img04 {
	background-image: url('../images/movie/special_supers_270.jpg');
}

.special_theater_home .special_list>li>a .sec_img.img05 {
	background-image: url('../images/movie/special_super4d_270.jpg');
}

.special_theater_home .special_list>li>a .sec_img.img06 {
	background-image: url('../images/movie/special_cinefamily_270.jpg');
	height: 180px;
}

.special_theater_home .special_list>li>a .sec_img.img06.type1 {
	background-image: url('../images/movie/special_cinefamily_270-1.jpg');
}

.special_theater_home .special_list>li>a .sec_img.img07 {
	background-image: url('../images/movie/special_cinecouple_270.jpg');
	height: 180px;
}

.special_theater_home .special_list>li>a .sec_img.img08 {
	background-image: url('../images/movie/special_cinebiz_270.jpg');
	height: 180px;
}

.special_theater_home .special_list>li>a .sec_img.img09 {
	background-image: url('../images/movie/special_cinecomfort2_270_2.jpg');
	height: 180px;
} /* ìˆ˜ì • 2020.06.04 */
.special_theater_home .special_list>li>a .sec_img.img10 {
	background-image: url('../images/movie/special_cinesalon_270.jpg');
}

.special_theater_home .special_list>li>a .sec_img.img11 {
	background-image: url('../images/movie/special_colorium_270.jpg');
}

.wh_cover {
	width: 270px;
	height: 270px;
	background-color: #fff;
	z-index: 2;
}

/*ìŠ¤íŽ˜ì…œê´€ - ë¦¬ìŠ¤íŠ¸í˜• 
.visual_special.special_home {background-image:url('../images/movie/visual_special_home.jpg');}
.special_theater_home {position:relative;}
.special_theater_home .special_tit_wrap {float:left; border-top:2px solid #333333; width:625px; padding:18px 0;}
.special_theater_home .special_tit_wrap .tit {position:relative; padding:45px 0 0 40px; font-size:45px; font-family:'Roboto'; margin-bottom:18px;}
.special_theater_home .special_tit_wrap .tit > em {position:absolute; top:0; left:0;}
.special_theater_home .special_tit_wrap p {padding-left:20px; font-size:15px; font-weight:1;}
.special_theater_home .special_list {font-size:0; margin-left:-19px;}
.special_theater_home .special_list > li {display:inline-block; margin-left:19px; margin-bottom:80px;}
.special_theater_home .special_list > li > a {display:block;}
.special_theater_home .special_list > li > a .sec_img {width:314px; height:155px; margin-bottom:30px; overflow:hidden;}
.special_theater_home .special_list > li > a .sec_img .img_wrap {position:relative; display:block; width:100%; height:100%;}
.special_theater_home .special_list > li > a .sec_img.motion .img_wrap:after {content:''; display:block; background-color:#ddd; position:absolute; top:0; left:0; right:0; bottom:0; box-sizing:border-box;}
.special_theater_home .special_list > li > a .sec_img .bx_img {background:#F8F8F8 no-repeat 50% 50%; width:100%; height:100%;}
.special_theater_home .special_list > li > a .bx_txt {padding-left:20px;}
.special_theater_home .special_list > li > a .bx_txt .tit {margin-bottom:10px; font-size:15px; font-weight:bold;}
.special_theater_home .special_list > li > a .bx_txt p {font-size:13px;}

/* ìŠ¤íŽ˜ì…œê´€ í™ˆ ê°œë³„ì´ë¯¸ì§€
.special_theater_home .special_list > li > a .sec_img .bx_img.img01 {background-image:url('../images/movie/special_charlotte_190.png'); background-size:180px auto;}
.special_theater_home .special_list > li > a .sec_img .bx_img.img02 {background-image:url('../images/movie/special_superplexg_155.png'); background-size:145px auto;}
.special_theater_home .special_list > li > a .sec_img .bx_img.img03 {background-image:url('../images/movie/special_superplex_110.png'); background-size:105px auto;}
.special_theater_home .special_list > li > a .sec_img .bx_img.img04 {background-image:url('../images/movie/special_supers_127.png'); background-size:121px auto;}
.special_theater_home .special_list > li > a .sec_img .bx_img.img05 {background-image:url('../images/movie/special_super4d_119.png'); background-size:142px auto;}
.special_theater_home .special_list > li > a .sec_img .bx_img.img06 {background-image:url('../images/movie/special_cinefamily_145.png'); background-size:138px auto;}
.special_theater_home .special_list > li > a .sec_img .bx_img.img07 {background-image:url('../images/movie/special_cinecouple_152.png'); background-size:145px auto;}
.special_theater_home .special_list > li > a .sec_img .bx_img.img08 {background-image:url('../images/movie/special_cinebiz_97.png'); background-size:93px auto;}
.special_theater_home .special_list > li > a .sec_img .bx_img.img09 {background-image:url('../images/movie/special_cinecomfort_169.png'); background-size:161px auto;}
.special_theater_home .special_list > li:nth-child(3n-1) > a .is_on.sec_img.mask_slide_top .img_wrap:after,
.special_theater_home .special_list > li:nth-child(3n-1) > a .is_on.sec_img .bx_img {transition-delay:.15s;}
.special_theater_home .special_list > li:nth-child(3n) > a .is_on.sec_img.mask_slide_top .img_wrap:after,
.special_theater_home .special_list > li:nth-child(3n) > a .is_on.sec_img .bx_img {transition-delay:.3s;}

/* ìŠ¤íŽ˜ì…œê´€/ìƒì„¸ ========================================================================================= */
/* ê³µí†µ */
.special_theater {
	position: relative;
}

.special_theater .special_list_tit {
	font-size: 18px;
	margin-bottom: 18px;
}

.special_theater ul.special_list {
	font-size: 0;
	border: 1px solid #DEDEDE;
	border-bottom: 0 none;
	overflow: hidden;
}

.special_theater ul.special_list:after {
	content: '';
	display: block;
	border-top: 1px solid #DEDEDE;
	margin-top: -1px;
	width: 100%;
	height: 1px;
}

.special_theater ul.special_list li {
	display: inline-block;
	width: 14.2857%;
}

.special_theater ul.special_list li>a {
	display: block;
	border-bottom: 1px solid #DEDEDE;
	border-right: 1px solid #DEDEDE;
	width: 100%;
	padding: 20px 0 17px 0;
	text-align: center;
	font-size: 13px;
	color: #666666;
	box-sizing: border-box;
}

.special_theater ul.special_list li:nth-of-type(7n)>a, .special_theater ul.special_list li:first-child:nth-last-child(1)>a,
	.special_theater ul.special_list li:first-child:nth-last-child(2) ~li >a,
	.special_theater ul.special_list li:first-child:nth-last-child(3)
	~li~li >a {
	border-right: 0 none;
}

.special_theater ul.special_list li:first-child:nth-last-child(1) {
	width: 100%;
}

.special_theater ul.special_list li:first-child:nth-last-child(2),
	.special_theater ul.special_list li:first-child:nth-last-child(2) ~li {
	width: 50%;
}

.special_theater ul.special_list li:first-child:nth-last-child(3),
	.special_theater ul.special_list li:first-child:nth-last-child(3) ~li,
	.special_theater ul.special_list li:first-child:nth-last-child(3)
	~li~li {
	width: 33.33333%;
}

.special_theater .section {
	position: relative;
	margin-bottom: 180px;
	font-size: 0;
}

.special_theater .section:first-child {
	margin-bottom: 80px;
}

.special_theater .section.last {
	margin-bottom: 0px;
}

.special_theater .section .sec_tit {
	display: inline-block;
	vertical-align: top;
	letter-spacing: -1px;
}

.special_theater .section .sec_tit .tit_primary {
	margin-bottom: 18px;
	line-height: 1;
	font-size: 70px;
	font-family: 'Roboto';
	color: #C0BFBE;
}

.special_theater .section .sec_tit .tit_primary em {
	display: block;
	font-size: 29px;
}

.special_theater .section .sec_tit .tit_secondary {
	font-size: 28px;
	line-height: 1.2;
	margin-bottom: 24px;
}

.special_theater .section .sec_tit .tit_secondary strong {
	font-weight: 700;
}

.special_theater .section .sec_tit .sec_content {
	font-size: 15px;
	line-height: 1.4;
}

.special_theater .section .sec_tit .sec_slide_wrap {
	position: relative;
}

.special_theater .section .sec_img {
	position: relative;
	display: inline-block;
	overflow: hidden;
}

.special_theater .section .sec_img .img_wrap {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.special_theater .section .sec_img em {
	text-indent: -9999em;
	color: transparent;
	font-size: 0;
}

.special_theater .section .sec_img .bx_img {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.special_theater .section .sec_img .img_wrap:after {
	content: '';
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	box-sizing: border-box;
}

.special_theater .section div[class*="mask"] .img_wrap:after {
	background-color: #DDDDDD;
}

.special_theater .section .img_primary {
	position: relative;
}

.special_theater .section .img_primary>.img_itm, .special_theater .section .img_secondary
	{
	position: absolute;
}

.special_theater .section .img_primary>.img_itm>.bx_img,
	.special_theater .section .img_secondary>.bx_img {
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-position: 0 0;
	background-size: cover;
	transition: opacity 1.2s 1s linear;
	-webkit-transition: opacity 1.2s 1s linear;
	-moz-transition: opacity 1.2s 1s linear;
	-ms-transition: opacity 1.2s 1s linear;
	-o-transition: opacity 1.2s 1s linear;
}

.special_theater .section .lent_wrap {
	position: relative;
	border: 1px solid #DDDDDD;
	padding: 35px 50px;
	font-size: 0;
}

.special_theater .section .lent_wrap .bx_img {
	display: inline-block;
	border-radius: 50%;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	background-size: cover;
	width: 130px;
	height: 130px;
	margin-right: 40px;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-ms-border-radius: 50%;
	-o-border-radius: 50%;
	vertical-align: middle;
}

.special_theater .section .lent_wrap .bx_info {
	display: inline-block;
	font-size: 13px;
	line-height: 1.4;
	vertical-align: middle;
}

.special_theater .section .lent_wrap .bx_info strong {
	font-weight: bold;
}

.special_theater .section .lent_wrap .bx_info img {
	display: block;
	margin-bottom: 20px;
}

.special_theater .section .lent_wrap .btn_more {
	position: absolute;
	right: 50px;
	top: 50%;
	margin-top: -8px;
}

.special_theater .section .lent_wrap .btn_more .line {
	display: inline-block;
	background-color: #EEEEEE;
	width: 211px;
	height: 1px;
	margin-right: 60px;
}

.special_theater .section .lent_wrap .btn_more .btn_txt {
	border: 0 none;
	font-size: 15px;
	color: #000;
}
/* ìƒ¤ë¡¯ë° */
.visual_special.charlotte {
	background-image: url('../images/movie/visual_special_charlotte.jpg');
}

.charlotte .img_01 .sec_tit {
	width: 340px;
	margin-top: 22px;
}

.charlotte .img_01 .img_secondary {
	left: 30px;
	width: 256px;
	height: 246px;
}

.charlotte .img_01 .img_secondary .bx_img:first-child {
	background-image: url('../images/movie/motion_charlotte_01.jpg');
}

.charlotte .img_01 .img_secondary .bx_img.motion {
	background-image: url('../images/movie/motion_charlotte_02.jpg');
	transition-delay: 1s;
}

.charlotte .img_01 .sec_img {
	width: 635px;
	height: 358px;
}

.charlotte .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_char_01.jpg');
}

.charlotte .img_02 {
	text-align: right;
}

.charlotte .img_02 .sec_tit {
	width: 100%;
	margin-bottom: 40px;
}

.charlotte .img_02 .sec_img {
	width: 888px;
	height: 370px;
}

.charlotte .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_char_02.jpg');
}

.charlotte .img_03 .sec_tit {
	width: 505px;
	margin-left: 40px;
	margin-top: 63px;
}

.charlotte .img_03 .img_secondary {
	right: 0;
	bottom: -60px;
	width: 285px;
	height: 160px;
}

.charlotte .img_03 .img_secondary .bx_img {
	background: url('../images/movie/special_char_04.jpg') no-repeat 50% 50%;
}

.charlotte .img_03 .sec_img {
	width: 430px;
	height: 480px;
}

.charlotte .img_03 .sec_img .bx_img {
	background-image: url('../images/movie/special_char_03.jpg');
}

.charlotte .img_04 {
	margin-bottom: 80px;
}

.charlotte .img_04 .sec_tit {
	width: 360px;
	margin-right: 40px;
	text-align: right;
}

.charlotte .img_04 .sec_img {
	width: 471px;
	height: 266px;
}

.charlotte .img_04 .sec_img .bx_img {
	background-image: url('../images/movie/special_char_04.jpg');
}

.charlotte .section.txt {
	display: block;
	margin-bottom: 120px;
	color: #666666;
	text-align: center;
	font-size: 12px;
}

.charlotte .lent_wrap .bx_img {
	background-image: url('../images/movie/charlotte_130.png');
}

.charlotte .lent_wrap .bx_info>span {
	display: block;
	margin-top: 16px;
	color: #666666;
}
/* ìŠˆí¼í”Œëž™ìŠ¤G */
.visual_special.superplexg {
	background-image: url('../images/movie/visual_special_superg.jpg');
}

.superplexg .img_01 .sec_tit {
	margin-bottom: 40px;
}

.superplexg .img_01 .sec_img {
	width: 856px;
	height: 526px;
}

.superplexg .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_superplexg_01.jpg');
}

.superplexg .img_02 .sec_tit {
	width: 100%;
	margin-bottom: 40px;
	text-align: right;
}

.superplexg .img_02 .sec_img {
	width: 100%;
	height: 381px;
}

.superplexg .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_superplexg_02.jpg');
}

.superplexg .img_03 {
	margin-bottom: 75px;
}

.superplexg .img_03 .sec_tit {
	width: 345px;
}

.superplexg .img_03 .sec_img {
	width: 635px;
	height: 317px;
}

.superplexg .img_03 .sec_img .bx_img {
	background-image: url('../images/movie/special_superplexg_03.jpg');
}

.superplexg .img_04 .sec_img {
	width: 340px;
	height: 230px;
	margin-left: 122px;
}

.superplexg .img_04 .sec_img .bx_img {
	background-image: url('../images/movie/special_superplexg_04.gif');
}

.superplexg .lent_wrap .bx_img {
	background-image: url('../images/movie/cinecouple_130.png');
}
/* ìŠˆí¼í”Œëž™ìŠ¤ */
.visual_special.superplex .visual_slide .swiper-slide .itm.img01 {
	background-image: url('../images/movie/visual_special_superplex_01.jpg');
	background-size: auto 696px;
}

.visual_special.superplex .visual_slide .swiper-slide .itm.img02 {
	background-image: url('../images/movie/visual_special_superplex_02.jpg');
	background-size: auto 796px;
}

.visual_special.superplex .owl-carousel .item .itm.img01 {
	background-image: url('../images/movie/visual_special_superplex_01.jpg');
	background-size: auto 696px;
}

.visual_special.superplex .owl-carousel .item .itm.img02 {
	background-image: url('../images/movie/visual_special_superplex_02.jpg');
	background-size: auto 796px;
}

.superplex .section:first-child { /*margin-bottom:180px;*/
	margin-bottom: 80px;
} /* 2020.01.08 */
.superplex .img_01 .sec_tit {
	width: 100%;
	margin-bottom: 40px;
}

.superplex .img_01 .sec_img {
	width: 100%;
	height: 380px;
}

.superplex .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_superplex_01.jpg');
}

.superplex .img_02 {
	margin-bottom: 280px;
}

.superplex .img_02 .sec_tit {
	width: 390px;
	margin-top: 75px;
	margin-left: 50px;
}

.superplex .img_02 .sec_img {
	width: 534px;
	height: 650px;
}

.superplex .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_superplex_02.jpg');
}

.superplex .img_02 .img_secondary {
	right: 0px;
	bottom: -100px;
	width: 240px;
	height: 158px;
}

.superplex .img_02 .img_secondary .bx_img {
	background-image: url('../images/movie/special_superplex_02_02.jpg');
}

.superplex .img_03 .sec_tit {
	width: 330px;
	margin-right: 50px;
}

.superplex .img_03 .sec_tit .sec_content>span {
	display: block;
	margin-top: 30px;
	color: #666666;
}

.superplex .img_03 .sec_img {
	width: 600px;
	height: 380px;
}

.superplex .img_03 .sec_img .bx_img {
	background-image: url('../images/movie/special_superplex_03.jpg');
}
/* ìŠˆí¼S */
.visual_special.supers {
	background-image: url('../images/movie/visual_special_supers.jpg');
}

.supers .img_01 .sec_tit {
	margin-bottom: 40px;
}

.supers .img_01 .sec_img {
	width: 100%;
	height: 488px;
}

.supers .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_supers_01.jpg');
}

.supers .img_02 {
	text-align: right;
}

.supers .img_02 .sec_tit {
	width: 880px;
	margin-top: 40px;
	margin-right: 50px;
	text-align: right;
}

.supers .img_02 .sec_img {
	width: 517px;
	height: 333px;
	margin-right: 50px;
}

.supers .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_supers_02_02.jpg');
}

.supers .img_02 .img_primary .img_itm {
	top: 0px;
	left: 85px;
	width: 280px;
	height: 188px;
}

.supers .img_02 .img_primary .img_itm .bx_img {
	background-image: url('../images/movie/special_supers_02_01.jpg');
}

.supers .img_02 .img_primary .img_itm.ico_arr {
	top: 90px;
	left: 375px;
	width: 30px;
	height: 6px;
	transition-delay: .3s;
}

.supers .img_02 .img_primary .img_itm.ico_arr .bx_img {
	background-image: url('../images/movie/special_supers_arrow.jpg');
}

.supers .img_02 .img_primary .sec_img.motion {
	transition-delay: .5s;
}

.supers .img_02 .img_secondary {
	left: 85px;
	bottom: 100px;
	width: 255px;
	height: 203px;
}

.supers .img_02 .img_secondary .bx_img:first-child {
	background-image: url('../images/movie/motion_supers_01_01.jpg');
}

.supers .img_02 .img_secondary .bx_img.motion {
	background-image: url('../images/movie/motion_supers_01_02.jpg');
	transition-delay: 1.2s;
	transition-duration: 0.55s;
}

.supers .img_03 .sec_tit {
	position: relative;
	top: -100px;
}

.supers .img_03 .sec_img {
	width: 427px;
	height: 474px;
	margin-right: 50px;
}

.supers .img_03 .sec_img .bx_img {
	background-image: url('../images/movie/special_supers_03_02.jpg');
}

.supers .img_03 .img_primary {
	text-align: right;
}

.supers .img_03 .img_primary .img_itm {
	top: 0px;
	left: 155px;
	width: 280px;
	height: 310px;
}

.supers .img_03 .img_primary .img_itm .bx_img {
	background-image: url('../images/movie/special_supers_03_01.jpg');
}

.supers .img_03 .img_primary .img_itm.ico_arr {
	top: 150px;
	left: 455px;
	width: 30px;
	height: 6px;
	transition-delay: .3s;
}

.supers .img_03 .img_primary .img_itm.ico_arr .bx_img {
	background-image: url('../images/movie/special_supers_arrow.jpg');
}

.supers .img_03 .img_primary .sec_img.motion {
	transition-delay: .5s;
}

.supers .img_03 .img_secondary {
	bottom: -40px;
	right: 50px;
	width: 427px;
	height: 227px;
}

.supers .img_03 .img_secondary .bx_img:first-child {
	background-image: url('../images/movie/motion_supers_02_01.jpg');
}

.supers .img_03 .img_secondary .bx_img.motion {
	background-image: url('../images/movie/motion_supers_02_02.jpg');
	transition-delay: 1.05s;
	transition-duration: 0.55s;
}

.supers .img_04 .sec_tit {
	width: 352px;
	margin-left: 48px;
	margin-top: 20px;
}

.supers .img_04 .sec_img {
	width: 580px;
	height: 325px;
}

.supers .img_04 .sec_img .bx_img {
	background-image: url('../images/movie/special_supers_04.jpg');
}
/* ìŠˆí¼4D */
.visual_special.super4d {
	background-image: url('../images/movie/visual_special_super4d.jpg');
}

.super4d .sec_tit {
	width: 430px;
	margin: 91px 50px 0;
}

.super4d .sec_tit .tit_primary {
	position: relative;
	display: inline-block;
}

.super4d .sec_tit .tit_primary:after {
	content: '';
	position: absolute;
	top: -35px;
	display: inline-block;
	width: 60px;
	height: 60px;
	background-repeat: no-repeat;
	background-position: 50% 50%;
	background-size: contain;
}

.super4d .img_02 .sec_tit .tit_primary:after {
	background-image: url('../images/movie/ic_wind.png');
	margin-left: 10px;
}

.super4d .img_03 .sec_tit .tit_primary:after {
	background-image: url('../images/movie/ic_lightning.png');
	left: -70px;
}

.super4d .img_04 .sec_tit .tit_primary:after {
	background-image: url('../images/movie/ic_bubbles.png');
}

.super4d .img_05 .sec_tit .tit_primary:after {
	background-image: url('../images/movie/ic_fog.png');
	left: -75px;
}

.super4d .img_06 .sec_tit .tit_primary:after {
	background-image: url('../images/movie/ic_scents.png');
}

.super4d .img_07 .sec_tit .tit_primary:after {
	background-image: url('../images/movie/ic_water.png');
	top: -15px;
	left: -75px;
}

.super4d .img_08 .sec_tit .tit_primary:after {
	background-image: url('../images/movie/ic_motion.png');
	top: -15px;
}

.super4d .img_09 .sec_tit .tit_primary:after {
	background-image: url('../images/movie/ic_vibration.png');
	top: -15px;
	left: -75px;
}

.super4d .sec_img {
	width: 450px;
	height: 293px;
}

.super4d .img_01 {
	margin-bottom: 60px;
}

.super4d .img_01 .sec_tit {
	margin: 80px 0 0 0;
	width: 100%;
}

.super4d .img_01 .sec_img {
	width: 100%;
	height: 304px;
}

.super4d .img_03 .sec_tit, .super4d .img_05 .sec_tit, .super4d .img_07 .sec_tit,
	.super4d .img_09 .sec_tit {
	text-align: right;
}

.super4d .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_super4d_01.jpg');
}

.super4d .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_super4d_02.jpg');
}

.super4d .img_03 .sec_img .bx_img {
	background-image: url('../images/movie/special_super4d_03.jpg');
}

.super4d .img_04 .sec_img .bx_img {
	background-image: url('../images/movie/special_super4d_04.jpg');
}

.super4d .img_05 .sec_img .bx_img {
	background-image: url('../images/movie/special_super4d_05.jpg');
}

.super4d .img_06 .sec_img .bx_img {
	background-image: url('../images/movie/special_super4d_06.jpg');
}

.super4d .img_07 .sec_img .bx_img {
	background-image: url('../images/movie/special_super4d_07.jpg');
}

.super4d .img_08 .sec_img .bx_img {
	background-image: url('../images/movie/special_super4d_08.jpg');
}

.super4d .img_09 .sec_img .bx_img {
	background-image: url('../images/movie/special_super4d_09.jpg');
}
/* ì”¨ë„¤íŒ¨ë°€ë¦¬ */
/* .visual_special.cinefamily {background-image:url('../images/movie/visual_special_cinefamily.jpg');} */
.cinefamily .img_01 .sec_tit {
	width: 330px;
}

.cinefamily .img_01 .sec_img {
	width: 649px;
	height: 366px;
}

.cinefamily .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinefamily_01.jpg');
}

.cinefamily .img_02 .sec_tit {
	width: 540px;
	margin-left: 50px;
}

.cinefamily .img_02 .sec_img {
	width: 390px;
	height: 529px;
}

.cinefamily .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinefamily_02.jpg');
}

.cinefamily .img_02 .img_secondary {
	bottom: -40px;
	right: 0px;
	width: 245px;
	height: 147px;
}

.cinefamily .img_02 .img_secondary .bx_img {
	background-image: url('../images/movie/special_cinefamily_02_02.jpg');
	transition-delay: 1.05s;
	transition-duration: 0.55s;
}

.cinefamily .img_03 .sec_tit {
	width: 100%;
	margin-bottom: 50px;
}

.cinefamily .img_03 .sec_img {
	width: 100%;
	height: 380px;
}

.cinefamily .img_03 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinefamily_03.jpg');
}
/* ì”¨ë„¤íŒ¨ë°€ë¦¬ ìˆ˜ì • 2021.12.28 */
.visual_special.cinefamily {
	background: #171717;
}

.cinefamily.new2021 .img_01 .sec_tit {
	width: 330px;
}

.cinefamily.new2021 .img_01 .sec_img {
	width: 649px;
	height: 366px;
}

.cinefamily.new2021 .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinefamily_1.jpg');
}

.cinefamily.new2021 .img_02 .sec_tit {
	width: 250px;
	margin-left: 50px;
}

.cinefamily.new2021 .img_02 .sec_img {
	width: 569px;
	height: 424px;
}

.cinefamily.new2021 .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinefamily_2-1.jpg');
}

.cinefamily.new2021 .img_02 .img_secondary {
	bottom: -100px;
	right: 30px;
	width: 265px;
	height: 166px;
}

.cinefamily.new2021 .img_02 .img_secondary .bx_img {
	background-image: url('../images/movie/special_cinefamily_2_2.jpg');
	transition-delay: 1.05s;
	transition-duration: 0.55s;
}

.cinefamily.new2021 .img_03 .sec_tit {
	width: 100%;
	margin-bottom: 50px;
}

.cinefamily.new2021 .img_03 .sec_img {
	width: 100%;
	height: 458px;
}

.cinefamily.new2021 .img_03 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinefamily_3.jpg');
}

.visual_special.cinefamily .visual_slide .swiper-slide .itm.img02 {
	background-image:
		url('../images/movie/visual_special_cinefamily_01.jpg');
	background-size: auto 696px;
}

.visual_special.cinefamily .visual_slide .swiper-slide .itm.img01 {
	background-image:
		url('../images/movie/visual_special_cinefamily_02.jpg');
	background-size: auto 680px;
}

.visual_special.cinefamily .owl-carousel .item .itm.img02 {
	background-image:
		url('../images/movie/visual_special_cinefamily_01.jpg');
	background-size: auto 696px;
}

.visual_special.cinefamily .owl-carousel .item .itm.img01 {
	background-image:
		url('../images/movie/visual_special_cinefamily_02.jpg');
	background-size: auto 680px;
}
/* ì”¨ë„¤ì»¤í”Œ */
.visual_special.cinecouple {
	background-image: url('../images/movie/visual_special_cinecouple.jpg');
}

.cinecouple .img_01 .sec_tit {
	width: 410px;
}

.cinecouple .img_01 .sec_img {
	width: 568px;
	height: 340px;
}

.cinecouple .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinecouple_01.jpg');
}

.cinecouple .img_02 .sec_tit {
	width: 100%;
	margin-bottom: 40px;
}

.cinecouple .img_02 .sec_img {
	width: 100%;
	height: 380px;
}

.cinecouple .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinecouple_02.jpg');
}
/* ì”¨ë„¤ë¹„ì¦ˆ */
.visual_special.cinebiz {
	background-image: url('../images/movie/visual_special_cinebiz.jpg');
}

.cinebiz .img_01 .sec_tit {
	width: 100%;
	margin-top: 30px;
}

.cinebiz .img_01 .sec_img {
	width: 840px;
	height: 451px;
}

.cinebiz .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinebiz_01.jpg');
}

.cinebiz .img_02 .sec_tit {
	width: 302px;
	margin-left: 50px;
}

.cinebiz .img_02 {
	margin-bottom: 320px;
}

.cinebiz .img_02 .sec_img {
	width: 435px;
	height: 481px;
}

.cinebiz .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinebiz_02.jpg');
}

.cinebiz .img_02 .img_secondary {
	bottom: -140px;
	right: 0px;
	width: 257px;
	height: 180px;
}

.cinebiz .img_02 .img_secondary .bx_img {
	background-image: url('../images/movie/special_cinebiz_02_02.jpg');
}

.cinebiz .lent_wrap .bx_img {
	background-image: url('../images/movie/cinebiz_130.png');
}
/* ì”¨ë„¤ì»´í¬íŠ¸ */
/* .visual_special.cinecomfort {background-image:url('../images/movie/visual_special_cinecomfort.jpg');} */
.visual_special.cinecomfort {
	background: #171717;
}

.visual_special.cinecomfort .visual_slide .swiper-slide .itm.img02 {
	background-image:
		url('../images/movie/visual_special_cinecomfort_1.jpg');
	background-size: auto 696px;
}

.visual_special.cinecomfort .visual_slide .swiper-slide .itm.img01 {
	background-image:
		url('../images/movie/visual_special_cinecomfort_2.jpg');
	background-size: auto 680px;
}

.visual_special.cinecomfort .owl-carousel .item .itm.img02 {
	background-image:
		url('../images/movie/visual_special_cinecomfort_1.jpg');
	background-size: auto 696px;
}

.visual_special.cinecomfort .owl-carousel .item .itm.img01 {
	background-image:
		url('../images/movie/visual_special_cinecomfort_2.jpg');
	background-size: auto 680px;
}

/* .cinecomfort .section:first-child {margin-top:100px; margin-bottom:180px;} */
.cinecomfort .img_01 .sec_tit {
	width: 310px;
	margin-top: 20px;
}

.cinecomfort .img_01 .sec_img {
	width: 662px;
	height: 413px;
}

.cinecomfort .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinecomfort_01.jpg');
}

.cinecomfort .img_02 .sec_tit {
	width: 390px;
	margin-left: 50px;
	margin-top: 40px;
}

.cinecomfort .img_02 .sec_img {
	width: 504px;
	height: 380px;
}

.cinecomfort .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinecomfort_02.jpg');
}

.cinecomfort .img_03 {
	text-align: right;
}

.cinecomfort .img_03 .sec_tit {
	margin-right: 50px;
	margin-top: 55px;
}

.cinecomfort .img_03 .sec_img {
	width: 395px;
	height: 390px;
}

.cinecomfort .img_03 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinecomfort_03.jpg');
}
/* ì”¨ë„¤Salon */
.visual_special.cinesalon {
	background: #171717;
}

.visual_special.cinesalon .visual_slide .swiper-slide .itm.img01 {
	background-image: url('../images/movie/visual_special_cinesalon_1.jpg');
	background-size: auto 696px;
}

.visual_special.cinesalon .visual_slide .swiper-slide .itm.img02 {
	background-image: url('../images/movie/visual_special_cinesalon_2.jpg');
	background-size: auto 696px;
}

.visual_special.cinesalon .owl-carousel .item .itm.img01 {
	background-image: url('../images/movie/visual_special_cinesalon_1.jpg');
	background-size: auto 696px;
}

.visual_special.cinesalon .owl-carousel .item .itm.img02 {
	background-image: url('../images/movie/visual_special_cinesalon_2.jpg');
	background-size: auto 696px;
}

.special_theater.cinesalon .section:first-child {
	padding-top: 90px;
	margin-bottom: 125px;
}

.cinesalon .img_01 .sec_tit {
	width: 310px;
	margin-top: 55px;
}

.cinesalon .img_01 .sec_img {
	width: 662px;
	height: 413px;
}

.cinesalon .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinesalon_01.jpg');
}

.cinesalon .img_02 {
	text-align: right;
	margin-bottom: 125px;
}

.cinesalon .img_02 .sec_tit {
	width: 450px;
	margin-right: 10px;
}

.cinesalon .img_02 .sec_img {
	width: 520px;
	height: 370px;
}

.cinesalon .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinesalon_02.jpg');
}

.cinesalon .img_03 .sec_tit {
	width: 365px;
	padding-right: 50px;
	text-align: right;
}

.cinesalon .img_03 .sec_img {
	width: 450px;
	height: 255px;
}

.cinesalon .img_03 .sec_img .bx_img {
	background-image: url('../images/movie/special_cinesalon_04.jpg');
}

.special_theater_home .special_list.last {
	height: 370px
}
/* ì»¬ëŸ¬ë¦¬ì›€ */
.colorium .img_00 .sec_tit {
	width: 100%;
}

.colorium .img_00 .sec_img {
	width: 980px;
	height: 488px;
}

.colorium .img_00 .sec_img .bx_img {
	background-image: url('../images/movie/special_colorium_01.jpg');
}

.colorium .img_01 {
	position: relative;
}

.colorium .img_01 .sec_tit {
	position: absolute;
	left: -62px;
	top: 347px;
	width: 100%;
	margin-top: 30px;
	text-align: right;
}

.colorium .img_01 .sec_img {
	width: 981px;
	height: 489px;
}

.colorium .img_01 .sec_img .bx_img {
	background-image: url('../images/movie/special_colorium_02.jpg');
}

.colorium .img_02 .sec_tit {
	width: 302px;
	margin-left: 50px;
	margin-top: 50px;
}

.colorium .img_02 {
	margin-bottom: 320px;
}

.colorium .img_02 .sec_img {
	width: 580px;
	height: 340px;
}

.colorium .img_02 .sec_img .bx_img {
	background-image: url('../images/movie/special_colorium_03.jpg');
}

.colorium .img_03 {
	text-align: right;
}

.colorium .img_03 .sec_tit {
	width: 880px;
	margin: 50px 50px 50px 0;
	text-align: right;
}

.colorium .img_03 .sec_img {
	width: 517px;
	height: 333px;
	margin-right: 50px;
}

.colorium .img_03 .sec_img .bx_img {
	background-image: url('../images/movie/special_supers_02_02.jpg');
}

.colorium .img_03 .img_primary .img_itm {
	top: 0px;
	left: 85px;
	width: 280px;
	height: 188px;
}

.colorium .img_03 .img_primary .img_itm .bx_img {
	background-image: url('../images/movie/special_supers_02_01.jpg');
}

.colorium .img_03 .img_primary .img_itm.ico_arr {
	top: 90px;
	left: 375px;
	width: 30px;
	height: 6px;
	transition-delay: .3s;
}

.colorium .img_03 .img_primary .img_itm.ico_arr .bx_img {
	background-image: url('../images/movie/special_supers_arrow.jpg');
}

.colorium .img_03 .img_primary .sec_img.motion {
	transition-delay: .5s;
}

.colorium .img_03 .img_secondary {
	left: 85px;
	bottom: 100px;
	width: 255px;
	height: 203px;
}

.colorium .img_03 .img_secondary .bx_img:first-child {
	background-image: url('../images/movie/motion_supers_01_01.jpg');
}

.colorium .img_03 .img_secondary .bx_img.motion {
	background-image: url('../images/movie/motion_supers_01_02.jpg');
	transition-delay: 1.2s;
	transition-duration: 0.55s;
}

.colorium .img_03 .img_primary .img_itm.grayimg {
	top: 400px;
	left: 85px;
	width: 350px;
	height: 210px;
}

.colorium .img_03 .img_primary .img_itm.grayimg .bx_img {
	background-image:
		url('../../Content/images/movie/special_colorium_04.jpg');
}

.colorium .img_04 .sec_tit {
	width: 302px;
	margin-top: 50px;
}

.colorium .img_04 {
	margin-bottom: 240px;
}

.colorium .img_04 .sec_img {
	position: absolute;
	right: 0;
	width: 580px;
	height: 340px;
}

.colorium .img_04 .sec_img .bx_img {
	background-image:
		url('../../Content/images/movie/special_colorium_03.jpg');
}

.colorium .img_05 {
	height: 460px;
	text-align: right;
	margin-bottom: 125px;
}

.colorium .img_05 .sec_tit {
	width: 450px;
	margin-right: 60px;
}

.colorium .img_05 .sec_img {
	position: absolute;
	top: 0;
	left: 160px;
	width: 506px;
	height: 456px;
}

.colorium .img_05 .sec_img .img_wrap {
	
}

.colorium .img_05 .sec_img .bx_img {
	background-image:
		url('../../Content/images/movie/special_colorium_05.png');
}

.colorium .img_06 {
	
}

.colorium .img_06 .sec_tit {
	width: 100%;
	margin-bottom: 40px;
}

.colorium .img_06 .sec_img {
	width: 980px;
	height: 331px;
}

.colorium .img_06 .sec_img .bx_img {
	background-image:
		url('../../Content/images/movie/special_colorium_06.jpg');
}
/* ëª¨ì…˜ ========================================================================================= */
/* Mask off ============================== */
/* to right */
.section .motion.sec_img.mask_slide_right .bx_img {
	transform: translate3d(-25%, 0, 0);
	-webkit-transform: translate3d(-25%, 0, 0);
	-moz-transform: translate3d(-25%, 0, 0);
	-ms-transform: translate3d(-25%, 0, 0);
	-o-transform: translate3d(-25%, 0, 0);
}

.section .motion.is_on.sec_img.mask_slide_right .img_wrap:after {
	transform: translate3d(101%, 0, 0);
	-webkit-transform: translate3d(101%, 0, 0);
	-moz-transform: translate3d(101%, 0, 0);
	-ms-transform: translate3d(101%, 0, 0);
	-o-transform: translate3d(101%, 0, 0);
}
/* to left */
.section .motion.sec_img.mask_slide_left .bx_img {
	transform: translate3d(25%, 0, 0);
	-webkit-transform: translate3d(25%, 0, 0);
	-moz-transform: translate3d(25%, 0, 0);
	-ms-transform: translate3d(25%, 0, 0);
	-o-transform: translate3d(25%, 0, 0);
}

.section .motion.is_on.sec_img.mask_slide_left .img_wrap:after {
	transform: translate3d(-101%, 0, 0);
	-webkit-transform: translate3d(-101%, 0, 0);
	-moz-transform: translate3d(-101%, 0, 0);
	-ms-transform: translate3d(-101%, 0, 0);
	-o-transform: translate3d(-101%, 0, 0);
}
/* to top */
.section .motion.sec_img.mask_slide_top .bx_img {
	transform: translate3d(0, 25%, 0);
	-webkit-transform: translate3d(0, 25%, 0);
	-moz-transform: translate3d(0, 25%, 0);
	-ms-transform: translate3d(0, 25%, 0);
	-o-transform: translate3d(0, 25%, 0);
}

.section .motion.is_on.sec_img.mask_slide_top .img_wrap:after {
	transform: translate3d(0, -101%, 0);
	-webkit-transform: translate3d(0, -101%, 0);
	-moz-transform: translate3d(0, -101%, 0);
	-ms-transform: translate3d(0, -101%, 0);
	-o-transform: translate3d(0, -101%, 0);
}
/* to bottom */
.section .motion.sec_img.mask_slide_bottom .bx_img {
	transform: translate3d(0, -25%, 0);
	-webkit-transform: translate3d(0, -25%, 0);
	-moz-transform: translate3d(0, -25%, 0);
	-ms-transform: translate3d(0, -25%, 0);
	-o-transform: translate3d(0, -25%, 0);
}

.section .motion.is_on.sec_img.mask_slide_bottom .img_wrap:after {
	transform: translate3d(0, 101%, 0);
	-webkit-transform: translate3d(0, 101%, 0);
	-moz-transform: translate3d(0, 101%, 0);
	-ms-transform: translate3d(0, 101%, 0);
	-o-transform: translate3d(0, 101%, 0);
}
/*ëª¨ì…˜ê³µí†µ */
.section .motion.is_on.sec_img .bx_img {
	transform: translate3d(0, 0, 0);
	-webkit-transform: translate3d(0, 0, 0);
	-moz-transform: translate3d(0, 0, 0);
	-ms-transform: translate3d(0, 0, 0);
	-o-transform: translate3d(0, 0, 0);
	transition: transform 1.2s cubic-bezier(0.675, 0.005, 0.310, 1.005);
	-webkit-transition: transform 1.2s
		cubic-bezier(0.675, 0.005, 0.310, 1.005);
	-moz-transition: transform 1.2s cubic-bezier(0.675, 0.005, 0.310, 1.005);
	-ms-transition: transform 1.2s cubic-bezier(0.675, 0.005, 0.310, 1.005);
	-o-transition: transform 1.2s cubic-bezier(0.675, 0.005, 0.310, 1.005);
}

.section .motion.is_on.sec_img .img_wrap:after {
	transition: transform 1.2s cubic-bezier(0.675, 0.005, 0.310, 1.005);
	-webkit-transition: transform 1.2s
		cubic-bezier(0.675, 0.005, 0.310, 1.005);
	-moz-transition: transform 1.2s cubic-bezier(0.675, 0.005, 0.310, 1.005);
	-ms-transition: transform 1.2s cubic-bezier(0.675, 0.005, 0.310, 1.005);
	-o-transition: transform 1.2s cubic-bezier(0.675, 0.005, 0.310, 1.005);
}

/* Hover Zoom ============================== */
/* mask_slideì™€ ì¤‘ë³µì‚¬ìš© ë¶ˆê°€*/
.section .motion.mask_zoom_in .bx_img {
	transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	-webkit-transform: scale(1);
	transition: transform 0.5s ease-in;
	-webkit-transition: transform 0.5s ease-in;
	-moz-transition: transform 0.5s ease-in;
	-ms-transition: transform 0.5s ease-in;
	-o-transition: transform 0.5s ease-in;
}

.section .motion.mask_zoom_in:hover .bx_img {
	transform: scale(1.05);
	-moz-transform: scale(1.05);
	-ms-transform: scale(1.05);
	-o-transform: scale(1.05);
	-webkit-transform: scale(1.05);
}

/* Slide ============================== */
/* To left */
.section .motion.slide_left {
	opacity: 0;
	transform: translateX(30px);
	-webkit-transform: translateX(30px);
	-moz-transform: translateX(30px);
	-ms-transform: translateX(30px);
	-o-transform: translateX(30px);
}
/* To right */
.section .motion.slide_right {
	opacity: 0;
	transform: translateX(-30px);
	-webkit-transform: translateX(-30px);
	-moz-transform: translateX(-30px);
	-ms-transform: translateX(-30px);
	-o-transform: translateX(-30px);
}
/* To top */
.section .motion.slide_top {
	opacity: 0;
	transform: translateY(30px);
	-webkit-transform: translateY(30px);
	-moz-transform: translateY(30px);
	-ms-transform: translateY(30px);
	-o-transform: translateY(30px);
}
/* To bottom */
.section .motion.slide_bottom {
	opacity: 0;
	transform: translateY(-30px);
	-webkit-transform: translateY(-30px);
	-moz-transform: translateY(-30px);
	-ms-transform: translateY(-30px);
	-o-transform: translateY(-30px);
}
/* ëª¨ì…˜ ê³µí†µ*/
.section .motion.is_on.slide_left, .section .motion.is_on.slide_right {
	opacity: 1;
	transform: translateX(0);
	-webkit-transform: translateX(0);
	-moz-transform: translateX(0);
	-ms-transform: translateX(0);
	-o-transform: translateX(0);
	transition: transform 0.55s 0.2s ease-out, opacity 0.55s 0.2s linear;
	-webkit-transition: transform 0.55s 0.2s ease-out, opacity 0.55s 0.2s
		linear;
	-moz-transition: transform 0.55s 0.2s ease-out, opacity 0.55s 0.2s
		linear;
	-ms-transition: transform 0.55s 0.2s ease-out, opacity 0.55s 0.2s linear;
	-o-transition: transform 0.55s 0.2s ease-out, opacity 0.55s 0.2s linear;
}

.section .motion.is_on.slide_top, .section .motion.is_on.slide_bottom {
	opacity: 1;
	transform: translateY(0);
	-webkit-transform: translateY(0);
	-moz-transform: translateY(0);
	-ms-transform: translateY(0);
	-o-transform: translateY(0);
	transition: transform 0.65s ease-out, opacity 0.65s linear;
	-webkit-transition: transform 0.65s ease-out, opacity 0.65s linear;
	-moz-transition: transform 0.65s ease-out, opacity 0.65s linear;
	-ms-transition: transform 0.65s ease-out, opacity 0.65s linear;
	-o-transition: transform 0.65s ease-out, opacity 0.65s linear;
}
/* delay as apply same effect of next obj*/
.section .motion.slide_left+.slide_left, .section .motion.slide_right+.slide_right,
	.section .motion.slide_top+.slide_top, .section .motion.slide_bottom+.slide_bottom
	{
	transition-delay: 0.25s;
}

/* Fade ============================== */
/* Fade-in */
.section .motion.fade_in {
	opacity: 0;
}

.section .motion.is_on.fade_in {
	opacity: 1;
	transition: opacity 0.65s linear;
	-webkit-transition: opacity 0.65s linear;
	-moz-transition: opacity 0.65s linear;
	-ms-transition: opacity 0.65s linear;
	-o-transition: opacity 0.65s linear;
}
/* Fade-out */
.section .motion.fade_out {
	opacity: 1;
}

.section .motion.is_on.fade_out {
	opacity: 0;
	transition: opacity 0.65s linear;
	-webkit-transition: opacity 0.65s linear;
	-moz-transition: opacity 0.65s linear;
	-ms-transition: opacity 0.65s linear;
	-o-transition: opacity 0.65s linear;
}

/* Zoom ============================== */
/* Zoom in */
.section .motion.zoom_in {
	transform: scale(.8);
	-webkit-transform: scale(.8);
	-moz-transform: scale(.8);
	-ms-transform: scale(.8);
	-o-transform: scale(.8);
}

.section .motion.is_on.zoom_in {
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: transform 0.65s linear;
	-webkit-transition: transform 0.65s linear;
	-moz-transition: transform 0.65s linear;
	-ms-transition: transform 0.65s linear;
	-o-transition: transform 0.65s linear;
}
/* Zoom out */
.section .motion.zoom_out {
	transform: scale(1.12);
	-webkit-transform: scale(1.12);
	-moz-transform: scale(1.12);
	-ms-transform: scale(1.12);
	-o-transform: scale(1.12);
}

.section .motion.is_on.zoom_out {
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: transform 0.65s linear;
	-webkit-transition: transform 0.65s linear;
	-moz-transition: transform 0.65s linear;
	-ms-transition: transform 0.65s linear;
	-o-transition: transform 0.65s linear;
}

/* ê³µí†µ ============================================================ */
.mypage_box {
	position: relative;
	float: left;
	width: 597px;
	min-height: 355px;
}

.my_info {
	position: relative;
	padding: 25px 30px 0 30px;
}

.my_info .profile_img {
	display: none;
	position: absolute;
	left: 30px;
	top: 43px;
}

.my_info .grade_area {
	margin-bottom: 15px;
}

.my_info .grade_area>.txt_rnd {
	margin-left: 2px;
	padding: 0 5px;
}

.my_info .grade_area>.txt_rnd.ty1 {
	margin-left: 6px;
}

.my_info .name {
	margin-bottom: 10px;
	font-size: 18px;
}

.my_info .name strong {
	margin-right: 5px;
}
/* merge20200116 ì´ì „
.my_info .name {margin-bottom:11px; font-size:18px;}
.my_info .name strong {margin-right:10px;}
*/
.my_info .profile_set {
	position: absolute;
	right: 16px;
	top: 28px;
}

.my_info .btn_txt_edit {
	height: 15px;
	line-height: 15px;
	border: 0;
}

.my_info .next_rank {
	position: relative;
	min-height: 25px;
	line-height: 25px;
	padding: 10px 0;
	text-align: center
}

.my_info .next_rank>p {
	display: inline-block;
	color: #000;
	font-size: 18px;
}

.my_info .next_rank>p em {
	margin-left: 4px;
	color: #000;
	font-size: 18px;
	font-family: "Roboto";
	font-weight: 600;
}

.my_info .next_rank>.btn_txt_list {
	position: absolute;
	right: 0;
}
/* merge20200116 ì´ì „
.my_info .next_rank {position:relative;}
.my_info .next_rank > p {display:inline-block; color:#666; font-size:12px;}
.my_info .next_rank > p em {margin-left:4px; color:#000; font-size:13px; font-family:"Roboto"; font-weight:bold;}
.my_info .next_rank > .btn_txt_list {margin-left:12px;}
*/
.mypage_box .btn_wrap {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	border-top: 1px solid #eee;
}

.mypage_box .btn_wrap:after {
	content: '';
	position: absolute;
	left: 50%;
	top: 50%;
	margin-top: -10px;
	width: 1px;
	height: 20px;
	background-color: #ddd;
}

.mypage_box .btn_wrap>* {
	float: left;
	width: 50%;
	height: 60px;
	line-height: 60px;
	font-size: 15px;
	text-align: center;
}

.mypage_box .btn_wrap .txt_img {
	margin-right: 9px;
}

.mypage_box .btn_wrap .txt_img img {
	vertical-align: middle;
}

.mypage_box .btn_wrap .txt_color {
	color: #FF243E;
	text-decoration: underline;
}

.mypage_box .btn_wrap em {
	font-family: "Roboto";
}

.nomember_box {
	position: relative;
	margin: 80px 30px 32px;
	padding: 55px 0 43px;
	text-align: center;
	border-radius: 8px;
	background-color: #f5f5f5;
}

.nomember_box .profile_img {
	display: none;
	position: absolute;
	left: 50%;
	top: -37.5px;
	margin-left: -37.5px;
}

.nomember_box .name {
	margin-top: 8px;
	font-size: 18px;
}

.nomember_box .name strong {
	margin-right: 8px;
}

.nomember_box .name .light {
	color: #666;
}

.nomember_box .tip {
	margin-top: 15px;
	font-size: 13px;
	color: #666;
}

.nomember_box .btn_col3 {
	margin-top: 35px;
}

.profile_img {
	display: block;
	width: 75px;
	height: 75px;
	border-radius: 75px;
	overflow: hidden;
}

.profile_img img {
	width: 100%;
}

.my_theater {
	float: right;
	position: relative;
	margin-right: 33px;
	padding: 24px 0 20px;
	width: 315px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.my_theater>.tit {
	margin-bottom: 15px;
	font-size: 18px;
}

.my_theater .btn_setup {
	position: absolute;
	right: 0;
	top: 26px;
}

.my_theater .theater_box {
	margin-bottom: 20px;
}

.my_theater .area_my_theater {
	margin-top: 38px;
}

.my_theater .area_my_theater .tit_top {
	margin-bottom: 14px;
	font-size: 18px;
}

.my_theater .banner_club {
	margin-top: 20px;
}

.my_theater .banner_club a {
	display: block;
}

.my_theater .banner_club img {
	border-radius: 4px;
}

.my_theater .area_my_theater .bx_notice {
	display: block;
	box-sizing: border-box;
	padding: 22px 12px;
	border-radius: 4px;
	border: 1px solid #D8D8D8;
	text-align: center;
	background-color: #FCFCFC;
}

.my_theater .area_my_theater .bx_notice.ico {
	padding-top: 62px;
	background: #FCFCFC url("../../Content/images/icon/film_34.png")
		no-repeat center 25px;
}

.my_theater .area_my_theater .bx_notice .tit {
	line-height: 1.4;
	font-size: 14px;
	color: #666;
}

.theater_box:after {
	display: block;
	content: '';
	clear: both;
}

.theater_box li {
	width: 100px;
	height: 60px;
	text-align: center;
	border: 1px solid #bbb;
	border-radius: 4px;
	float: left;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	display: table;
}

.theater_box li ~ li {
	margin-left: 7px;
}

.theater_box li.add a {
	display: block;
	padding-top: 38px;
	height: 100%;
	color: #666;
	font-size: 11px;
	font-family: 'Roboto';
	background: url('../images/icon/plus_11.png') no-repeat center 17px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.theater_box li strong {
	display: table-cell;
	color: #000;
	line-height: 1.2;
	font-size: 13px;
	overflow: hidden;
	vertical-align: middle;
}

.theater_box li.del {
	display: block;
	position: relative;
	padding-top: 13px;
}

.theater_box li.del strong {
	display: block;
	line-height: 15px;
}

.theater_box li.del em {
	display: block;
	margin-bottom: 3px;
	font-size: 13px;
	font-weight: bold;
	font-family: 'Roboto';
}

.theater_box li.del .btn_del {
	position: absolute;
	right: 6px;
	top: 6px;
}

/* ì „ì²´ë©”ë‰´ ================================================== */
.menu_all_wrap {
	display: none;
	position: fixed;
	z-index: 100;
	top: 115px;
	left: 50%;
	width: 980px;
	margin-left: -490px;
	padding: 28px 0 0;
	background-color: #FFF;
}

.menu_all_wrap:after {
	content: "";
	display: block;
	clear: both;
}

.menu_all_wrap.active {
	display: block;
}

.menu_all_wrap .group_menu_all {
	float: left;
	width: 620px; /*height:380px;*/
	padding: 0 20px;
}

.menu_all_wrap .group_menu_all table tbody th {
	padding: 0 5px;
}

.menu_all_wrap .group_menu_all table tbody th span {
	display: inline-block;
	border-bottom: 1px solid #707070;
	font-size: 14px;
}

.menu_all_wrap .group_menu_all table tbody td {
	padding: 0 5px 30px;
	font-size: 11px;
	vertical-align: top;
}

.menu_all_wrap .group_menu_all table tbody td .tit {
	display: inline-block;
	border-bottom: 1px solid #707070;
	font-size: 14px;
}

.menu_all_wrap .group_menu_all table tbody td ul {
	margin-top: 8px;
}

.menu_all_wrap .group_menu_all table tbody td ul>li {
	margin: 5px 0;
}

.menu_all_wrap .group_my {
	float: left;
	width: 256px;
	padding: 0 30px 5px;
	border-left: 1px solid rgba(112, 112, 112, .1);
}

.menu_all_wrap .group_my .mypage_box .my_info .area_btn_login {
	text-align: center;
}

.menu_all_wrap .group_my .bx_banner {
	margin: 25px 0 0 -19px;
}

.menu_all_wrap .group_banner {
	clear: both;
}

.menu_all_wrap .group_close {
	position: absolute;
	right: -63px;
	top: 0;
}

.menu_all_wrap .group_close button {
	width: 43px;
	height: 43px;
	border: none;
	text-indent: -9999em;
	background: url("../../Content/images/icon/close_33_wht.png") no-repeat
		center center;
}
/* customizing : .mypage_box */
.menu_all_wrap .group_my .mypage_box {
	float: none;
	width: 100%;
	min-height: inherit;
}

.menu_all_wrap .group_my .mypage_box .my_info {
	padding: 0;
	min-height: 46px;
}

.menu_all_wrap .group_my .mypage_box .my_info .profile_img {
	display: none;
	left: 0;
	top: 0;
	width: 46px;
	height: 46px;
}

.menu_all_wrap .group_my .mypage_box .my_info .grade_area {
	margin: 0 0 0 0;
}

.menu_all_wrap .group_my .mypage_box .my_info .name {
	margin: 5px 0 0 0;
	font-size: 14px;
}

.menu_all_wrap .group_my .mypage_box .my_info .name strong {
	font-size: 16px;
}

.menu_all_wrap .group_my .mypage_box .my_point {
	margin: 25px 0 35px;
}

.menu_all_wrap .group_my .mypage_box .my_point dl:after {
	content: "";
	display: block;
	clear: both;
}

.menu_all_wrap .group_my .mypage_box .my_point dl img {
	margin-bottom: 3px;
	vertical-align: bottom;
}

.menu_all_wrap .group_my .mypage_box .my_point dl dt {
	position: relative;
	float: left;
	line-height: 18px;
	margin-right: 10px;
	margin-left: 10px;
	padding-left: 10px;
	font-size: 12px;
}

.menu_all_wrap .group_my .mypage_box .my_point dl dt:before {
	content: "";
	opacity: .6;
	position: absolute;
	left: 0;
	top: 1px;
	height: 15px;
	border-left: 1px solid #DDD;
}

.menu_all_wrap .group_my .mypage_box .my_point dl dt:first-child {
	margin-left: 0;
	padding-left: 0;
}

.menu_all_wrap .group_my .mypage_box .my_point dl dt:first-child:before
	{
	display: none;
}

.menu_all_wrap .group_my .mypage_box .my_point dl dd {
	float: left;
	line-height: 18px;
	font-size: 14px;
}

.menu_all_wrap .group_my .mypage_box .my_point dl dd strong {
	line-height: 16px;
	font-size: 16px;
}

.menu_all_wrap .group_my .mypage_box .nomember_box {
	line-height: 1.4;
	margin: 10px 0;
	padding: 5px 0 20px;
}

.menu_all_wrap .group_my .my_theater {
	float: none;
	width: 100%;
	padding: 0;
}

.menu_all_wrap .group_my .my_theater>.tit {
	margin-bottom: 8px;
	font-size: 14px;
}

.menu_all_wrap .group_my .my_theater .btn_setup {
	right: 0;
	top: 2px;
}

.menu_all_wrap .group_my .my_theater .theater_box li {
	width: 78px;
}

.menu_all_wrap .group_my .my_theater .theater_box li strong {
	font-size: 12px;
}

.menu_all_wrap .group_my .my_theater .theater_box li.add a {
	padding-top: 38px;
}

/* ë°”ë¡œì˜ˆë§¤ ================================================== */
.menu_reserve_wrap {
	display: none;
	position: absolute;
	z-index: 3;
	left: 0;
	top: 14px;
}

.menu_reserve_wrap.active {
	display: block;
}

.menu_reserve_wrap ul {
	margin-top: 6px;
	padding: 5px 15px;
	border-radius: 4px;
	background-color: #FF1744;
	white-space: nowrap;
}

.menu_reserve_wrap ul:before {
	content: "";
	position: absolute;
	left: 50%;
	top: 1px;
	width: 0px;
	height: 0px;
	margin-left: -2px;
	border-top: none;
	border-bottom: 5px solid red;
	border-right: 4px solid transparent;
	border-left: 4px solid transparent;
}

.menu_reserve_wrap ul:after {
	content: "";
	display: block;
	clear: both;
}

.menu_reserve_wrap ul li {
	display: inline-block;
	margin: 0 3px;
}

.menu_reserve_wrap ul li a {
	display: block;
	opacity: .6;
	color: #FFF;
}

.menu_reserve_wrap ul li a.active, .menu_reserve_wrap ul li a:hover {
	opacity: 1;
}

.sort_list:after {
	content: "";
	display: block;
	clear: both;
}

.sort_list>li {
	float: left;
	margin-left: 20px;
}

.sort_list>li button {
	display: block;
	position: relative;
	color: #666;
	font-size: 15px;
	border: 0;
	padding: 0;
}

.sort_list>li button:before {
	content: "";
	display: inline-block;
	width: 7px;
	height: 7px;
	margin: -2px 8px 0 0;
	background: #ddd;
	border-radius: 50%;
	vertical-align: middle;
}

.sort_list>li.active button:before {
	background: #FF7787;
}

.toggle_wrap {
	overflow: hidden;
	border-radius: 4px;
	border: 1px solid #ddd;
}

.toggle_wrap .toggle_tit {
	position: relative;
	padding: 12px 15px;
	background-color: #FFF;
}

.toggle_wrap .toggle_tit .btn_toggle {
	position: absolute;
	right: 10px;
	top: 6px;
	width: 25px;
	height: 25px;
	border: none;
	text-indent: -9999em;
	background: url("../../Content/images/icon/arr_dw_9.png") no-repeat
		center center;
}

.toggle_wrap .toggle_tit .btn_toggle.active {
	background-image: url("../../Content/images/icon/arr_up_9.png")
}

.toggle_wrap .toggle_tit input+label {
	width: auto;
}

.toggle_wrap .toggle_con {
	display: none;
	padding: 12px 15px;
	background-color: #f8f8f8;
}

.toggle_wrap .toggle_con.active {
	display: block;
}

.toggle_wrap.no .toggle_con {
	display: block;
}

.toggle_wrap.couplechk {
	margin: 10px 0 20px 0;
	border: 0;
	border-top: 1px solid #ddd;
}

.toggle_wrap.couplechk .toggle_tit {
	padding: 12px 15px 12px 0px;
	background-color: transparent;
}

.btn_add12 {
	width: 12px;
	height: 12px;
	border: none;
	background: transparent url("../../Content/images/icon/plus_12.png")
		no-repeat 0 0;
}

.btn_add15 {
	width: 15px;
	height: 15px;
	border: none;
	background: transparent url("../../Content/images/icon/plus_15.png")
		no-repeat 0 0;
}

.btn_txt_certificate {
	display: inline-block;
	position: relative;
	height: 12px;
	line-height: 12px;
	padding-left: 18px;
	padding-right: 8px;
	font-size: 11px;
	background: url("../../Content/images/icon/arr_rg_5.png") no-repeat
		right center;
}

.btn_txt_password {
	display: inline-block;
	position: relative;
	height: 15px;
	line-height: 15px;
	padding-left: 18px;
	padding-right: 8px;
	font-size: 11px;
	background: url("../../Content/images/icon/arr_rg_5.png") no-repeat
		right center;
}

.btn_txt_password::after {
	content: "";
	display: block;
	position: absolute;
	left: 0;
	top: 0;
	width: 15px;
	height: 15px;
	background: url("../../Content/images/icon/password.png") no-repeat;
}

.btn_txt_cancle {
	display: inline-block;
	padding-right: 18px;
	font-size: 11px;
	background: url("../../Content/images/icon/del_9.png") no-repeat right
		center;
}

.tbl_write th {
	height: 25px;
	padding: 15px 0;
	font-size: 15px;
	text-align: left;
	vertical-align: top;
}

.tbl_write td {
	height: 45px;
	padding: 5px 0;
	font-size: 15px;
}

.tbl_write td .txt_tbl_notice {
	display: block;
	padding: 6px 0;
	font-size: 11px;
	text-align: left;
}

.tbl_write td .txt_tbl_notice.rg {
	text-align: right;
}

/* input ìœ í˜• */
.inp_lab_wrap {
	margin-top: 20px;
}

label.bx_inp_lab {
	display: block;
	position: relative;
	margin-bottom: 20px;
}

label.bx_inp_lab .tit {
	position: absolute;
	left: 10px;
	top: 0;
	line-height: 45px;
	font-size: 13px;
	color: #666;
	white-space: nowrap;
}

label.bx_inp_lab input[type="text"], label.bx_inp_lab input[type="password"]
	{
	width: 100%;
	padding-left: 110px;
	text-align: right;
}

.txt_bul {
	margin: 0 0 5px 8px;
	text-indent: -8px;
	font-size: 11px;
}

.txt_bul:before {
	content: "";
	display: inline-block;
	width: 1px;
	height: 1px;
	margin: 5px 5px 0 0;
	border-radius: 50%;
	vertical-align: top;
	background-color: #666;
}

.txt_bul2 {
	margin: 0 0 5px 8px;
	text-indent: -8px;
	font-size: 11px;
}

.txt_bul2:before {
	content: "â€»";
	display: inline-block;
	margin: 0 5px 0 0;
	vertical-align: middle;
}

.txt_para {
	line-height: 1.4;
	text-align: center;
}

.txt_para.ty2 {
	font-size: 16px;
}

/* ë²„íŠ¼ ë ˆì´ì•„ì›ƒ : ë³¸ë¬¸í•˜ë‹¨ì „ìš© (ë³¸ë¬¸, íŒì—…) */
.btn_btm_wrap {
	margin: 60px 0;
	text-align: center;
}

.btn_btm_wrap:after {
	content: "";
	display: block;
	clear: both;
}

.btn_btm_wrap.non_mg {
	margin: 0 !important;
}

.btn_btm_wrap a, .btn_btm_wrap button {
	margin: 0 3px;
	min-width: 160px; /*padding:0 !important;*/
}

.btn_btm_wrap a.w100, .btn_btm_wrap button.w100 {
	width: 100%;
	margin: 0;
}

.btn_btm_wrap select {
	height: 49px;
	line-height: 49px;
	vertical-align: baseline;
}

.btn_btm_wrap.ty1 a, .btn_btm_wrap.ty1 button {
	width: 100%;
	margin: 0;
	padding: 0;
}

.list_bdr_box+.btn_btm_wrap {
	margin-top: 30px;
}

.btn_btm_wrap.ty2 {
	margin-right: -1%;
	margin-left: -1%;
}

.btn_btm_wrap.ty2 a, .btn_btm_wrap.ty2 button {
	float: left;
	width: 48%;
	padding: 0;
	margin: 0 1%
}

.btn_btm_wrap.ty3 {
	margin-right: -1%;
	margin-left: -1%;
}

.btn_btm_wrap.ty3 a, .btn_btm_wrap.ty3 button {
	float: left;
	width: 31.33%;
	padding: 0;
	margin: 0 1%
}

.btn_btm_wrap.ty4 {
	margin-right: -1%;
	margin-left: -1%;
}

.btn_btm_wrap.ty4 a, .btn_btm_wrap.ty4 button {
	float: left;
	width: 23%;
	padding: 0;
	margin: 0 1%
}

/* ì´í•©ê³„ê¸ˆì•¡ */
dl.total_price:after {
	content: "";
	display: block;
	clear: both;
}

dl.total_price dt {
	float: left;
	padding: 6px 12px 0 0;
	font-size: 15px;
}

dl.total_price dd {
	float: left;
	font-size: 15px;
}

dl.total_price dd strong {
	font-family: 'Roboto';
	font-size: 25px;
	font-weight: bold;
}

/* tab ================================================== */
/* tab_wrap ========== */
.tab_wrap {
	position: relative;
}

.tab_wrap>li>.tab_tit {
	position: absolute;
	top: 0;
}

.tab_wrap>li>.tab_tit {
	border: none;
}

.tab_wrap>li>.tab_tit span {
	vertical-align: top;
	white-space: nowrap;
}

.tab_wrap>li>.tab_tit span+.txt_new {
	margin-left: 7px;
}

.tab_wrap>li>.tab_con {
	overflow: hidden;
	position: absolute;
	width: 100%;
	height: 0;
}

.tab_wrap>li>.tab_con.ty2 {
	margin-top: -8px;
}

.tab_wrap>li>.tab_con.ty3 {
	margin-top: 18px;
}

.tab_wrap>li>.tab_con.ty4 {
	margin-top: 35px;
}

.tab_wrap>li>.tab_con.ty5 {
	margin-top: -30px;
}

.tab_wrap>li.active>.tab_con {
	overflow: inherit;
	position: relative;
	width: auto;
	height: auto;
}
/* outer */
.tab_wrap.outer {
	padding-top: 80px;
}

.tab_wrap.outer>li>.tab_tit {
	height: 50px;
	line-height: 50px;
	border-bottom: 1px solid #CCC;
	font-size: 15px;
	color: #7F7F7F;
}

.tab_wrap.outer>li>.tab_tit.ty2 {
	line-height: 1.3;
}

.tab_wrap.outer>li.active>.tab_tit {
	border-bottom: 2px solid #111;
	color: #000;
}
/* outer mid */
.tab_wrap.outer.mid>li>.tab_tit {
	font-size: 15px;
}
/* outer small */
.tab_wrap.outer.sml>li>.tab_tit {
	font-size: 13px;
}
/* inner */
.tab_wrap.inner {
	margin-top: -30px;
	padding-top: 30px;
}

.tab_wrap.inner>li>.tab_tit {
	height: 30px;
	line-height: 30px;
	margin-right: 10px;
	padding: 0 10px;
	font-size: 13px;
	color: #7F7F7F;
}

.tab_wrap.inner>li.active>.tab_tit {
	margin-right: 20px;
	color: #000;
}
/* lft */
.tab_wrap.lft>li>.tab_tit, .tab_wrap.rgt>li>.tab_tit {
	border-bottom: none;
}

.tab_wrap.lft>li.active>.tab_tit, .tab_wrap.rgt>li.active>.tab_tit {
	border-bottom: none;
}

.tab_wrap.lft .tab_top_rgt:after, .tab_wrap.rgt .tab_top_rgt:after {
	content: "";
	display: block;
	clear: both;
}

.tab_wrap.lft .tab_top_rgt>.inner, .tab_wrap.rgt .tab_top_rgt>.inner {
	float: right;
	margin-top: -60px;
}
/* lft/bdr */
.tab_wrap.lft.bdr>li.active .tab_con {
	border-top: 1px solid #DDD;
}

.tab_wrap.lft.bdr .tab_wrap.inner>li>.tab_tit {
	margin-top: -2px;
}

.tab_wrap.lft.bdr .tab_wrap.inner>li>.tab_con {
	border-top: none;
}
/* ty2 */
.tab_wrap.ty2>li>.tab_tit {
	border-bottom: none;
	color: #FFF;
	background-color: #000;
}

.tab_wrap.ty2>li.active>.tab_tit {
	border-bottom: none;
	color: #FFF;
	background-color: #FF243E;
}
/* sort */
.tab_wrap.sort {
	padding-top: 34px;
}

.tab_wrap.sort>li>.tab_tit {
	height: 30px;
	line-height: 30px;
}

.tab_wrap.sort>li>.tab_tit:before {
	content: "";
	display: inline-block;
	width: 7px;
	height: 7px;
	margin: -2px 6px 0 0;
	border-radius: 50%;
	vertical-align: middle;
	background-color: #DDD;
}

.tab_wrap.sort>li.active>.tab_tit:before {
	background-color: #FF7787;
}
/* ì´ë²¤íŠ¸ í…œí”Œë¦¿_ëŒ“ê¸€í˜• */
.tab_wrap.outer.rgt.sml>li>.tab_tit {
	top: 30px;
	z-index: 2;
}

.tab_wrap.outer.rgt.sml>li>.lst_wrap {
	z-index: 1;
}

/* tab_wrap_lnk ========== */
.tab_wrap_lnk {
	position: relative;
	padding-top: 50px;
}

.tab_wrap_lnk>li>a {
	display: block;
	position: absolute;
	top: 0;
	height: 50px;
	line-height: 50px;
	box-sizing: border-box;
	border-bottom: 1px solid #CCC;
	font-size: 18px;
	color: #7F7F7F;
	text-align: center;
}

.tab_wrap_lnk>li>a>span {
	vertical-align: top;
	white-space: nowrap;
}

.tab_wrap_lnk>li>ul>li>a {
	display: block;
	overflow: hidden;
	position: absolute;
	top: 50px;
	height: 0;
	padding: 0 10px;
}

.tab_wrap_lnk>li>ul>li>a>span {
	white-space: nowrap;
}

.tab_wrap_lnk>li.active>a, .tab_wrap_lnk>li.ov>a {
	border-bottom: 2px solid #111;
	color: #000;
}

.tab_wrap_lnk>li.active>ul>li>a, .tab_wrap_lnk>li.ov>ul>li>a {
	overflow: inherit;
	width: auto;
	height: 30px;
	line-height: 30px;
	font-size: 13px;
	color: #7F7F7F;
}

.tab_wrap_lnk>li>ul>li.active>a, .tab_wrap_lnk>li>ul>li:hover>a {
	margin-right: 20px;
	color: #000;
}

.tab_wrap_lnk.fixed {
	position: fixed;
	z-index: 90;
	top: 44px;
	width: 980px;
	background-color: #FFF;
}

/* tab_wrap2 ========== */
/* tab_tit */
.tab_wrap2 .tab_tit {
	position: relative;
	padding: 0 14px;
	border-bottom: 1px solid #CCC;
}

.tab_wrap2 .tab_tit>ul:after {
	content: "";
	display: block;
	clear: both;
}

.tab_wrap2 .tab_tit>ul>li {
	float: left;
	text-align: center;
}

.tab_wrap2 .tab_tit>ul>li>button {
	border: none;
	background: none;
}

.tab_wrap2 .tab_tit>ul>li>a, .tab_wrap2 .tab_tit>ul>li>button,
	.tab_wrap2 .tab_tit>ul>li>strong {
	display: block;
	position: relative;
	bottom: 0;
	line-height: 1.0;
	padding: 15px 0 10px;
	font-size: 15px;
	color: #666;
}

.tab_wrap2 .tab_tit>ul>li>a.active, .tab_wrap2 .tab_tit>ul>li>button.active,
	.tab_wrap2 .tab_tit>ul>li>strong {
	margin-bottom: -1px;
	border-bottom: 2px solid #000;
	color: #000;
}

.tab_wrap2 .tab_tit.case2>ul>li {
	width: 50%;
}

.tab_wrap2 .tab_tit.case3>ul>li {
	width: 33.3%;
}

.tab_wrap2 .tab_tit.case3>ul>li:first-child {
	width: 33.4%;
}

.tab_wrap2 .tab_tit.case4>ul>li {
	width: 25%;
}

.tab_wrap2 .tab_tit.case5>ul>li {
	width: 20%;
}

.tab_wrap2 .tab_tit.case6>ul>li {
	width: 17%;
}

.tab_wrap2 .tab_tit.case6>ul>li:first-child {
	width: 15%;
}
/* tab_tit : lft */
.tab_wrap2 .tab_tit.lft {
	padding: 0;
	border-bottom: 0;
}

.tab_wrap2 .tab_tit.lft>ul>li {
	margin-right: 8px;
}

.tab_wrap2 .tab_tit.lft>ul>li>a, .tab_wrap2 .tab_tit.lft>ul>li>button,
	.tab_wrap2 .tab_tit.lft>ul>li>strong {
	padding: 10px 2px 5px;
	font-size: 13px;
}

.tab_wrap2 .tab_tit.lft>ul>li>a.active, .tab_wrap2 .tab_tit.lft>ul>li>button.active,
	.tab_wrap2 .tab_tit.lft>ul>li>strong {
	margin-bottom: 0;
	border-bottom: 0;
}
/* tab_con */
.tab_wrap2 .tab_con {
	display: none;
	margin-top: 30px;
}

.tab_wrap2 .tab_con.ty2 {
	margin-top: 22px;
}

.tab_wrap2 .tab_con.ty3 {
	margin-top: 48px;
}

.tab_wrap2 .tab_con.ty4 {
	margin-top: 64px;
}

.tab_wrap2 .tab_con.ty5 {
	margin-top: 0;
}

.tab_wrap2 .tab_con.active {
	display: block;
}

/* tab3 */
.tab_wrap3 {
	margin: 10px 0 10px;
	border-radius: 4px;
	border: 1px solid #DDD;
	background-color: #FFF;
}

.tab_wrap3 .tab_tit {
	margin-bottom: -1px;
}

.tab_wrap3 .tab_tit ul {
	display: flex;
}

.tab_wrap3 .tab_tit li {
	flex: 2;
}

.tab_wrap3 .tab_tit li:first-child button {
	border-radius: 4px 0 0 0;
	border-left: none;
}

.tab_wrap3 .tab_tit li:last-child button {
	border-radius: 0 4px 0 0;
}

.tab_wrap3 .tab_tit li button {
	display: block;
	position: relative;
	width: 100%;
	height: 40px;
	line-height: 40px;
	border: none;
	border-bottom: 1px solid #DDD;
	border-left: 1px solid #DDD;
	font-family: 'Roboto';
	font-size: 14px;
	color: #666;
	background-color: #F8F8F8;
}

.tab_wrap3 .tab_tit li button.active {
	border-bottom-width: 0;
	color: #000;
	background-color: #FFF;
}

.tab_wrap3 .tab_tit li button .point {
	color: #2AA3FE;
}

.tab_wrap3 .tab_tit.case1 li button.active {
	border-bottom-width: 1px;
}

.tab_wrap3 .tab_con {
	display: none;
	margin-top: 20px;
}

.tab_wrap3 .tab_con.active {
	display: block;
}
/* ì´ˆê¸°í™” */
.tab_wrap3.reset {
	overflow: hidden;
}

.tab_wrap3.reset .tab_tit li button {
	border-bottom-width: 0;
}

.tab_wrap3.reset.active .tab_tit li button {
	color: #000;
	background-color: #FFF;
}

.tab_wrap3.reset.disabled .tab_tit li button {
	color: #666;
	background-color: #F8F8F8;
}
/* ì´ˆê¸°í™” + í™œì„± */
.tab_wrap3.reset.selected {
	border: 1px solid #000;
}

.tab_wrap3.reset.selected .tab_tit li button {
	color: #000;
	background-color: #FFF;
}

/* ë³¸ë¬¸í•˜ë‹¨ ê³µí†µ ë°°ë„ˆ ================================================== */
/* ì˜ˆë§¤ */
.banner_reserve_wrap a {
	display: block;
}

.banner_reserve_wrap a img {
	width: 100%;
}

.banner_reserve_wrap .bx_lft, .banner_reserve_wrap .bx_rgt {
	position: absolute;
	z-index: 10;
	top: 220px;
	width: 160px;
	height: 300px;
}

.banner_reserve_wrap .bx_lft {
	left: 50%;
	margin-left: -820px;
}

.banner_reserve_wrap .bx_rgt {
	right: 50%;
	margin-right: -820px;
}
/* ì‚¬ì´ë“œ */
.banner_side_wrap {
	position: absolute;
	top: 220px;
	left: 50%;
	margin-left: -660px;
	z-index: 10;
}

.banner_side_wrap .banner_01.fixed {
	position: fixed;
}

.banner_side_wrap .banner_01 a {
	display: block;
	overflow: hidden;
	width: 145px;
	height: 145px;
}

.banner_side_wrap .banner_01 a img {
	width: 100%;
	height: 100%;
	border-radius: 50%;
}

.banner_side_wrap .btn_close {
	position: absolute;
	right: 0;
	top: 0;
	width: 13px;
	height: 13px;
	border: 0;
	text-indent: -9999em;
	background: transparent
		url("../../Content/images/icon/close_13_gry.png") no-repeat 0 0;
}
/* í•˜ë‹¨ */
.banner_wrap {
	padding-top: 70px;
	text-align: center;
}

.banner_wrap .banner_01 {
	margin-bottom: 50px;
}

.banner_wrap a {
	display: block;
	width: 980px;
	margin: 0 auto;
}

/* íŒì—… ================================================== */
.layer_wrap {
	overflow: hidden;
	position: absolute;
	z-index: -1;
	width: 0px;
	height: 0px;
	border: none;
}

.layer_wrap.active {
	display: block;
	position: fixed;
	z-index: 100;
	height: auto;
	border-radius: 10px;
	background-color: #FFF;
}
	/* í†µí•©ê²°ì œ ê°œë°œ ë°°í¬í•  ë•Œ í™ì„±ì¼C .layer_wrap.activeì˜ z-index: 99 ë¡œ ë³€ê²½í•´ì•¼í•¨ 2020.10.29 */
.layer_wrap .layer_header {
	position: relative;
	height: 54px;
	line-height: 58px;
	border-bottom: 1px solid #CCC;
	color: #FFF;
	text-align: center;
}

.layer_wrap .layer_header .tit {
	font-size: 18px;
	color: #000;
}

.layer_wrap .layer_header strong {
	font-size: 18px;
}

.layer_wrap .layer_header .btn_close {
	position: absolute; /*right:20px; top:18px;*/
	right: 15px;
	top: 15px;
	width: 19px;
	height: 19px;
	border: none;
	text-indent: -9999em;
	/*background:transparent url("../../Content/images/icon/close_19.png")no-repeat 0 0;*/
	background: transparent url("../../Content/images/icon/close_19.png")
		no-repeat 0 0;
	outline-color: black
} /* 2020.01.16 í™•ì¸ : íŒì—…ë‹«ê¸° X ë²„íŠ¼ ìœ„ì¹˜ ì¡°ì • */
.layer_wrap .layer_header .btn_close.wht, .layer_wrap .layer_contents .btn_close.wht
	{
	position: absolute;
	right: 15px;
	top: 15px;
	width: 19px;
	height: 19px;
	border: none;
	text-indent: -9999em;
	background: transparent
		url("../../Content/images/icon/close_19_wht.png") no-repeat 0 0;
} /* 2020.01.23 */
.layer_wrap .layer_contents {
	padding: 30px 25px;
}

.layer_wrap .layer_contents.overflowtype1 {
	overflow: hidden;
	overflow-y: scroll;
	height: 600px
}

.layer_wrap .layer_contents.pad0 {
	padding: 0
}

.layer_wrap .layer_footer {
	clear: both;
	border-top: 1px solid #DDD;
	text-align: center;
	background-color: #F8F8F8;
}

.layer_wrap .layer_footer ul:after {
	content: "";
	display: block;
	clear: both;
}

.layer_wrap .layer_footer ul li {
	position: relative;
	float: left;
	width: 50%;
}

.layer_wrap .layer_footer ul li:before {
	content: "";
	position: absolute;
	left: 0;
	top: 50%;
	height: 25px;
	margin-top: -12px;
	border-left: 1px solid #DDD;
}

.layer_wrap .layer_footer ul li:first-child:before {
	display: none;
}

.layer_wrap .layer_footer ul li a, .layer_wrap .layer_footer ul li button
	{
	display: block;
	width: 100%;
	height: 50px;
	line-height: 50px;
	border: none;
	font-size: 16px;
	background-color: #F8F8F8;
}

.layer_wrap .layer_footer.ty2 ul li {
	width: 100%;
}

.layer_wrap .tit_type2 {
	font-size: 13px;
	padding-bottom: 10px;
	line-height: 1.5;
}

.contgapline1 {
	display: block;
	height: 1px;
	margin: 15px 0;
	background-color: #EEE;
}
/* ty2 : header íˆ¬ëª… */
.layer_wrap.ty2 .layer_header {
	height: 0;
	line-height: 0;
	border-bottom: none;
}
/* ty3 : ë³¸ë¬¸ ì—¬ë°± 0 */
.layer_wrap.ty3 .layer_contents {
	padding: 0;
}
/* type4 : íŒì—… header ì»¬ëŸ¬ì ìš© */
.layer_wrap.type4 .layer_header {
	border-bottom: 0;
	background-color: #F5F5F5;
}

.layer_wrap.type4 .layer_contents {
	padding: 30px 0;
}

.layer_wrap.type4 .tab_wrap.outer {
	padding: 80px 25px 30px 25px;
}
/* scroll : ì „ì²´ */
.layer_wrap .inner_scroll {
	overflow-y: auto;
	height: 100%;
}
/* scroll : ë³¸ë¬¸ */
.layer_wrap .layer_contents.scroll {
	overflow-y: scroll;
	padding-bottom: 0;
}

.layer_wrap .layer_contents.scroll:after {
	content: '';
	display: block;
	width: 100%;
	height: 30px;
}
/* customizing ========== */
.layer_wrap .btn_btm_wrap {
	margin: 30px 0 20px;
}

.layer_wrap .btn_btm_wrap.ty2 {
	margin: 30px -1% 0;
}

.layer_wrap .btn_btm_wrap.type4 {
	margin: 25px 0;
}

.layer_wrap input[type="password"], .layer_wrap input[type="text"],
	.layer_wrap input[type="password"] {
	height: 45px;
	line-height: 45px;
}

.layer_wrap .notice_box {
	margin: 30px -25px;
	padding: 30px;
	border-radius: 0;
	border: none;
	background: #EEE;
}

.layer_wrap .notice_box:last-child {
	margin-bottom: -30px;
}

.layer_wrap .notice_box .title {
	font-size: 15px;
}

.layer_wrap .notice_box .title+.list_txt {
	margin-top: 9px;
}

.layer_wrap .notice_box .list_txt {
	margin-left: 0px;
}

.layer_wrap .noti_box.gapnone .tit {
	display: block;
	font-size: 14px;
	padding-bottom: 10px;
} /* 2020.01.22 */
/* ë§ˆì´íŽ˜ì´ì§€ ì „ìš© ========== */
.layer_wrap.layer_mypage {
	width: 405px;
}

.layer_wrap.layer_mypage .layer_header {
	border-bottom: none;
}

.layer_wrap.layer_mypage .layer_header .tit {
	color: #FFF;
}

.layer_wrap.layer_mypage .layer_header .btn_close {
	background-image: url("../../Content/images/icon/close_19_wht.png");
}

.layer_wrap.layer_mypage .layer_contents {
	min-height: 184px;
}

.layer_wrap.layer_mypage .layer_contents:before {
	content: "";
	position: absolute;
	z-index: -1;
	left: 0;
	right: 0;
	top: 0; /*height:184px;*/
	height: 54px;
	background-color: #FF7787;
}
/* ì˜ˆë§¤ ì „ìš© ========== */
.layer_wrap.layer_reserve {
	box-sizing: border-box;
	border-radius: 0;
	border: 1px solid #666;
	background-color: #FFF;
}

.layer_wrap.layer_reserve .layer_header {
	border-bottom: 1px solid #666;
	color: #FFF;
	background-color: #666;
}

.layer_wrap.layer_reserve .layer_header .tit {
	color: #FFF;
}

.layer_wrap.layer_reserve .layer_header strong {
	font-size: 18px;
}

.layer_wrap.layer_reserve .layer_header .btn_close {
	background-image: url("../../Content/images/icon/close_19_wht.png");
}

.layer_wrap.layer_reserve .layer_contents {
	position: relative;
}

/* popup : size ========== */
/* ì˜ˆë§¤í•˜ê¸° : 1ë‹¨ê³„ */
.layer_wrap.active.layer_alert {
	width: 380px;
}

/* ê³µìœ í•˜ê¸° */
.layer_wrap.active.layer_share {
	width: 450px;
}

/* ê´€ëžŒì˜í™”ë“±ë¡ */
.layer_wrap.active.layer_reg_movie {
	width: 530px;
}

/* ì˜í™”í™ˆ : ì‹œë†‰ì‹œìŠ¤ */
.layer_wrap.active.layer_movie_synopsis {
	width: 500px;
}

/* ì˜í™”ìƒì„¸ : ì˜í™”ë“±ê¸‰ì•ˆë‚´ */
.layer_wrap.active.layer_mobie_grade {
	width: 600px;
}

/* ì˜í™”ìƒì„¸ : ê´€ëžŒí‰ìž‘ì„± */
.layer_wrap.active.layer_reg_review {
	width: 530px;
}

/* ì˜í™”ìƒì„¸ : íŠ¸ë ˆì¼ëŸ¬ */
.layer_wrap.active.layer_movie_trailer {
	width: 970px;
}

/* ì˜í™”ìƒì„¸ : ì¸ë¬¼ì •ë³´ */
.layer_wrap.active.layer_infor_people {
	width: 580px;
	height: 620px;
}

/* ë¹„íšŒì›ë¡œê·¸ì¸ */
.layer_wrap.active.layer_login_nonmem {
	width: 420px;
}

/* ì¿ í°ë“±ë¡ */
.layer_wrap.active.layer_coupon_reg {
	width: 500px;
}

/* ì¿ í°ì‚­ì œ */
.layer_wrap.active.layer_coupon_del {
	width: 400px;
}

/* ì¿ í°ì„ ë¬¼í•˜ê¸° */
.layer_wrap.active.layer_coupon_gift {
	width: 700px;
}

/* ì‚¬ìš©ê°€ëŠ¥ì˜í™”ê´€ */
.layer_wrap.active.layer_useable_cinema {
	width: 700px;
}

/* íœ´ëŒ€í°ìœ¼ë¡œë°”ë¡œí‹°ì¼“ë°›ê¸° */
.layer_wrap.active.layer_ticket_msg {
	width: 430px;
}

/* ë§ˆì´íŽ˜ì´ì§€ : MYì˜í™”ê´€ë“±ë¡ */
.layer_wrap.active.layer_reg_my_cinema {
	width: 700px;
}

/* ë§ˆì´íŽ˜ì´ì§€ : VIPì¡´ : ì ë¦½ë‚´ì—­ */
.layer_wrap.active.layer_saving_breakdown {
	width: 440px;
}

.layer_wrap.layer_saving_breakdown .layer_contents.scroll {
	height: 600px;
}

/*  ë§ˆì´íŽ˜ì´ì§€ : VIPì¡´ : ê¸°ë…ì¼ë“±ë¡ */
.layer_wrap.active.layer_reg_aniversary {
	width: 420px;
} /* 2020.01.22 */

/*  ë§ˆì´íŽ˜ì´ì§€ : VIPì¡´ : VIPì¿ í°ë‹¤ìš´ë¡œë“œ */
.layer_wrap.active.layer_vip_coupon_down {
	width: 400px;
}

/* ì‚¬ìš©ê°€ëŠ¥ì˜í™”ê´€ */
.layer_wrap.active.layer_select_cinema {
	width: 360px;
}

/* ì‚¬ìš©ê°€ëŠ¥ì˜í™”ê´€ : ìž”ì—¬ ìˆ˜ëŸ‰ í™•ì¸ */
.layer_wrap.active.layer_select_cinema.goodsreceipt {
	width: 380px;
}

/* ì˜í™”ê´€ : ìœ„ì¹˜ì•ˆë‚´ : ëŒ€ì¤‘êµí†µ */
.layer_wrap.active.layer_location_public {
	width: 700px;
}

/* ì˜í™”ê´€ : ìœ„ì¹˜ì•ˆë‚´ : ìžê°€ìš© */
.layer_wrap.active.layer_location_car {
	width: 500px;
}

/* ì˜í™”ê´€ : ìœ„ì¹˜ì•ˆë‚´ : ì§€ë„ */
.layer_wrap.active.layer_location_map {
	width: 500px;
}

/* ì´ë²¤íŠ¸ : ì •ë³´ì œê³µë™ì˜ */
.layer_wrap.active.layer_event_term_aree {
	width: 700px;
}

/* ì´ë²¤íŠ¸ : alert */
.layer_wrap.active.layer_event_alert01 {
	width: 400px;
}

/* ì´ë²¤íŠ¸ : íœ´ëŒ€í°ìœ¼ë¡œë°”ë¡œí‹°ì¼“ë°›ê¸° */
.layer_wrap.active.layer_get_mobticket {
	width: 390px;
}

/* ì´ë²¤íŠ¸ : ê°¤ëŸ¬ë¦¬í˜•(ë“±ë¡,ìˆ˜ì •,ì‚­ì œ) */
.layer_wrap.active.layer_gallary {
	width: 700px;
}

/* ê³µí†µ : alert ë¬¸êµ¬ */
.bx_alert1 {
	padding: 30px 0;
}

/* í”„ë¡œí•„íŽ¸ì§‘ */
.layer_wrap.active.layer_mypage .profile_thm {
	display: none;
	padding-top: 18px;
	text-align: center;
}

.layer_wrap.active.layer_mypage .profile_thm .thm {
	overflow: hidden;
	display: block;
	width: 140px;
	height: 140px;
	margin: 0 auto 24px;
	border-radius: 140px;
}

.layer_wrap.active.layer_mypage .profile_thm .thm img {
	width: 100%;
	border-radius: 140px;
}

.layer_wrap.active.layer_mypage .profile_thm .btn_col3 {
	position: relative;
}

.layer_wrap.active.layer_mypage .profile_thm .btn_col3 input[type="file"]
	{
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	cursor: pointer;
	border-radius: 52px;
	opacity: 0;
}

.layer_wrap.active.layer_mypage .reg_nick {
	position: relative; /*margin-top:28px;*/
	margin-top: 0;
}

.layer_wrap.active.layer_mypage .reg_nick label span {
	display: block;
	margin-bottom: 10px;
	font-size: 16px;
}

.layer_wrap.active.layer_mypage .reg_nick label input {
	width: 100%;
	height: 48px;
}

.layer_wrap.active.layer_mypage .reg_nick .bx_del {
	display: block;
}

.layer_wrap.active.layer_mypage .reg_nick .bx_del input {
	width: 100%;
}

.layer_wrap.active.layer_mypage .reg_nick .bx_del button {
	top: 40px;
	right: 10px;
}

.layer_wrap.active.layer_mypage .reg_nick .cnt {
	opacity: .4;
	position: absolute;
	right: 0;
	top: 3px;
	font-family: 'Roboto';
	font-size: 13px;
}

#layerEditProfile .layer_contents {
	min-height: auto;
}

#layerEditProfile .layer_contents .btn_btm_wrap {
	margin-bottom: 0;
}

/* ê³µìœ í•˜ê¸° */
.list_share:after {
	content: "";
	display: block;
	clear: both;
}

.list_share li {
	float: left;
	margin-left: 32px;
}

.list_share li:first-child {
	margin-left: 0;
}

.list_share li a {
	display: block;
	height: 35px;
	line-height: 35px;
	padding-left: 45px;
	font-size: 15px;
	white-space: nowrap;
	background-repeat: no-repeat;
	background-position: 0 center;
}

.list_share li a.btn_share_fb {
	background-image: url("../../Content/images/icon/share_facebook.png");
}

.list_share li a.btn_share_ks {
	background-image: url("../../Content/images/icon/share_kstory.png");
}

.list_share li a.btn_share_kt {
	background-image: url("../../Content/images/icon/share_ktalk.png");
}

.bx_share_copy {
	margin: 30px 0 20px;
}

.bx_share_copy label input {
	width: 300px;
}

/* ë¦¬ë·°ìž‘ì„± */
.review_write .tit_movie {
	display: block;
	margin-bottom: 10px;
	font-size: 22px;
	text-align: center;
}

.review_write .bx_score {
	padding: 10px 0 15px;
	color: #000;
	text-align: center;
}

.review_write .bx_score .tit {
	margin-bottom: 10px;
	font-size: 17px;
}

.review_write .bx_score .tit strong {
	margin-right: 5px;
	font-size: 38px;
}

.review_write .star_rate {
	margin: 10px 0;
}

.review_write textarea {
	height: 130px;
}

.review_write .byte {
	display: block;
	margin-top: 8px;
	font-size: 15px;
	color: #888;
	text-align: right;
}

/* ê´€ëžŒì˜í™”ë“±ë¡ */
.group_reg_rdo {
	padding-left: 24px;
}

.group_reg_rdo ul {
	margin: 10px 0;
}

.group_reg_rdo ul li {
	position: relative;
	margin-top: 10px;
}

.group_reg_rdo ul li:first-child {
	margin-top: 0;
}

.group_reg_rdo ul li label.bx_inp_lab {
	display: block;
	margin-bottom: 0;
}

.group_reg_rdo ul li input[type="radio"]+label:before {
	position: absolute;
	top: 14px;
	left: -24px;
}

.group_reg_rdo ul li label.bx_inp_lab .tit {
	left: 15px;
}

.group_reg_rdo ul li label.bx_inp_lab input[type="text"], .group_reg_rdo ul li label.bx_inp_lab input[type="password"]
	{
	width: 100%;
}

/* ì¸ì¦ë²ˆí˜¸ë“±ë¡ */
.reg_certificate input[type="text"], .reg_certificate input[type="password"]
	{
	width: 100%;
	margin: 10px 0 50px;
}

.reg_certificate .list_txt {
	margin-bottom: 40px;
}

/* íœ´ëŒ€í°ìœ¼ë¡œë°”ë¡œí‹°ì¼“ë°›ê¸° */
.group_ticket_msg .list_txt {
	margin-bottom: 20px;
}

/* ë ˆì´ì–´íŒì—… :ì˜í™”ê´€ìƒì„¸/ì˜í™”ê´€ì˜¤ì‹œëŠ”ê¸¸ */
.article_location.ty_car {
	padding-left: 48px;
}

.article_location.ty_fee {
	padding-left: 48px;
}

.article_location.ty_subway {
	padding-left: 48px;
}

.article_location.ty_bus {
	padding-left: 48px;
}

.article_location .tit_article {
	position: relative;
	padding: 5px 0;
	font-size: 15px
}

.article_location .tit_article:before {
	content: "";
	position: absolute;
	left: -48px;
	top: 0;
	width: 34px;
	height: 34px;
	background-repeat: no-repeat;
	background-position: center center;
}

.article_location.ty_car .tit_article:before {
	background-image: url("../images/icon/location_car.png");
}

.article_location.ty_fee .tit_article:before {
	background-image: url("../images/icon/location_fee.png");
}

.article_location.ty_subway .tit_article:before {
	background-image: url("../images/icon/location_subway.png");
}

.article_location.ty_bus .tit_article:before {
	background-image: url("../images/icon/location_bus.png");
}

.article_location ul.list_txt li .tit {
	font-size: 13px;
	color: #414141;
}

.article_location ul.list_txt li .txt {
	display: block;
	font-size: 12px;
	color: #666;
	text-indent: 3px;
}

.article_location .bx_bus_list {
	margin-bottom: 10px;
	line-height: 1.4;
	font-size: 12px;
	color: #666;
}

.article_location .area_subway {
	margin-bottom: 10px;
}

.article_location .area_subway .txt {
	display: block;
	line-height: 1.4;
	margin: 5px 0 0 38px;
	font-size: 12px;
	color: #666;
}

.article_location .tit_map {
	line-height: 19px;
	margin-bottom: 18px;
	padding-left: 20px;
	font-size: 13px;
	color: #414141;
	background: url("../images/icon/location_pointer.png") no-repeat 0 0;
}

/* ë ˆì´ì–´íŒì—… : ì˜í™”ìƒì„¸/ì¸ë¬¼ì •ë³´ */
.layer_infor_people .article_infor {
	margin-bottom: 30px;
	text-align: center;
}

.layer_infor_people .article_infor .thm {
	overflow: hidden;
	width: 86px;
	height: 86px;
	margin: 0 auto 15px;
	border-radius: 50%;
}

.layer_infor_people .article_infor .thm img {
	width: 100%
}

.layer_infor_people .article_infor .infor .tit1 {
	display: block;
	margin-bottom: 4px;
	font-size: 18px;
}

.layer_infor_people .article_infor .infor .tit2 {
	display: block;
	margin-bottom: 8px;
	font-family: roboto;
	font-size: 13px
}

.layer_infor_people .article_infor .infor .txt1 {
	display: block;
	color: #666;
	font-size: 11px;
}

.layer_infor_people .article_Filmography {
	padding: 0 25px
}

.layer_infor_people .article_Filmography .tit_article {
	display: block;
	margin-bottom: 10px;
	font-size: 15px;
}

.layer_infor_people .article_Filmography ul {
	overflow: hidden;
	margin: 0 -5px
}

.layer_infor_people .article_Filmography ul li {
	float: left;
	width: 107px;
	margin: 0 5px 25px 5px;
}

.layer_infor_people .article_Filmography ul li a {
	display: block;
}

.layer_infor_people .article_Filmography ul li .thm {
	display: block;
	width: 107px;
	height: 147px;
	margin-bottom: 10px;
	border-radius: 4px;
}

.layer_infor_people .article_Filmography ul li .thm img {
	width: 100%;
}

.layer_infor_people .article_Filmography ul li .tit {
	font-size: 13px;
}

/* ë ˆì´ì–´íŒì—… : ì˜í™”ìƒì„¸/ì‹œë†‰ì‹œìŠ¤ */
.article_synopsis .tit {
	display: block;
	margin-bottom: 10px;
	font-size: 15px;
}

.article_synopsis .txt {
	line-height: 1.4;
	font-size: 13px;
	color: #666;
}

/* ë ˆì´ì–´íŒì—… : ë§ˆì´íŽ˜ì´ì§€/ì¿ í°/ì„ ë¬¼í•˜ê¸° */
/* ìƒë‹¨ */
.coupon_gift_top {
	position: relative;
	margin-top: -30px;
	margin-bottom: 20px; /*padding:30px 0 45px;*/
	border-bottom: 1px solid #CCC;
} /* 2020.01.02 */
.coupon_gift_top:after {
	content: "";
	display: block;
	clear: both;
}

.coupon_gift_top .bx_thm {
	display: inline-block; /*float:left;*/
	width: 128px;
	margin-right: 12px;
	text-align: center;
	vertical-align: middle;
} /* 2020.01.02 */
.coupon_gift_top .bx_thm img {
	width: 100%;
} /* 2020.01.02 */
.coupon_gift_top .bx_tit {
	display: inline-block; /*float:left;*/
	vertical-align: middle;
} /* 2020.01.02 */
.coupon_gift_top .bx_tit strong {
	display: block;
	font-size: 20px;
}

.coupon_gift_top .bx_tit span {
	display: block;
	font-size: 16px;
}

.coupon_gift_top .bx_cnt {
	position: absolute;
	right: 0;
	top: 50%;
	margin-top: -2%; /*float:right; padding-top:4px;*/
} /* 2020.01.02 */

/* ì¶”ê°€í•˜ê¸° */
.group_add_gift .bx_item:after {
	content: "";
	display: block;
	clear: both;
}

.group_add_gift .bx_item input[type="text"], .group_add_gift .bx_item input[type="password"]
	{
	float: left;
	width: 475px;
	margin-right: 10px;
}

.group_add_gift .bx_item button {
	float: left;
	width: 65px;
}

.group_add_gift .bx_add_item {
	margin-bottom: 10px;
}

.group_add_gift .bx_add_item:after {
	content: "";
	display: block;
	clear: both;
}

.group_add_gift .bx_add_item input[type="text"], .group_add_gift .bx_add_item input[type="password"]
	{
	float: left;
	width: 318px;
	margin-right: 10px;
}

.group_add_gift .bx_add_item .bx_num {
	float: left;
	width: 148px;
	height: 45px;
	margin-right: 32px;
}

.group_add_gift .bx_add_item .bx_num .txt_num {
	padding: 0;
	line-height: 45px;
	font-size: 17px;
}

.group_add_gift .bx_add_item .bx_num button {
	height: 45px;
	margin: 0;
	padding: 0 20px
}

.group_add_gift .bx_add_item button {
	float: left;
	margin-top: 7px;
}

/* ë ˆì´ì–´íŒì—… : ì´ë²¤íŠ¸/ì •ë³´ì œê³µë™ì˜ */
.layer_event_term_aree .bx_term {
	overflow-y: scroll;
	height: 360px;
	border-bottom: 1px solid #DDD;
}

.layer_event_term_aree .bx_agree {
	margin: 10px 0 0;
	text-align: right;
}

/* ë ˆì´ì–´íŒì—… : ë§ˆì´íŽ˜ì´ì§€/MYì˜í™”ê´€ë“±ë¡ */
.layer_reg_my_cinema .cinema_select_wrap>ul {
	overflow-y: scroll;
	height: 312px;
}

.layer_reg_my_cinema .btn_btm_wrap {
	margin: 20px 0;
}

.pos_reserve_pop {
	position: absolute;
	top: 165px;
	left: 50%;
	width: 1280px;
	margin-left: -872px;
} /* 2020.01.16 ì£¼ì„ ì‚­ì œ */
.pos_reserve_pop.mall {
	width: 1202px;
	margin-left: -601px;
}

/* ì˜ˆë§¤/01ìƒì˜ì‹œê°„ ================================================== */
/* ì˜ˆë§¤í•˜ê¸° : 1ë‹¨ê³„ */
.layer_wrap.active.layer_reserve01_sum {
	position: absolute;
	z-index: 80;
	left: 50%;
	top: 55px;
	width: 500px;
}

.layer_wrap.active.layer_reserve01_sum2 {
	width: 500px;
}

/* ì˜ˆë§¤/03ê²°ì œ ================================================== */
/* ì˜ˆë§¤/03ê²°ì œ/ê²°ì œëŒ€í–‰ì„œë¹„ìŠ¤ì•½ê´€ë³´ê¸° ========== */
/* popup : ì˜ˆë§¤/03ê²°ì œ/ì˜í™”ê´€ì˜ˆë§¤ì•ˆë‚´  */
.layer_wrap.active.layer_pay_cinema_infor {
	position: absolute;
	z-index: 80;
	left: 50%;
	top: 55px;
	width: 810px;
	margin-left: -405px;
}

/* ì˜ˆë§¤/03ê²°ì œ/ê²°ì œëŒ€í–‰ì„œë¹„ìŠ¤ì•½ê´€ë³´ê¸° ========== */
/* popup : ì˜ˆë§¤/03ê²°ì œ/ê²°ì œëŒ€í–‰ì„œë¹„ìŠ¤ì•½ê´€ë³´ê¸° */
.layer_wrap.active.layer_pay_term {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 800px;
}

/* ì˜ˆë§¤/03ê²°ì œ/VIP,í´ëŸ½ ========== */
/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/VIP,í´ëŸ½/L.POINTì¹´ë“œì¡°íšŒ */
.layer_wrap.active.layer_coupon_lpoint_search {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 410px;
}

.layer_wrap.active.layer_coupon_lpoint_search .layer_contents.scroll {
	max-height: 650px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/VIP,í´ëŸ½/L.POINTFree */
.layer_wrap.active.layer_coupon_lpoint_free {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 410px;
}

.layer_wrap.active.layer_coupon_lpoint_free .layer_contents.scroll {
	max-height: 650px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/VIP,í´ëŸ½VI/Pì¿ í° */
.layer_wrap.active.layer_coupon_vip {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 410px;
}

.layer_wrap.active.layer_coupon_vip .layer_contents.scroll {
	max-height: 650px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/VIP,í´ëŸ½í´ëŸ½ì¿ í° */
.layer_wrap.active.layer_coupon_clup {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 410px;
}

.layer_wrap.active.layer_coupon_clup .layer_contents.scroll {
	max-height: 650px;
}

/* ì˜ˆë§¤/03ê²°ì œ/ê´€ëžŒê¶Œ ========== */
/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/ê´€ëžŒê¶Œ/ê´€ëžŒê¶Œ */
.layer_wrap.active.layer_admt {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 410px;
}

.layer_wrap.active.layer_admt .layer_contents.scroll {
	height: 650px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/ê´€ëžŒê¶Œ/ëª¨ë°”ì¼ê´€ëžŒê¶Œ */
.layer_wrap.active.layer_admt_mob {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 410px;
}

.layer_wrap.active.layer_admt_mob .layer_contents.scroll {
	max-height: 650px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/ê´€ëžŒê¶Œ/ëª¨ë°”ì¼ê¸ˆì•¡ê¶Œ */
.layer_wrap.active.layer_admt_mob_gifticon {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/ê´€ëžŒê¶Œ/ë¡¯ë°ëª¨ë°”ì¼ìƒí’ˆê¶Œ */
.layer_wrap.active.layer_admt_lotte_mobgift {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/ê´€ëžŒê¶Œ/ê¸°í”„íŒ… */
.layer_wrap.active.layer_admt_gifting {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 410px;
}

.layer_wrap.active.layer_admt_gifting .layer_contents.scroll {
	max-height: 650px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/ê´€ëžŒê¶Œ/ê¸°í”„í‹°ì—˜ê¸ˆì•¡ê¶Œ */
.layer_wrap.active.layer_admt_gifticon_el {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/ê´€ëžŒê¶Œ/ì‚¼ì„±Mê¸°í”„íŠ¸ê´€ëžŒê¶Œ */
.layer_wrap.active.layer_admt_samsung_gift {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/ê´€ëžŒê¶Œ/ì‹ í•œComboë¬´ë£Œê´€ëžŒê¶Œ */
.layer_wrap.active.layer_admt_shinhan_free {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/ê´€ëžŒê¶Œ/ëª¨ë‹ˆí„°ë§ */
.layer_wrap.active.layer_admt_monitoring {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* ì˜ˆë§¤/03ê²°ì œ/í• ì¸ê¶Œ ========== */
/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í• ì¸ê¶Œ/í• ì¸ê¶Œ */
.layer_wrap.active.layer_discount_Coupon {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 410px;
}

.layer_wrap.active.layer_discount_Coupon .layer_contents.scroll {
	max-height: 650px;
}

/* ì˜ˆë§¤/03ê²°ì œ/í¬ì¸íŠ¸ê¸°íƒ€ ========== */
/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/OKìºì‰¬ë°± */
.layer_wrap.active.layer_point_okcashback {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/í˜„ëŒ€Mí¬ì¸íŠ¸ */
.layer_wrap.active.layer_point_hyundai {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/ì‹ í•œComboí• ì¸ */
.layer_wrap.active.layer_point_shinhan_discount {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/ì‹ í•œComboí• ì¸ */
.layer_wrap.active.layer_point_shinhan_free {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/GS&POINT */
.layer_wrap.active.layer_point_gs_point {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/NHë¬¸í™”ëˆ„ë¦¬ */
.layer_wrap.active.layer_point_nh {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/GS&POINT */
.layer_wrap.active.layer_point_soil {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/ë¸”ë£¨ë©¤ë²„ìŠ¤ */
.layer_wrap.active.layer_point_bluemem {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 410px;
}

.layer_wrap.active.layer_point_bluemem .layer_contents.scroll {
	max-height: 650px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/ë ˆë“œë©¤ë²„ìŠ¤ */
.layer_wrap.active.layer_point_redmem {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/í•´í”¼ë¨¸ë‹ˆ */
.layer_wrap.active.layer_point_happymoney {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/ëª¨ë°”ì¼íŒ */
.layer_wrap.active.layer_point_mobilepop {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/ì‹ í•œAceBlueLabel */
.layer_wrap.active.layer_point_shinhan_aceblue {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* popup : ì˜ˆë§¤/03ê²°ì œ/í• ì¸í¬ì¸íŠ¸/í¬ì¸íŠ¸ê¸°íƒ€/ì‹ í•œì¹´ë“œDeepOil */
.layer_wrap.active.layer_point_shinhan_deepoil {
	position: absolute;
	z-index: 80;
	right: 10px;
	top: 55px;
	width: 390px;
}

/* ì˜ˆë§¤/04ê²°ì œì™„ë£Œ ================================================== */
/* popup : ì˜ˆë§¤/04ê²°ì œì™„ë£Œ/ì ë¦½,ì‹ ì²­ */
.layer_wrap.active.layer_saving_request {
	position: absolute;
	z-index: 80;
	right: 20px;
	top: 55px;
	width: 390px;
	margin-left: 230px
}

/* popup : ì˜ˆë§¤/04ê²°ì œì™„ë£Œ/íœ´ëŒ€í°ìœ¼ë¡œë°”ë¡œí‹°ì¼“ë°›ê¸° */
.layer_wrap.active.layer_fin_get_mobticket {
	position: absolute;
	z-index: 100;
	left: 50%;
	top: 105px;
	width: 390px;
	margin-left: -195px;
}

.layer_wrap.active.layer_Combi_Notice {
	position: absolute;
	z-index: 120;
	left: 50%;
	top: 105px;
	width: 390px;
	margin-left: -195px;
}

.btn_temp {
	position: fixed;
	z-index: 9999;
	left: 5px;
	bottom: 15px;
	padding: 5px;
}

.btn_temp a {
	display: inline-block;
	padding: 4px;
	border: 1px solid #CCC;
	background-color: #FFF;
}

/* ì‚­ì œ : ìž„ì‹œë²„íŠ¼ */
.btn_temp_reserve {
	position: fixed;
	z-index: 9999;
	bottom: 5px;
	padding: 5px;
	font-size: 12px;
	color: #FFF !important;
	background: skyblue;
}

.btn_temp_reserve.res01 {
	left: 5px;
	width: 100px;
}

.btn_temp_reserve.res03 {
	left: 150px;
	width: 900px;
}

.btn_temp_reserve.res04 {
	left: 1150px;
	width: 100px;
}

/* ì˜ˆë§¤ ============================================================ */
.wrap_reserve {
	overflow: hidden;
	position: relative;
	width: 1280px;
	height: 870px;
	margin: 0 auto;
	background-color: #FFF;
}

.wrap_reserve:after {
	content: "";
	display: block;
	clear: both;
}
/* section_step_tit ============================== */
.wrap_reserve .section_step_tit {
	position: absolute;
	left: 0;
	top: 0;
	bottom: 0;
	width: 78px;
}

.wrap_reserve .section_step_tit ul {
	height: 100%;
}

.wrap_reserve .section_step_tit ul li {
	position: relative;
	height: 25%;
	box-sizing: border-box;
	border: 1px solid #666;
	border-top: none;
	background-color: #FFF;
	z-index: 10;
}

.wrap_reserve .section_step_tit ul li>a {
	display: block;
	height: 100%;
	color: #666;
}

.wrap_reserve .section_step_tit ul li>a>strong {
	display: block;
	line-height: 1.5;
	padding-top: 80px;
	font-size: 13px;
	text-align: center;
}

.wrap_reserve .section_step_tit ul li>a>strong span {
	font-family: 'Roboto';
	font-size: 13px;
}
/* ì´ì „ë‹¨ê³„ */
.wrap_reserve .section_step_tit ul li.prev {
	border-color: #333;
	border-bottom-color: #666;
	background-color: #333;
}

.wrap_reserve .section_step_tit ul li.prev>a {
	color: #FFF;
}
/* í˜„ë‹¨ê³„ */
.wrap_reserve .section_step_tit ul li.active {
	border-color: #FF243E;
	border-bottom-color: #666;
	background-color: #FF243E;
}

.wrap_reserve .section_step_tit ul li.active>a {
	color: #FFF;
}

.wrap_reserve .section_step_tit ul li.active>a:before {
	content: "í˜„ìž¬ ë‹¨ê³„";
	overflow: hidden;
	position: absolute;
	width: 1px;
	height: 1px;
	text-indent: -9999em;
}

.wrap_reserve .section_step_tit ul li.active>a>strong {
	font-size: 15px;
}

.wrap_reserve .section_step_tit ul li.active>a .bx_con {
	background-color: #FF243E;
}
/* ìš”ì•½ì •ë³´ */
.wrap_reserve .section_step_tit ul li>a .bx_con {
	display: none;
	position: absolute;
	z-index: 1;
	left: 77px;
	top: -1px;
	bottom: 0;
	width: 172px;
	padding-left: 20px;
	border-top: 1px solid #666;
	background-color: #333;
}

.wrap_reserve .section_step_tit ul li>a .bx_con dl {
	margin-top: 52px;
}

.wrap_reserve .section_step_tit ul li>a .bx_con dl:after {
	content: "";
	display: block;
	clear: both;
}

.wrap_reserve .section_step_tit ul li>a .bx_con dl dt {
	overflow: hidden;
	position: absolute;
	width: 1px;
	height: 1px;
	clip: rect(1px, 1px, 1px, 1px);
}

.wrap_reserve .section_step_tit ul li>a .bx_con dl dd {
	margin-bottom: 17px;
}

.wrap_reserve .section_step_tit ul li>a .bx_con dl dd:before {
	content: "";
	overflow: hidden;
	display: inline-block;
	width: 3px;
	height: 3px;
	margin: 4px 5px 0 0;
	border-radius: 3px;
	vertical-align: top;
	background: #fff;
}

.wrap_reserve .section_step_tit ul li.step02>a .bx_con dl {
	margin-top: 72px;
}

.wrap_reserve .section_step_tit ul li.step03>a .bx_con dl {
	margin-top: 62px;
}

.wrap_reserve .section_step_tit ul li.step03>a .bx_con dl dt {
	overflow: inherit;
	position: static;
	clear: both;
	float: left;
	width: auto;
	height: auto;
	clip: inherit;
	margin-right: 5px;
}

.wrap_reserve .section_step_tit ul li.step03>a .bx_con dl dt:before {
	content: "";
	overflow: hidden;
	display: inline-block;
	width: 3px;
	height: 3px;
	margin: 4px 5px 0 0;
	border-radius: 3px;
	vertical-align: top;
	background: #FFE9EC;
}

.wrap_reserve .section_step_tit ul li.step03>a .bx_con dl dd {
	float: left;
}

.wrap_reserve .section_step_tit ul li.step03>a .bx_con dl dd:before {
	display: none;
}

.wrap_reserve .section_step_tit ul li.prev>a:hover .bx_con,
	.wrap_reserve .section_step_tit ul li.active>a:hover .bx_con {
	display: block;
}
/* section_step_con ============================== */
.wrap_reserve .section_step_con {
	overflow: hidden;
	position: absolute;
	height: 0;
}

.wrap_reserve .section_step_con:after {
	content: "";
	display: block;
	clear: both;
}

.wrap_reserve .section_step_con.active {
	display: block;
	overflow: inherit;
	position: relative;
	width: 1202px;
	height: 100%;
	margin-left: 78px;
}

.wrap_reserve .section_step_con .article {
	position: relative;
	float: left;
	height: 100%;
	box-sizing: border-box;
	background-color: #FFF;
}

.wrap_reserve .section_step_con .article .group_top {
	overflow: hidden;
	position: relative;
	height: 55px;
	line-height: 55px;
	border-right: 1px solid #222;
	text-align: center;
	background-color: #000;
}

.wrap_reserve .section_step_con .article:first-child .group_top {
	border-left: none;
}

.wrap_reserve .section_step_con .article .group_top .tit {
	font-size: 18px;
	color: #FFF;
}

.wrap_reserve .section_step_con .article .group_top .txt {
	position: absolute;
	top: 5px;
	right: 30px;
	font-size: 13px;
	color: #fff;
}

.wrap_reserve .section_step_con .article .group_top .txt:before {
	content: "";
	display: inline-block;
	width: 3px;
	height: 3px;
	margin-right: 5px;
	border-radius: 50%;
	vertical-align: middle;
	background: #666;
}

.wrap_reserve .section_step_con .article .group_top .btn_txt_reset {
	position: absolute;
	right: 32px;
	top: 14px;
}

/* article : 01ìƒì˜ì‹œê°„/ì˜í™”ê´€ì„ íƒ ========== */
.wrap_reserve .section_step_con .article.article_cinema {
	width: 351px;
	border-bottom: 1px solid #DDD;
}

.wrap_reserve .section_step_con .article.article_cinema>.inner {
	overflow: hidden;
	height: 815px;
	border-right: 1px solid #DDD;
}

.wrap_reserve .section_step_con .article.article_cinema>.inner .tab_wrap.outer>li>.tab_tit
	{
	height: 61px;
}

.wrap_reserve .section_step_con .article.article_cinema>.inner .tab_wrap.outer>li.active>.tab_tit
	{
	height: 61px;
}

.wrap_reserve .section_step_con .article.article_cinema>.inner .tab_wrap.outer
	{
	padding-top: 61px;
}

.wrap_reserve .section_step_con .article.article_cinema>.inner .cinema_select_wrap>ul,
	.wrap_reserve .section_step_con .article.article_cinema>.inner .cinema_select_wrap>ul .depth2 .mCustomScrollbar
	{
	height: 753px;
}
/* customizing : cinema_select_wrap */
.wrap_reserve .section_step_con .article.article_cinema .cinema_select_wrap
	{
	background-color: #F5F5F5;
}

.wrap_reserve .section_step_con .article.article_cinema .cinema_select_wrap>ul li
	{
	padding: 2px;
	border-bottom: none;
}

.wrap_reserve .section_step_con .article.article_cinema .cinema_select_wrap>ul>li.depth1.active>a
	{
	background: #FFF url("../../Content/images/icon/check.png") no-repeat
		150px 2px;
}

.wrap_reserve .section_step_con .article.article_cinema .cinema_select_wrap>ul .depth2
	{
	background-color: #FFF;
}

.wrap_reserve .section_step_con .article.article_cinema .cinema_select_wrap>ul .depth2 ul li.active a
	{
	color: #FF243E;
	/*background:url("../../Content/images/icon/check.png") no-repeat 130px center;*/
}

.wrap_reserve .section_step_con .article.article_cinema .cinema_select_wrap>ul .depth2 ul li.disabled a
	{
	color: #ccc;
}
/* article : 01ìƒì˜ì‹œê°„/ì˜í™”ì„ íƒ ========== */
.wrap_reserve .section_step_con .article.article_movie {
	width: 351px;
	background-color: #F8F8F8;
}

.wrap_reserve .section_step_con .article.article_movie>.inner {
	overflow: hidden;
	height: 815px;
	border-right: 1px solid #DDD;
}

.wrap_reserve .section_step_con .article.article_movie>.inner .mCustomScrollbar
	{
	height: 754px;
}

.wrap_reserve .section_step_con .article.article_movie .list_filter {
	overflow: hidden;
	position: relative;
	height: 60px;
	padding: 0 20px;
	border-bottom: 1px solid #DDD;
}

.wrap_reserve .section_step_con .article.article_movie .list_filter select
	{
	width: 180px;
	height: 30px;
	line-height: 29px;
	margin-top: 15px;
	padding-left: 10px;
}

.wrap_reserve .section_step_con .article.article_movie .inner .mCSB_container
	{
	padding-bottom: 30px;
}
/* article : 01ìƒì˜ì‹œê°„/ë‚ ì§œ,ì‹œê°„ ========== */
.wrap_reserve .section_step_con .article.article_time {
	width: 500px;
}

.wrap_reserve .section_step_con .article.article_time>.inner {
	overflow: hidden;
	height: 815px;
}

.wrap_reserve .section_step_con .article.article_time>.inner .mCustomScrollbar
	{
	height: 658px;
	padding: 0 20px;
}
/* bx_notice */
.wrap_reserve .section_step_con .article.article_time>.inner .bx_notice
	{
	clear: both;
	margin-top: 215px;
	padding-top: 52px;
	text-align: center;
	background: url("../../Content/images/icon/film.png") no-repeat center 0;
}

.wrap_reserve .section_step_con .article.article_time>.inner .bx_notice p
	{
	line-height: 1.5;
	font-size: 15px;
}

.wrap_reserve .section_step_con .article.article_time>.inner .mCSB_container
	{
	padding-bottom: 30px;
}

/* article : 02ì¸ì›,ì¢Œì„ ========== */
.wrap_reserve .section_step_con .article.article_seat {
	width: 1202px;
}

.wrap_reserve .section_step_con .article.article_seat>.inner {
	overflow: hidden;
	height: 815px;
}

/* article : 03ê²°ì œ/ì˜ˆë§¤ì •ë³´ ========== */
.wrap_reserve .section_step_con .article.article_sum_infor {
	width: 301px;
}

.wrap_reserve .section_step_con .article.article_sum_infor>.inner {
	overflow: hidden;
	height: 815px;
	border-right: 1px solid #DDD;
}

/* article : 03ê²°ì œ/ê²°ì œìˆ˜ë‹¨ ========== */
.wrap_reserve .section_step_con .article.article_pay_method {
	width: 487px;
	background-color: #F8F8F8;
}

.wrap_reserve .section_step_con .article.article_pay_method>.inner {
	overflow: hidden;
	height: 815px;
	border-right: 1px solid #DDD;
}

.wrap_reserve .section_step_con .article.article_pay_method>.inner .mCustomScrollbar
	{
	height: 815px;
}

/* article : 03ê²°ì œ/ê²°ì œí•˜ê¸° ========== */
.wrap_reserve .section_step_con .article.article_payment {
	width: 414px;
}

.wrap_reserve .section_step_con .article.article_payment>.inner {
	overflow: hidden;
	height: 815px;
}

/* article : 04ê²°ì œì™„ë£Œ/ì™„ë£Œ ========== */
.wrap_reserve .section_step_con .article.article_payment_fin {
	width: 1202px;
	background-color: #F8F8F8;
}

.wrap_reserve .section_step_con .article.article_payment_fin>.inner {
	overflow: hidden;
	height: 855px;
	overflow-y: auto;
} /* 2020.03.02 */
.wrap_reserve .section_step_con .article.article_payment_fin.side>.inner
	{
	margin-right: 410px;
}

/* ë°”ë¡œì˜ˆë§¤/ìƒì˜ì‹œê°„í‘œ */
.wrap_reserve.ty2 {
	width: 1202px;
}

.wrap_reserve.ty2 .section_step_con {
	width: 100%;
	margin-left: 0;
}

.wrap_reserve.ty2 .section_step_con .article.article_time {
	width: 851px;
}

.wrap_reserve.ty2 .section_step_con .article.article_time>.inner {
	height: 760px;
}

.wrap_reserve.ty2 .section_step_con .article.article_time>.inner .mCustomScrollbar
	{
	height: 647px;
}

.wrap_reserve.ty2 .section_step_con .article.article_time>.inner .tab_wrap .mCustomScrollbar
	{
	height: 607px;
}

.wrap_reserve.ty2 .section_step_con .article.article_cinema>.inner {
	height: 765px;
}

.wrap_reserve.ty2 .section_step_con .article.article_cinema>.inner .cinema_select_wrap>ul,
	.wrap_reserve.ty2 .section_step_con .article.article_cinema>.inner .cinema_select_wrap>ul .depth2 .mCustomScrollbar
	{
	height: 100%;
}

.wrap_reserve.ty2 .section_step_con .article.article_movie>.inner .mCustomScrollbar
	{
	height: 704px;
}

.wrap_reserve.ty2 .time_select_wrap ul.list_time li {
	width: 13.4%;
	margin: 0 0 11px 1%;
}

.wrap_reserve.ty2 .time_select_wrap ul.list_time li:nth-child(4n+1) {
	margin-left: 1%;
}

.wrap_reserve.ty2 .time_select_wrap ul.list_time li:nth-child(7n+1) {
	margin-left: 0;
}

.wrap_reserve.ty2 .section_step_con .article .group_top {
	border-right-color: #CCC;
	background-color: #E2E2E2;
}

.wrap_reserve.ty2 .section_step_con .article .group_top .tit {
	color: #000;
}

.wrap_reserve.ty2 .article_time .date_select_wrap.bdr {
	margin-bottom: 0;
	padding-bottom: 20px;
	border-bottom: 1px solid #EEE;
}

.wrap_reserve.ty2 .article_time .time_select_tit {
	margin-top: 30px;
}

.wrap_reserve.ty2 .article_time .time_select_tit .tit {
	vertical-align: middle;
}

.wrap_reserve.mall {
	width: 1202px;
}

.wrap_reserve.mall .section_step_con {
	margin-left: 0;
}

.wrap_reserve.mall .reserve_result_wrap .infor_wrap .bx_thm {
	height: 160px;
}

/* ì˜ˆë§¤ : íŒì—… ê³µí†µ ============================================================ */
.field_wrap {
	margin-top: 30px;
}

.field_wrap:first-child {
	margin-top: 0;
}

.field_wrap .tit_field {
	margin-bottom: 10px;
	font-size: 15px;
}
/* group ========== */
.field_wrap .group_item {
	margin-top: 20px;
}

.field_wrap .group_item.non_mg {
	margin-top: 0;
}

.field_wrap .group_item:first-child {
	margin-top: 0;
}

.field_wrap .group_item .btn_btm_wrap {
	margin: 10px 0 0;
}

.field_wrap .group_item .txt_point_inf {
	padding: 14px 0;
	font-size: 13px;
}

.field_wrap .group_item .txt_point_inf strong {
	font-family: 'Roboto';
	font-size: 15px;
	font-weight: bold;
}
/* ì‚¬ìš©ê°€ëŠ¥í¬ì¸íŠ¸ */
.field_wrap .group_item dl.useable_point {
	position: relative;
	border-top: 1px solid #DDD;
}

.field_wrap .group_item dl.useable_point:first-child {
	border-top: 0;
}

.field_wrap .group_item dl.useable_point:after {
	content: "";
	display: block;
	clear: both;
}

.field_wrap .group_item dl.useable_point dt {
	clear: both;
	float: left;
	padding: 10px 0;
	font-size: 13px;
}

.field_wrap .group_item dl.useable_point dt strong {
	font-size: 15px;
}

.field_wrap .group_item dl.useable_point dd {
	float: right;
	padding: 8px 0;
	font-size: 13px;
}

.field_wrap .group_item dl.useable_point dd strong {
	font-family: 'Roboto';
	font-size: 15px;
	font-weight: bold;
	color: #2AA3FE;
}
/* bx ========== */
.field_wrap .group_item .bx_item {
	position: relative;
	margin-top: 8px;
}

.field_wrap .group_item .bx_item:first-child {
	margin-top: 0;
}

.field_wrap .group_item .bx_item:after {
	content: "";
	display: block;
	clear: both;
}

.field_wrap .group_item .bx_item input[type="checkbox"] {
	position: absolute;
}

.field_wrap .group_item .bx_item input[type="checkbox"]+label {
	display: block;
	float: left;
	width: auto;
	font-family: 'Roboto';
	font-size: 13px;
}

.field_wrap .group_item .bx_item input[type="checkbox"]+label strong {
	margin-left: 5px;
	color: #2AA3FE;
}
/* formìœ í˜• */
.field_wrap .group_item .bx_item.inp_ty1 input[type="text"], .field_wrap .group_item .bx_item.inp_ty1 input[type="password"],
	.field_wrap .group_item .bx_item.inp_ty1 .bx_pos {
	float: left;
	width: 230px;
}

.field_wrap .group_item .bx_item.inp_ty1 .bx_pos {
	position: relative;
}

.field_wrap .group_item .bx_item.inp_ty1 .bx_pos input[type="text"],
	.field_wrap .group_item .bx_item.inp_ty1 .bx_pos input[type="password"]
	{
	width: 100%;
}

.field_wrap .group_item .bx_item.inp_ty1 .bx_pos .cnt_time {
	position: absolute;
	right: 5px;
	height: 45px;
	line-height: 45px;
	white-space: nowrap;
}

.field_wrap .group_item .bx_item.inp_ty1 .bx_num {
	float: left;
	width: 230px;
}

.field_wrap .group_item .bx_item.inp_ty1 .bx_num .tit {
	display: block;
	padding: 14px 0;
	font-size: 13px;
	text-align: center;
}

.field_wrap .group_item .bx_item.inp_ty1 .bx_num .tit .txt_num {
	font-size: 17px;
}

.field_wrap .group_item .bx_item.inp_ty1 .bx_num button {
	width: auto;
	margin-left: 0;
	padding: 0 15px
}

.field_wrap .group_item .bx_item.inp_ty1 button {
	float: left;
	width: 100px;
	margin-left: 10px;
	padding: 0;
	white-space: nowrap;
}

.field_wrap .group_item .bx_item.inp_ty1 .area_point {
	position: relative;
	float: left;
	width: 230px;
}

.field_wrap .group_item .bx_item.inp_ty1 .area_point input {
	width: 100%;
	padding-right: 25px;
	font-family: 'Roboto';
	font-size: 13px;
	font-weight: bold;
	text-align: right;
}

.field_wrap .group_item .bx_item.inp_ty1 .area_point span {
	position: absolute;
	right: 10px;
	top: 8px;
	line-height: 30px;
	font-family: 'Roboto';
	font-size: 13px;
	font-weight: bold;
}

.field_wrap .group_item .bx_item.inp_ty2 input[type="text"], .field_wrap .group_item .bx_item.inp_ty2 input[type="password"],
	.field_wrap .group_item .bx_item.inp_ty2 input[type="tel"], .field_wrap .group_item .bx_item.inp_ty2 input[type="number"]
	{
	float: left;
	width: 160px;
}

.field_wrap .group_item .bx_item.inp_ty2 .dash1 {
	float: left;
	width: 20px;
	line-height: 45px;
	text-align: center;
	white-space: nowrap;
}

.field_wrap .group_item .bx_item.inp_ty3 .tit_item {
	float: left;
	line-height: 18px;
}

.field_wrap .group_item .bx_item.inp_ty3 .area_rdo {
	float: right;
	margin-top: -1px;
}

.field_wrap .group_item .bx_item.inp_ty3 .area_rdo span {
	margin-left: 10px;
}

.field_wrap .group_item .bx_item.inp_ty3 .tooltip_box {
	float: left;
	margin: 1px 0 0 5px;
}
/* title */
.field_wrap .group_item .tit_wrap:after {
	content: "";
	display: block;
	clear: both;
}

.field_wrap .group_item .tit_wrap .group_lft {
	float: left;
}

.field_wrap .group_item .tit_wrap .group_rgt {
	float: right;
}

.field_wrap .group_item .tit_wrap .txt_cnt {
	font-size: 11px;
}

.field_wrap .group_item .tit_wrap .txt_cnt strong {
	color: #FF243E;
}
/* form : ì „í™”ë²ˆí˜¸ */
.field_wrap .bx_inp_tel:after {
	content: "";
	display: block;
	clear: both;
}

.field_wrap .bx_inp_tel select {
	float: left;
	width: 28%;
	height: 45px;
}

.field_wrap .bx_inp_tel input[type="text"] {
	float: left;
	width: 35%;
	margin-left: 1%;
}

.field_wrap .bx_inp_tel2:after {
	content: "";
	display: block;
	clear: both;
}

.field_wrap .bx_inp_tel2 select {
	float: left;
	width: 85px;
	height: 45px;
}

.field_wrap .bx_inp_tel2 input[type="text"] {
	float: left;
	width: 65px;
	margin-left: 8px;
}

.field_wrap .bx_inp_tel2 button {
	float: left;
	width: 100px;
	margin-left: 8px;
}

/* ì˜ˆë§¤ : 01ìƒì˜ì‹œê°„ ============================================================ */
/* ì˜ˆë§¤ : 01ìƒì˜ì‹œê°„/ì˜í™”ê´€ì„ íƒ ============================== */
.cinema_select_wrap {
	position: relative;
	height: 100%;
	background-color: #FFF;
}

.cinema_select_wrap>ul {
	min-height: 90px;
	height: 100%;
}

.cinema_select_wrap>ul li {
	border-bottom: 1px solid #EBEBEB;
}

.cinema_select_wrap>ul>li.depth1>a {
	display: block;
	position: relative;
	width: 175px;
	box-sizing: border-box;
	padding: 10px 16px;
	font-size: 13px;
}

.cinema_select_wrap>ul>li.depth1>a em {
	font-size: 10px;
	color: #666;
}

.cinema_select_wrap>ul>li.depth1.active>a {
	background-color: #F5F5F5;
}

.cinema_select_wrap>ul>li.depth1.active .depth2 {
	display: block;
}

.cinema_select_wrap>ul .depth2 {
	display: none;
	position: absolute;
	left: 175px;
	right: 0;
	top: 0;
	bottom: 0;
	background-color: #F5F5F5;
}

.cinema_select_wrap>ul .depth2 .area_scroll {
	overflow-y: scroll;
	height: 100%;
}

.cinema_select_wrap>ul .depth2 ul li {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-size: 13px;
}

.cinema_select_wrap>ul .depth2 ul li a {
	display: table-cell; /*display:block;*/
	overflow: hidden; /*text-overflow:ellipsis; white-space:nowrap;*/
	padding: 10px 16px;
	font-size: 13px;
	vertical-align: middle;
}

.cinema_select_wrap>ul .depth2 ul li.active a {
	color: #FF243E;
}

.cinema_select_wrap>ul .depth2 ul li.disabled a {
	color: #ccc;
}

.cinema_select_wrap li.active>a:before {
	content: "ì„ íƒ";
	overflow: hidden;
	position: absolute;
	width: 0;
	height: 0;
	text-indent: -9999em;
}

.cinema_select_wrap .depth2 li {
	position: relative;
}

.cinema_select_wrap .depth2 li.active>a:after {
	content: "";
	position: absolute;
	right: 7px;
	top: 4px;
	width: 18px;
	height: 14px;
	text-indent: -9999em;
	background: url("../../Content/images/icon/check.png") no-repeat 0 0;
}

.cinema_select_wrap .depth2 li.disabled.active>a:after {
	background: none;
}
/* bx_notice */
.cinema_select_wrap .bx_notice {
	clear: both;
	margin-top: 100px;
	padding: 0 19px;
	text-align: center;
}

.cinema_select_wrap .bx_notice .txt {
	line-height: 1.5;
	margin-bottom: 14px;
	font-size: 13px;
}
/* customizing : ë§ˆì´íŽ˜ì´ì§€/ì¿ í°/ì‚¬ìš©ê°€ëŠ¥ì˜í™”ê´€ */
.cinema_select_wrap.useable>ul .depth2 .area_scroll {
	overflow-x: hidden;
}

.cinema_select_wrap.useable>ul .depth2 ul {
	margin: 0 -1%;
	padding: 15px 30px;
}

.cinema_select_wrap.useable>ul .depth2 ul:after {
	content: "";
	display: block;
	clear: both;
}

.cinema_select_wrap.useable>ul .depth2 ul li {
	float: left;
	width: 23%;
	height: 50px;
	line-height: 50px;
	margin: 0 1% 15px;
	box-sizing: border-box;
	border: 1px solid #EEE;
	font-size: 13px;
	text-align: center;
	background-color: #FFF;
}

/* customizing : ë§ˆì´íŽ˜ì´ì§€/ì¿ í°/ì‚¬ìš©ê°€ëŠ¥ì˜í™”ê´€ */
.cinema_select_wrap.my_cinema_reg>ul .depth2 .area_scroll {
	overflow-x: hidden;
}

.cinema_select_wrap.my_cinema_reg>ul .depth2 ul {
	margin: 0 -1%;
	padding: 15px 30px;
}

.cinema_select_wrap.my_cinema_reg>ul .depth2 ul:after {
	content: "";
	display: block;
	clear: both;
}
/*.cinema_select_wrap.my_cinema_reg > ul .depth2 ul li {float:left; width:23%; height:50px; line-height:50px; margin:0 1% 10px; box-sizing:border-box; border-radius:4px; border:1px solid #EEE; text-align:center; background-color:#FFF;} 2019.12.31 */
/* 2019.12.31 ìˆ˜ì •í…ŒìŠ¤íŠ¸ ì˜ì—­ */
.cinema_select_wrap.my_cinema_reg>ul .depth2 ul li {
	float: left;
	width: 23%;
	height: 50px;
	line-height: 1.2;
	margin: 0 1% 10px;
	box-sizing: border-box;
	border-radius: 4px;
	border: 1px solid #EEE;
	text-align: center;
	white-space: normal;
	background-color: #FFF;
	display: table;
	vertical-align: middle;
}

.cinema_select_wrap.my_cinema_reg>ul .depth2 ul li span {
	display: table-cell;
	vertical-align: middle;
}
/* //2019.12.31 ìˆ˜ì •í…ŒìŠ¤íŠ¸ ì˜ì—­ */
.cinema_select_wrap.my_cinema_reg>ul .depth2 ul li a {
	padding: 0 5px;
}

.cinema_select_wrap.my_cinema_reg>ul .depth2 ul li.active {
	border: 2px solid #000;
}
/* .cinema_select_wrap.my_cinema_reg > ul .depth2 ul li .telnum {display: block; padding: 2px 0 0 0; font-size: 13px; color: #555} 2020.04.28 */
.cinema_select_wrap.my_cinema_reg>ul .depth2 ul li.on .telnum,
	.cinema_select_wrap.my_cinema_reg>ul .depth2 ul li .telnum {
	display: block;
	font-size: 12px;
	color: #555
}

.cinema_select_wrap.my_cinema_reg>ul .depth2 ul li.disabled .telnum {
	color: #999
}

#layerCinemaGroupNum .cinema_select_wrap.cinemaSelect>ul .depth2 ul li.on a .telnum,
	#layerCinemaGroupNum .cinema_select_wrap.cinemaSelect>ul .depth2 ul li a .telnum
	{
	display: block;
	padding-top: 4px;
	font-size: 12px;
	color: #555
}

#layerCinemaGroupNum .cinema_select_wrap.cinemaSelect>ul .depth2 ul li.disabled .telnum
	{
	color: #999
}

#layerCinemaGroupNum .cinema_select_wrap>ul>li.depth1.active>a {
	position: relative;
	z-index: 1;
	background-color: #F5F5F5;
	background-image: url('../../Content/images/icon/ic_my_check.svg');
	background-repeat: no-repeat;
	background-position: 160px center;
}

#layerCinemaGroupNum.layer_wrap.ty3 .layer_contents {
	height: 360px
}

#layerCinemaGroupNum .cinema_select_wrap>ul>li.depth1.active .depth2 {
	overflow-y: scroll;
	height: 100%;
}
/* ì˜ˆë§¤ : 01ìƒì˜ì‹œê°„/ì˜í™”ì„ íƒ ============================== */
/* ê³µí†µ ========== */
.movie_select_wrap ul>li {
	box-sizing: border-box;
	border: 2px solid transparent;
}

.movie_select_wrap ul>li>a {
	display: block;
	position: relative;
	box-sizing: border-box;
}

.movie_select_wrap ul>li>a:after {
	content: "";
	display: block;
	clear: both;
}

.movie_select_wrap ul>li .group_infor {
	float: left;
}

.movie_select_wrap ul>li .group_infor .bx_tit .ic_grade {
	margin-right: 5px;
}

.movie_select_wrap ul>li .group_infor .bx_tit .tit {
	font-size: 15px;
	vertical-align: middle;
}

.movie_select_wrap ul>li.active {
	border: 2px solid #000;
	background-color: #FFF;
}

.movie_select_wrap ul>li.active>a:before {
	content: "ì„ íƒ";
	position: absolute;
	right: 19px;
	top: 18px;
	width: 18px;
	height: 14px;
	text-indent: -9999em;
	background: url("../../Content/images/icon/check.png") no-repeat 0 0;
}

.movie_select_wrap ul>li.disabled .bx_thm {
	opacity: .3;
}

.movie_select_wrap ul>li.disabled .group_infor {
	opacity: .5;
}
/* ì¸ë„¤ì¼í˜• ========== */
.movie_select_wrap.thm ul>li>a {
	min-height: 116px;
	padding: 10px 20px;
}

.movie_select_wrap.thm ul>li .bx_thm {
	overflow: hidden;
	position: absolute;
	left: 20px;
	top: 10px;
	width: 68px;
	height: 96px;
	border-radius: 4px;
}

.movie_select_wrap.thm ul>li .bx_thm img {
	width: 100%;
}

.movie_select_wrap.thm ul>li .bx_thm .rank {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	height: 25px;
	background: -moz-linear-gradient(top, rgba(140, 140, 142, 0) 0%,
		rgba(139, 139, 141, 0) 1%, rgba(0, 0, 0, 0.5) 100%);
	background: -webkit-linear-gradient(top, rgba(140, 140, 142, 0) 0%,
		rgba(139, 139, 141, 0) 1%, rgba(0, 0, 0, 0.5) 100%);
	background: linear-gradient(to bottom, rgba(140, 140, 142, 0) 0%,
		rgba(139, 139, 141, 0) 1%, rgba(0, 0, 0, 0.5) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#008c8c8e',
		endColorstr='#80000000', GradientType=0);
}

.movie_select_wrap.thm ul>li .bx_thm .rank strong {
	position: absolute;
	left: 5px;
	bottom: -4px;
	font-family: 'Roboto';
	font-size: 18px;
	color: #FFF;
}

.movie_select_wrap.thm ul>li .group_infor {
	margin-left: 78px;
	padding: 10px 0 0;
}

.movie_select_wrap.thm ul>li .group_infor .bx_tit {
	margin: 0 20px 12px 27px;
	text-indent: -27px
}

.movie_select_wrap.thm ul>li .group_infor .bx_tit .ic_grade {
	text-indent: 0;
}

.movie_select_wrap.thm ul>li .group_infor dl {
	margin: 0 0 5px 0;
	font-size: 11px;
}

.movie_select_wrap.thm ul>li .group_infor dl:after {
	content: "";
	display: block;
	clear: both;
}

.movie_select_wrap.thm ul>li .group_infor dl dt {
	clear: both;
	float: left;
	line-height: 18px;
	margin-right: 8px;
	color: #666;
}

.movie_select_wrap.thm ul>li .group_infor dl dd {
	float: left;
	line-height: 19px;
	font-family: 'Roboto';
}

.movie_select_wrap.thm ul>li .group_infor dl dt.day {
	padding-left: 0 !important;
	text-indent: -9999em;
}

.movie_select_wrap.thm ul>li .group_infor dl dd strong {
	font-weight: bold;
	vertical-align: bottom;
}

.movie_select_wrap.thm ul>li .group_infor dl dt.side {
	clear: none;
	position: relative;
	margin-left: 8px;
	padding-left: 8px;
}

.movie_select_wrap.thm ul>li .group_infor dl dt.side:before {
	content: "";
	position: absolute;
	left: 0;
	top: 4px;
	height: 10px;
	border-left: 1px solid #DDD;
}

.movie_select_wrap.thm ul>li .group_infor dl .txt_ic_score em {
	margin-right: -4px;
}

.movie_select_wrap.thm ul>li .group_infor dl .expired {
	margin-right: 26px;
	color: #ED4C6B;
}

.movie_select_wrap.thm ul>li.active {
	border: 2px solid #000;
	background-color: #FFF;
}

.movie_select_wrap.thm ul>li.active>a {
	cursor: pointer;
}

.movie_select_wrap.thm ul>li.active>a:before {
	content: "ì„ íƒ";
	position: absolute;
	right: 19px;
	top: 18px;
	width: 18px;
	height: 14px;
	text-indent: -9999em;
	background: url("../../Content/images/icon/check.png") no-repeat 0 0;
}
/* ë¦¬ìŠ¤íŠ¸í˜• ========== */
.movie_select_wrap.list ul>li>a {
	padding: 15px 20px;
}

.movie_select_wrap.list ul>li .bx_thm {
	display: none;
}

.movie_select_wrap.list ul>li .group_infor .bx_tit:after {
	content: "";
	display: block;
	clear: both;
}

.movie_select_wrap.list ul>li .group_infor .bx_tit .ic_grade {
	position: absolute;
	left: 20px;
	top: 12px;
}

.movie_select_wrap.list ul>li .group_infor .bx_tit .tit {
	display: block;
	overflow: hidden;
	width: 250px;
	padding-left: 30px;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.movie_select_wrap.list ul>li .group_infor dl {
	display: none;
}

/* ì˜ˆë§¤ : 01ìƒì˜ì‹œê°„/ë‚ ì§œ,ì‹œê°„ ============================== */
/* ì˜ˆë§¤ë‚ ì§œì„ íƒ ========== */
.date_select_wrap { /*overflow:hidden;*/
	height: 75px;
	margin: 22px 20px 10px;
}

.date_select_wrap .swiper-container {
	padding: 0 20px;
}

.date_select_wrap .swiper-button-prev {
	left: 0;
	margin-top: 0px;
}

.date_select_wrap .swiper-button-next {
	right: 0;
	margin-top: 0px;
}

.date_select_wrap .month {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	text-align: center;
	font-size: 10px;
}

.date_select_wrap .date {
	display: block;
	position: relative;
	padding-top: 20px;
}

.date_select_wrap .date label {
	display: block;
	cursor: pointer;
}

.date_select_wrap .date label input[type="radio"] {
	overflow: hidden;
	position: absolute;
	width: 1px;
	height: 1px;
	clip: rect(0, 0, 0, 0);
}

.date_select_wrap .date label strong {
	display: block;
	width: 30px;
	height: 30px;
	line-height: 30px;
	margin: 0 auto;
	border-radius: 50%;
	font-family: 'Roboto';
	font-size: 15px;
	text-align: center;
}

.date_select_wrap .date label em {
	display: block;
	margin-top: 10px;
	font-size: 12px;
	text-align: center;
}

.date_select_wrap .date label input[type="radio"]:checked+strong {
	font-weight: bold;
	color: #fff;
	background: #000;
}

.date_select_wrap .date.sat {
	color: #233CA3;
}

.date_select_wrap .date.sun {
	color: #F24A6A;
}

.date_select_wrap .date.disabled label strong, .date_select_wrap .date.disabled label em
	{
	color: #CCC;
}

.date_select_wrap .slide_reserve_date {
	padding: 0 20px;
}
/* ì˜ˆë§¤ì‹œê°„ì„ íƒ ========== */
.group_time_select {
	margin-top: 30px;
}
/* ì˜í™”ì œëª© */
.time_select_tit {
	font-size: 15px;
}

.time_select_tit .ic_grade {
	margin-right: 5px;
}

.time_select_wrap {
	margin-top: 20px;
}

.time_select_wrap .txt_infor {
	margin-bottom: 8px;
	color: #666;
}
/* ìƒì˜ì˜í™”ê´€ì¢…ë¥˜ */
.time_select_wrap ul.list_hall {
	margin-bottom: 5px;
}

.time_select_wrap ul.list_hall:after {
	content: "";
	display: block;
	clear: both;
}

.time_select_wrap ul.list_hall li {
	display: block;
	position: relative;
	float: left;
	margin-left: 6px;
	padding-left: 6px;
	font-size: 13px;
}

.time_select_wrap ul.list_hall li:before {
	content: "";
	position: absolute;
	top: 3px;
	left: 0;
	height: 9px;
	border-left: 1px solid #DDD;
}

.time_select_wrap ul.list_hall li:first-child {
	margin-left: 0;
	padding-left: 0;
}

.time_select_wrap ul.list_hall li:first-child:before {
	display: none;
}
/* ì‹œê°„ì„ íƒ */
.time_select_wrap ul.list_time:after {
	content: "";
	display: block;
	clear: both;
}

.time_select_wrap ul.list_time li {
	float: left;
	width: 23.5%;
	margin: 0 0 11px 2%;
}

.time_select_wrap ul.list_time li:nth-child(4n+1) {
	margin-left: 0;
}

.time_select_wrap ul.list_time li>a {
	display: block;
	position: relative;
	height: 33px;
	padding: 8px 14px 5px;
	border-radius: 4px;
	border: 1px solid #ddd;
	cursor: pointer;
	background: #f8f8f8;
	background: -moz-linear-gradient(top, rgba(255, 255, 255, 1) 0%,
		rgba(248, 248, 248, 1) 100%);
	background: -webkit-linear-gradient(top, rgba(255, 255, 255, 1) 0%,
		rgba(248, 248, 248, 1) 100%);
	background: linear-gradient(to bottom, rgba(255, 255, 255, 1) 0%,
		rgba(248, 248, 248, 1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#ffffff",
		endColorstr="#f8f8f8", GradientType=0);
}

.time_select_wrap ul.list_time li>a dl dt {
	overflow: hidden;
	position: absolute !important;
	width: 1px;
	height: 1px;
	clip: rect(1px, 1px, 1px, 1px);
}

.time_select_wrap ul.list_time li>a dl dd.time {
	margin-bottom: 5px;
	font-family: 'Roboto';
	font-size: 11px;
}

.time_select_wrap ul.list_time li>a dl dd.time strong {
	display: block;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}

.time_select_wrap ul.list_time li>a dl dd.seat {
	font-family: 'Roboto';
	font-size: 11px;
	color: #666;
}

.time_select_wrap ul.list_time li>a dl dd.seat strong {
	color: #427652;
}

.time_select_wrap ul.list_time li>a dl dd.hall {
	position: absolute;
	right: 15px;
	bottom: 5px;
	font-size: 11px;
}

.time_select_wrap ul.list_time li>a dl dd.hall strong {
	font-family: 'Roboto';
}
/* í™œì„± */
.time_select_wrap ul.list_time li.active>a:before {
	content: "ì„ íƒ";
	overflow: hidden;
	position: absolute;
	top: 0px;
	right: 0px;
	width: 1px;
	height: 1px;
}

.time_select_wrap ul.list_time li.bixbi>a {
	background: #fffee3;
}
/* case */
.time_select_wrap ul.list_time li>a .txt_ntc {
	position: absolute;
	width: 1px;
	height: 1px;
	text-indent: -9999em;
}

.time_select_wrap ul.list_time li>a .txt_ntc.ic {
	top: 3px;
	right: 3px;
	width: 12px;
	height: 12px;
}

.time_select_wrap ul.list_time li.morning>a .txt_ntc.ic {
	background: url("../../Content/images/icon/time_sun.png") no-repeat 0 0;
}

.time_select_wrap ul.list_time li.night>a .txt_ntc.ic {
	background: url("../../Content/images/icon/time_moon.png") no-repeat 0 0;
}

.time_select_wrap ul.list_time li.near>a dl dd.seat strong {
	color: #F24A6A;
}

.time_select_wrap ul.list_time li.full>a dl dd.seat strong {
	color: #F24A6A;
}

.time_select_wrap ul.list_time li.disabled>a {
	pointer-events: none;
	cursor: default;
}

.time_select_wrap ul.list_time li.disabled>a dl {
	opacity: 0.4;
}

.time_select_wrap ul.list_time li.active>a, .time_select_wrap ul.list_time li>a:focus
	{
	border: 1px solid #000;
}
/* tooltip */
.time_select_wrap ul.list_time li>a dl .tooltip {
	display: none;
	position: absolute;
	left: 50%;
	top: -41px;
	height: 32px;
	line-height: 34px;
	margin-left: -38px;
	padding: 0 8px;
	border-radius: 4px;
	font-family: 'Roboto';
	font-size: 13px;
	color: #FFF;
	white-space: nowrap;
	background-color: #333;
}

.time_select_wrap ul.list_time li>a dl .tooltip:before {
	content: "";
	position: absolute;
	left: 50%;
	bottom: -7px;
	width: 0px;
	height: 0px;
	margin-left: -6px;
	border-top: 4px solid #333;
	border-bottom: 4px solid transparent;
	border-right: 4px solid transparent;
	border-left: 4px solid transparent;
}

.time_select_wrap ul.list_time li>a:hover dl .tooltip, .time_select_wrap ul.list_time li>a:focus dl .tooltip
	{
	display: block;
}
/* customizing : layer_wrap ========== */
/*
.layer_wrap.active.layer_reserve_sum {right:0; bottom:0; width:498px;}
.layer_wrap.layer_reserve_sum .layer_footer a,
.layer_wrap.layer_reserve_sum .layer_footer button {width:150px; margin:0 8px; padding:0;}
*/
/* popup : ì˜ˆë§¤ : 01ìƒì˜ì‹œê°„/ ========== */
.seat_infor_sum {
	text-align: center;
}

.seat_infor_sum .group_top dl dt {
	display: inline-block;
	font-size: 16px;
}

.seat_infor_sum .group_top dl dd {
	display: inline-block;
	font-size: 13px;
}

.seat_infor_sum .group_top dl dd strong {
	font-family: 'Roboto';
	font-size: 22px;
	font-weight: bold;
}

.seat_infor_sum .group_con {
	padding: 20px 0;
}

.seat_infor_sum .group_btm .txt_notice .tit {
	margin-bottom: 5px;
	font-size: 13px;
	color: #111;
	line-height: 1.3
}

.seat_infor_sum .group_btm .txt_notice .tit .ic_grade {
	margin-right: 5px;
}

.seat_infor_sum .group_btm .txt_notice .txt {
	line-height: 1.4;
	font-size: 11px;
	color: #666;
	letter-spacing: -0.5px;
}

.seat_infor_sum .group_btm .txt_notice .txt.ty2 {
	margin-top: 15px;
	text-align: left;
}

.seat_infor_sum .group_btm .txt_notice .txt.ty2 ul li {
	font-size: 11px;
}

.seat_infor_sum .group_btm .txt_notice .txt.ty2 ul ul {
	margin-top: 5px;
}

.seat_infor_sum .group_btm .txt_notice .txt.ty2 ul ul li {
	font-weight: 100
}

.seat_infor_sum .group_btm .txt_notice.gr_all strong {
	border-bottom: 1px solid #5BC77E;
	color: #5BC77E;
}

.seat_infor_sum .group_btm .txt_notice.gr_12 strong {
	border-bottom: 1px solid #4DD6FF;
	color: #4DD6FF;
}

.seat_infor_sum .group_btm .txt_notice.gr_15 strong {
	border-bottom: 1px solid #FFC134;
	color: #FFC134;
}

.seat_infor_sum .group_btm .txt_notice.gr_18 strong {
	border-bottom: 1px solid #ED4C6B;
	color: #ED4C6B;
}

/* ì˜ˆë§¤ : 02ì¸ì›ì¢Œì„ ============================================================ */
/* ì˜ˆë§¤ : 02ì¸ì›ì¢Œì„ ============================== */
/* ì¸ì›ì„ íƒ ========== */
.select_num_people_wrap {
	overflow: hidden;
	height: 117px;
	padding: 0 20px;
	background-color: #FFF;
}
/* ì¢Œì„ì„ íƒ ========== */
/* ì¸ì›ì„ íƒ */
.select_num_people_wrap .movie_infor {
	position: relative;
	float: left;
	width: 270px;
	padding: 30px 0 0 54px;
}

.select_num_people_wrap .movie_infor .thm {
	display: block;
	overflow: hidden;
	position: absolute;
	top: 26px;
	left: 0;
	overflow: hidden;
	width: 46px;
	height: 65px;
	border-radius: 4px;
}

.select_num_people_wrap .movie_infor .thm img {
	width: 100%;
}

.select_num_people_wrap .movie_infor .group_infor .bx_tit {
	display: block;
	margin-bottom: 10px;
}

.select_num_people_wrap .movie_infor .group_infor .bx_tit .ic_grade {
	margin: -5px 4px 0 0;
}

.select_num_people_wrap .movie_infor .group_infor .bx_tit strong {
	font-size: 17px;
}

.select_num_people_wrap .movie_infor .group_infor dl {
	position: relative;
}

.select_num_people_wrap .movie_infor .group_infor dl dt {
	overflow: hidden;
	position: absolute !important;
	width: 1px;
	height: 1px;
	clip: rect(1px, 1px, 1px, 1px);
}

.select_num_people_wrap .movie_infor .group_infor dl dd.sub_info1 {
	display: block;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	margin-bottom: 5px;
	font-size: 11px;
}

.select_num_people_wrap .movie_infor .group_infor dl dd.sub_info1 .time
	{
	position: relative;
	padding-left: 9px;
	margin-left: 10px;
}

.select_num_people_wrap .movie_infor .group_infor dl dd.sub_info1 .time:before
	{
	content: "";
	display: block;
	position: absolute;
	top: 3px;
	left: 0;
	width: 1px;
	height: 10px;
	background: #ddd
}

.select_num_people_wrap .movie_infor .group_infor dl dd.sub_info1 em {
	font-size: 10px;
}

.select_num_people_wrap .movie_infor .group_infor dl dd.sub_info2 {
	font-size: 10px;
}

.select_num_people_wrap .count_people {
	float: right;
	width: 825px;
	margin-top: 36px;
}

.select_num_people_wrap .count_people>ul:after {
	content: "";
	display: block;
	clear: both;
}

.select_num_people_wrap .count_people>ul>li {
	float: left;
	margin-left: 20px;
}

.select_num_people_wrap .count_people>ul>li:first-child {
	margin-left: 0
}

.select_num_people_wrap .count_people>ul>li .tit {
	margin-right: 8px;
	font-size: 13px;
}

.select_num_people_wrap .count_people>ul>li .bx_num {
	display: inline-block;
	width: 100px;
}
/* ì¢Œì„ì„ íƒ */
.select_seat_wrap {
	overflow: hidden;
	height: 638px;
	color: #FFF;
	background-color: #000;
}

.select_seat_wrap .top_txt_info {
	margin: 15px 0 25px;
	text-align: center;
}

.select_seat_wrap .top_txt_info p {
	position: relative;
	display: inline-block;
	padding-left: 9px;
	color: #fff;
	font-size: 11px;
}

.select_seat_wrap .top_txt_info p:before {
	content: "";
	display: block;
	position: absolute;
	top: 6px;
	left: 0;
	width: 3px;
	height: 1px;
	background: #fff;
}

.select_seat_wrap .seat_wrap .mseat_wrap .mseat_inner .floor_bx.seatSet2 .seat_area
	{
	height: auto !important;
	min-height: 70px;
} /* 2019.12.31 */
/* ì„ íƒê²°ê³¼ ========== */
.select_seat_result {
	overflow: hidden;
	height: 60px;
	color: #FFF;
	background-color: #888;
}

.select_seat_result .group_lft {
	float: left;
}

.select_seat_result .group_rgt {
	float: right;
}

.select_seat_result dl {
	padding: 16px 0 0 30px;
}

.select_seat_result a {
	float: left;
	width: 180px;
	height: 60px;
	line-height: 60px;
	border-radius: 0;
	border: none;
	font-size: 15px;
}

/* ì˜ˆë§¤ : 03ê²°ì œ ============================================================ */
/* ì˜ˆë§¤ : 03ê²°ì œ/ì˜ˆë§¤ì •ë³´ ============================== */
/* ì˜í™”ì •ë³´ */
.article_sum_infor .movie_infor {
	padding: 30px 30px 18px;
	border-bottom: 1px solid #DDD;
}

.article_sum_infor .movie_infor .thm {
	display: block;
	overflow: hidden;
	margin-bottom: 30px;
	border-radius: 4px;
}

.article_sum_infor .movie_infor .thm img {
	width: 100%;
}

.article_sum_infor .movie_infor .tit {
	display: block;
	margin-bottom: 10px;
	font-size: 17px;
}

.article_sum_infor .movie_infor .tit .ic_grade {
	margin-top: -3px;
}
/* ì¢Œì„ì •ë³´ */
.article_sum_infor .seat_infor {
	padding: 24px 30px 15px;
	border-bottom: 1px solid #DDD;
}
/* ì¢Œì„ë°°ì¹˜ë„ */
.article_sum_infor .seat_minimap_wrap {
	position: relative;
	padding: 30px 0 20px;
}

.article_sum_infor .seat_minimap_wrap .smallScreen {
	right: 10px;
	top: 20px;
	padding: 0;
	background: #FFF;
}

.article_sum_infor .seat_minimap_wrap .smallScreen .title_screen1 {
	color: #B2B2B2;
	background: none;
}

.article_sum_infor .seat_minimap_wrap .smallScreen .floor_bx .seat_area .sel>span
	{
	position: relative;
	background: #C2C2C2;
}

.article_sum_infor .seat_minimap_wrap .smallScreen .floor_bx .seat_area .sel>.completed:before
	{
	background: #FF243E;
}

.article_sum_infor .seat_minimap_wrap .smallScreen .floor_bx {
	position: relative;
	padding: 18px 0;
}

.article_sum_infor .seat_minimap_wrap .smallScreen .floor_bx .floor_tit
	{
	position: absolute;
	right: 0;
	top: 0;
}

.article_sum_infor .seat_minimap_wrap .smallScreen .floor_bx.seatSet2 {
	border-top: 2px dashed #B2B2B2;
}

.article_sum_infor .seat_minimap_wrap .smallScreen .floor_bx.seatSet2 .floor_tit
	{
	top: auto;
	bottom: 0;
}

/* dlist */
.article_sum_infor dl.dlist_infor:after {
	content: "";
	display: block;
	clear: both;
}

.article_sum_infor dl.dlist_infor dt {
	clear: both;
	float: left;
	min-width: 40px;
	margin-bottom: 7px;
	font-size: 11px;
}

.article_sum_infor dl.dlist_infor dd {
	float: left;
	margin-bottom: 7px;
	font-size: 11px;
	width: 200px;
	word-break: keep-all;
}

.article_sum_infor dl.dlist_infor dd strong {
	font-size: 11px;
}

.article_sum_infor dl.dlist_infor dd span {
	position: relative;
	margin-left: 5px;
	padding-left: 5px;
}

.article_sum_infor dl.dlist_infor dd span:before {
	content: "";
	position: absolute;
	left: 0;
	top: 3px;
	height: 10px;
	border-left: 1px solid #DDD;
}

/* ì˜ˆë§¤ : 03ê²°ì œ/ê²°ì œìˆ˜ë‹¨ : ê³µí†µ ============================== */
/* title */
.article_pay_method .tit_payment {
	display: block;
	margin: 18px 0 16px;
	font-size: 15px;
}
/* */
.list_pay_item {
	margin: 0 -1%;
}

.list_pay_item:after {
	content: "";
	display: block;
	clear: both;
}

.list_pay_item li {
	float: left;
	margin: 0 1% 10px;
}

.list_pay_item li button {
	width: 100%;
	border-radius: 4px;
	background-color: #FFF;
}

.list_pay_item li button.active {
	border-color: #000;
}

.list_pay_item li button.disabled {
	opacity: 0.5;
	pointer-events: none;
}

.list_pay_item li button.disabled.active:after {
	display: none;
}

.list_pay_item li button.ty2:after {
	display: none;
}

.list_pay_item.cate3 li {
	width: 31.333%;
}

.list_pay_item.cate4 li {
	position: relative;
	width: 23%;
}

.list_pay_item li .tag_youngjinwii {
	position: absolute;
	top: -30px;
	left: 3px;
	width: 104px;
	height: 28px;
	background: url('../../Content/images/payment/tag_youngjinwii.svg') 0 0
		no-repeat;
	background-size: 100%;
	font: 0 auto;
	z-index: 1;
}

.list_pay_item.cate5 li {
	width: 18%;
}

/* ì˜ˆë§¤ : 03ê²°ì œ/ê²°ì œìˆ˜ë‹¨/í• ì¸,í¬ì¸íŠ¸ ============================== */
/* í¬ì¸íŠ¸í• ì¸ ========== */
.group_discount {
	min-height: 365px;
	padding: 15px 30px;
	border-bottom: 1px solid #EEE;
}
/* select_item_wrap ========== */
.group_discount .select_item_wrap .group_item {
	margin-bottom: 15px;
	border-radius: 4px;
	border: 1px solid #DDD;
	background-color: #FFF;
}

.group_discount .select_item_wrap .group_item .bx_item {
	position: relative;
	padding: 12px 15px;
}

.group_discount .select_item_wrap .group_item .bx_item:after {
	content: "";
	display: block;
	clear: both;
}

.group_discount .select_item_wrap .group_item .bx_item input[type="checkbox"]
	{
	position: absolute;
}

.group_discount .select_item_wrap .group_item .bx_item input[type="checkbox"]+label
	{
	display: block;
	float: left;
	width: auto;
	font-family: 'Roboto';
	font-size: 13px;
}

.group_discount .select_item_wrap .group_item .bx_item input[type="checkbox"]+label strong
	{
	margin-left: 5px;
	color: #2AA3FE;
}

.group_discount .select_item_wrap .group_item .bx_item .area_btn {
	position: absolute;
	right: 15px;
	top: 15px;
}

.group_discount .select_item_wrap .group_item .bx_item .area_inp {
	position: absolute;
	right: 15px;
	top: 7px;
}

.group_discount .select_item_wrap .group_item .bx_item .area_inp input {
	width: 90px;
	height: 30px;
	line-height: 30px;
	padding-right: 18px;
	font-family: 'Roboto';
	font-size: 13px;
	font-weight: bold;
	text-align: right;
}

.group_discount .select_item_wrap .group_item .bx_item .area_inp span {
	position: absolute;
	right: 10px;
	top: 0;
	line-height: 30px;
	font-family: 'Roboto';
	font-size: 13px;
	font-weight: bold;
}

.group_discount .select_item_wrap .group_item .group_side {
	position: relative;
	padding: 12px 15px;
	border-top: 1px solid #EEE;
}

.group_discount .select_item_wrap .group_item .group_side .group_certifacate
	{
	position: relative;
}

.group_discount .select_item_wrap .group_item .group_side .group_certifacate>.tit
	{
	display: block;
	margin-bottom: 10px;
	font-size: 13px;
	font-weight: bold;
}

.group_discount .select_item_wrap .group_item .group_side .group_certifacate .area_inp
	{
	margin-bottom: 5px;
}

.group_discount .select_item_wrap .group_item .group_side .group_certifacate .area_inp input
	{
	width: 240px;
	height: 45px;
}

.group_discount .select_item_wrap .group_item .group_side .group_certifacate .area_btn
	{
	position: absolute;
	right: 0;
	bottom: 10px;
}

.group_discount .select_item_wrap .group_item .group_side .btn_btm_wrap
	{
	margin-top: 0;
	margin-bottom: 0;
	padding: 10px 0 0;
}

.group_discount .select_item_wrap .group_item .group_side .btn_btm_wrap a,
	.group_discount .select_item_wrap .group_item .group_side .btn_btm_wrap button
	{
	width: 122px;
}

.group_discount .select_item_wrap .group_item .group_side .btn_btm_wrap a.active,
	.group_discount .select_item_wrap .group_item .group_side .btn_btm_wrap button.active
	{
	border: 1px solid #000;
}

.pos_re {
	position: relative;
}

.ic_txt_sale {
	display: none;
	position: absolute;
	right: -5px;
	top: -8px;
	line-height: 1;
	padding: 3px 5px;
	border-radius: 4px;
	font-family: 'Roboto';
	font-size: 11px;
	color: #FFF;
	background-color: #FF243E;
}

.ic_txt_sale:after {
	content: "";
	position: absolute;
	bottom: -20px;
	left: 20px;
	width: 10px;
	height: 20px;
}

.ic_txt_sale.active {
	display: block;
}

.disabled .ic_txt_sale {
	background-color: #CCC;
}

.disabled.active .ic_txt_sale {
	background-color: #FF243E;
}

/* ì¿ í°í• ì¸ ========== */
/* ì¿ í°ì¢…ë¥˜ */
.group_discount .wrap_coupon .bx_cate .list_pay_item li button {
	overflow: visible;
	position: relative;
	height: 55px;
	line-height: 55px;
	font-size: 11px;
}

.group_discount .wrap_coupon .bx_cate .list_pay_item .txt_cnt {
	position: absolute;
	right: 4px;
	top: 4px;
	width: 15px;
	height: 15px;
	line-height: 15px;
	border-radius: 15px;
	font-family: 'Roboto';
	font-size: 10px;
	font-weight: bold;
	color: #fff;
	text-align: center;
	background-color: #000;
}

.group_discount .wrap_coupon .bx_cate .list_pay_item li button.active:after
	{
	content: "";
	position: absolute;
	left: 50%;
	bottom: -5px;
	width: 7px;
	height: 5px;
	margin-left: -3px;
	background: url("../../Content/images/payment/bg_boxarrow.png")
		no-repeat;
}

.group_discount .wrap_coupon .bx_cate .list_pay_item li button.disabled .txt_cnt
	{
	background-color: #ccc;
}
/* ì¿ í°ëª©ë¡ */
.group_discount .wrap_coupon .bx_coupon.active {
	display: block;
}

.group_discount .wrap_coupon .bx_coupon .list_pay_item li {
	margin-bottom: 8px;
}

.group_discount .wrap_coupon .bx_coupon .list_pay_item li button {
	height: 52px;
	border-radius: 2px;
	font-size: 11px;
}

.group_discount .wrap_coupon .bx_coupon .list_pay_item li button span {
	display: table-cell;
	width: 95px;
	height: 50px;
	vertical-align: middle;
}
/* ìˆ˜ì • 3.1 ========== */
.group_discount {
	padding: 0 18px;
	border-top: 5px solid #f8f8f8;
}

.group_discount .bx_fieldset {
	margin: 20px 0;
	padding: 0 18px;
}

.group_discount .bx_fieldset .tit_fieldset {
	margin: 18px 0 8px;
	font-size: 13px;
}

.group_discount .bx_fieldset .tit_fieldset .point {
	font-family: 'Roboto'
}

.group_discount .bx_fieldset .tit_fieldset .point strong {
	color: #2AA3FE;
}

.group_discount .bx_fieldset .bx_group {
	margin: 18px 0;
}

.group_discount .bx_fieldset .bx_inp_txt {
	margin-bottom: 10px;
}

.group_discount .bx_fieldset .bx_inp_txt input[type="text"],
	.group_discount .bx_fieldset .bx_inp_txt input[type="password"] {
	width: 100%;
}

.group_discount .bx_fieldset .bx_inp_txt.side_btn input[type="text"],
	.group_discount .bx_fieldset .bx_inp_txt.side_btn input[type="password"]
	{
	width: 298px;
}

.group_discount .bx_fieldset .bx_inp_txt.side_btn a, .group_discount .bx_fieldset .bx_inp_txt.side_btn button
	{
	width: auto;
	min-width: 100px;
	margin-left: 10px;
	padding: 0 10px;
	white-space: nowrap;
}

.group_discount .bx_fieldset .btn_btm_wrap {
	margin: 20px 0 10px;
}

.group_discount .bx_fieldset .bx_btm_infor {
	position: relative;
	margin: 20px 0 0;
}

.group_discount .bx_fieldset .bx_btm_infor:after {
	content: "";
	display: block;
	clear: both;
}

.group_discount .bx_fieldset .bx_btm_infor .bx_lft {
	float: left;
}

.group_discount .bx_fieldset .bx_btm_infor .bx_rgt {
	float: right;
}

.group_discount .bx_fieldset .bx_btm_infor .tooltip_box .tit_tooltip {
	font-size: 13px;
}

.group_discount .bx_fieldset .bx_btm_infor .tooltip_box .tooltip {
	left: -18px;
	right: -18px;
	width: auto;
	padding: 20px;
}

.group_discount .bx_fieldset .bx_btm_infor .tooltip_box .tooltip .tit {
	display: block;
	margin-bottom: 8px;
}

.group_discount .bx_side_btn {
	margin: 10px 0;
}

.group_discount .bx_side_btn .btn_btm_wrap {
	margin-top: 10px;
	margin-bottom: 10px;
}

.group_discount .bx_discount_method {
	margin: 10px 0;
}

.group_discount .bx_discount_method .bx_cate {
	margin: 10px 0;
}

/* ì˜ˆë§¤ : 03ê²°ì œ/ê²°ì œìˆ˜ë‹¨/ìµœì¢…ê²°ì œìˆ˜ë‹¨ ============================== */
.group_payment {
	padding: 15px 30px;
}
/* ìµœì¢…ê²°ì œìˆ˜ë‹¨ ì¢…ë¥˜ */
.group_payment .bx_cate .list_pay_item li button {
	overflow: visible;
	position: relative;
	height: 68px;
	line-height: 95px;
	background-repeat: no-repeat;
}

.group_payment .bx_cate .list_pay_item li button.cate1 {
	background-image: url("../../Content/images/payment/method_ic_card.png");
	background-position: center 17px;
}

.group_payment .bx_cate .list_pay_item li button.cate2 {
	background-image:
		url("../../Content/images/payment/method_ic_lpay_20210407.png");
	background-position: center 17px;
} /* 2020.03.17 */
.group_payment .bx_cate .list_pay_item li button.cate3 {
	background-image:
		url("../../Content/images/payment/method_ic_simple.png");
	background-position: center 17px;
}

.group_payment .bx_cate .list_pay_item li button.cate4 {
	background-image:
		url("../../Content/images/payment/method_ic_phone.png");
	background-position: center 14px;
}

.group_payment .bx_cate .list_pay_item li button img {
	margin-top: 42px;
}

.group_payment .bx_cate .list_pay_item li button.active:after {
	content: "";
	position: absolute;
	left: 50%;
	bottom: -5px;
	width: 7px;
	height: 5px;
	margin-left: -3px;
	background: url("../../Content/images/payment/bg_boxarrow.png")
		no-repeat;
}

.group_payment .toggle_wrap .toggle_tit .btn_toggle {
	top: 10px;
}

.group_payment .bx_cate .list_pay_item li button.disabled:after {
	content: "";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: 0.5;
	border-radius: 4px;
}
/* ìµœì¢…ê²°ì œìˆ˜ë‹¨ : ì‹ ìš©ì¹´ë“œ */
.article_pay_card {
	margin: 5px 0;
}

.article_pay_card .list_pay_item li button {
	position: relative;
	height: 55px;
}

.article_pay_card .list_pay_item li button .thm {
	position: absolute;
	left: 50%;
	top: 10px;
	margin-left: -9px;
	width: 18px;
	height: 18px;
}

.article_pay_card .list_pay_item li button .thm img {
	vertical-align: top;
}

.article_pay_card .list_pay_item li button .tit {
	display: block;
	padding-top: 20px;
	font-size: 10px;
}

.article_pay_card .list_pay_item+.blt_txt2 {
	margin-top: 18px;
}

.article_pay_card .radius_box {
	margin-top: 15px;
}
/* ìµœì¢…ê²°ì œìˆ˜ë‹¨ : lpay */
.article_pay_lcard {
	margin: 5px 0;
}

.article_pay_lcard .list_pay_item li {
	position: relative;
}

.article_pay_lcard .list_pay_item li input[type="radio"] {
	position: absolute;
}

.article_pay_lcard .list_pay_item li input[type="radio"]+label {
	display: block;
	position: relative;
	height: 90px;
	padding: 10px;
	color: #000;
	border: 1px solid #DDD;
	border-radius: 4px;
	background-color: #FFF;
	box-sizing: border-box;
	background: #FFF
		url("../../Content/images/payment/txt_lpay_27_gry_20210407.png")
		no-repeat 95px 70px;
}

.article_pay_lcard .list_pay_item li input[type="radio"]+label:before {
	position: absolute;
	right: 10px;
	top: 10px;
	margin-right: 0;
}

.article_pay_lcard .list_pay_item li input[type="radio"]:disabled+label.disabled
	{
	opacity: 0.3;
	pointer-events: none;
}

.article_pay_lcard .list_pay_item li label .tit {
	display: block;
	margin-top: 2px;
	font-size: 12px;
	font-weight: bold;
}

.article_pay_lcard .list_pay_item li label .txt {
	display: block;
	opacity: .6;
	margin-top: 4px;
	font-size: 11px;
}

.article_pay_lcard .list_pay_item li input[type="radio"]:checked+label {
	border-color: #2B93E2;
	color: #FFF;
	background-color: #2AA3FE;
	background-image:
		url("../../Content/images/payment/txt_lpay_27_wht_20210407.png");
}

.article_pay_lcard .list_pay_item li.add button {
	display: block;
	width: 100%;
	height: 90px;
	box-sizing: border-box;
	padding-top: 30px;
	border: 1px solid #DDD;
	border-radius: 4px;
	font-size: 11px;
	background: #FFF url("../../Content/images/icon/plus_15.png") no-repeat
		center 26px;
}
/* ìµœì¢…ê²°ì œìˆ˜ë‹¨ : ê°„íŽ¸ê²°ì œ */
.article_pay_simple {
	margin: 5px 0;
}

.article_pay_simple .list_pay_item li {
	text-align: center;
}

.article_pay_simple .list_pay_item li button {
	height: 45px;
}

.article_pay_simple .list_pay_item li button img {
	vertical-align: middle;
}

.article_pay_simple .list_pay_item li span {
	display: block;
	margin-top: 5px;
	font-size: 10px;
	color: #666;
}

.article_pay_simple .bx_con {
	margin: 20px 0 10px;
}

.article_pay_simple .bx_con .tit {
	display: block;
	margin-bottom: 10px;
	font-size: 13px;
}

.article_pay_simple .bx_con .txt {
	line-height: 1.4;
	font-size: 11px;
	color: #666;
}

.article_pay_simple .pay_simple_npay_bx {
	display: none;
}

.article_pay_simple .pay_simple_npay_bx li {
	margin: 0 0 5px 6px;
	text-indent: -6px;
	font-size: 11px;
	color: #666;
	line-height: 1.4;
}

.article_pay_simple .pay_simple_npay_bx li:last-child {
	margin-bottom: 0;
}
/* ê°„íŽ¸ê²°ì œ ê°œì„  */
.article_pay_simple .list_pay_item li .pay_simple_btn_box {
	height: 55px;
}

.article_pay_simple .list_pay_item li button .pay_simple_thm {
	margin-top: 0;
}

.article_pay_simple .toggle_wrap {
	display: none;
}

.article_pay_simple .toggle_wrap.active {
	display: block;
}

/* ì¿ í°,ê´€ëžŒê¶Œ ëª©ë¡ */
.pay_coupon_list_wrap .list_pay_coupon li {
	position: relative;
	margin-top: 10px;
}

.pay_coupon_list_wrap .list_pay_coupon li:first-child {
	margin-top: 0;
}

.pay_coupon_list_wrap .list_pay_coupon li .list_inner:after {
	content: "";
	display: block;
	clear: both;
}

.pay_coupon_list_wrap .list_pay_coupon li .list_inner .bx_cate {
	float: left;
	min-width: 48px;
}

.pay_coupon_list_wrap .list_pay_coupon li .list_inner .bx_con {
	float: left;
}

.pay_coupon_list_wrap .list_pay_coupon li>input[type="checkbox"] {
	position: absolute;
}

.pay_coupon_list_wrap .list_pay_coupon li>input[type="checkbox"]+label.ty2
	{
	display: block;
	padding: 15px;
	border-radius: 4px;
	border: 1px solid #DDD;
}

.pay_coupon_list_wrap .list_pay_coupon li>input[type="checkbox"]+label.ty2:before
	{
	position: absolute;
	right: 15px;
	top: 20px;
}

.pay_coupon_list_wrap .list_pay_coupon li>input[type="checkbox"]+label.chkdisbled
	{
	display: block;
	padding: 15px;
	border-radius: 4px;
	border: 1px solid #DDD;
}

.pay_coupon_list_wrap .list_pay_coupon li>input[type="checkbox"]+label.chkdisbled:before
	{
	display: none;
}

.pay_coupon_list_wrap .list_pay_coupon li>input[type="checkbox"]:checked+label.ty2
	{
	border-color: #000;
}

.pay_coupon_list_wrap .list_pay_coupon li>label .tit {
	display: block;
	font-size: 13px;
}

.pay_coupon_list_wrap .list_pay_coupon li>label .tit .txt_new.ty2 {
	margin-top: -1px;
	vertical-align: top;
}

.pay_coupon_list_wrap .list_pay_coupon li>label .period {
	display: block;
	margin-top: 8px;
	font-size: 11px;
	color: #666;
}

.pay_coupon_list_wrap .list_pay_coupon li>label .txt {
	display: block;
	margin-top: 8px;
	font-size: 12px;
}

.pay_coupon_list_wrap .list_pay_coupon li>label select {
	position: absolute;
	right: 50px;
	top: 20px;
}

.pay_coupon_list_wrap .list_pay_coupon li>label dl:after {
	content: "";
	display: block;
	clear: both;
}

.pay_coupon_list_wrap .list_pay_coupon li>label dl dt {
	clear: both;
	float: left;
	margin: 3px 0;
	font-size: 11px;
}

.pay_coupon_list_wrap .list_pay_coupon li>label dl dt:after {
	content: ":";
	display: inline-block;
	margin: 0 5px;
}

.pay_coupon_list_wrap .list_pay_coupon li>label dl dd {
	float: left;
	margin: 3px 0;
	font-size: 11px;
}

.pay_coupon_list_wrap .list_pay_coupon li>label dl dd strong.num {
	font-family: 'Roboto';
}

.pay_coupon_list_wrap .pay_coupon_nodata {
	padding: 15px 0;
	font-size: 11px;
	text-align: center;
	background-color: #F8F8F8;
}

.bx_etc1 {
	margin: 10px 0;
}

.bx_etc1 .bx_notice_txt {
	line-height: 1.6;
	margin: 10px 0;
	font-size: 13px;
	text-align: center;
}

/* ì˜ˆë§¤ : 03ê²°ì œ/ê²°ì œí•˜ê¸° ============================== */
/* ì ë¦½ */
.article_payment .select_item_wrap .group_item {
	padding: 10px 0 25px 0;
	border-bottom: 1px solid #DDD;
	background-color: #FFF;
}

.article_payment .select_item_wrap .group_item .bx_item {
	position: relative;
	padding: 15px 30px 10px;
}

.article_payment .select_item_wrap .group_item .bx_item:after {
	content: "";
	display: block;
	clear: both;
}

.article_payment .select_item_wrap .group_item .bx_item input[type="checkbox"]
	{
	position: absolute;
}

.article_payment .select_item_wrap .group_item .bx_item input[type="checkbox"]+label
	{
	display: block;
	float: left;
	width: auto;
	font-family: 'Roboto';
	font-size: 13px;
}

.article_payment .select_item_wrap .group_item .bx_item input[type="checkbox"]+label strong
	{
	margin-left: 5px;
	color: #2AA3FE;
}

.article_payment .select_item_wrap .group_item .bx_item .area_rdo {
	position: absolute;
	right: 30px;
	top: 15px;
}

.article_payment .select_item_wrap .group_item .bx_item .area_rdo span {
	margin-left: 10px;
}

.article_payment .select_item_wrap .group_item .bx_item .area_inp {
	position: absolute;
	right: 30px;
	top: 7px;
}

.article_payment .select_item_wrap .group_item .bx_item .area_inp input
	{
	width: 90px;
	height: 30px;
	line-height: 30px;
	padding-right: 18px;
	font-family: 'Roboto';
	font-size: 13px;
	font-weight: bold;
	text-align: right;
}

.article_payment .select_item_wrap .group_item .bx_item .area_inp span {
	position: absolute;
	right: 10px;
	top: 0;
	line-height: 30px;
	font-family: 'Roboto';
	font-size: 13px;
	font-weight: bold;
}

.article_payment .select_item_wrap .group_item .group_side {
	position: relative;
	padding: 0 30px;
}

.article_payment .select_item_wrap .group_item .group_side .area_rdo {
	padding: 10px 0;
}

.article_payment .select_item_wrap .group_item .group_side .area_rdo span
	{
	margin-right: 10px;
}

.article_payment .select_item_wrap .group_item .tooltip_box {
	margin: 2px 0 0 5px;
}

.article_payment .select_item_wrap .group_item .tooltip_box .tooltip {
	top: 44px;
	right: 0;
	width: auto;
}
/* ê²°ì œëŒ€í–‰ì„œë¹„ìŠ¤ ì•½ê´€ë™ì˜ */
.bx_provision {
	padding: 10px 15px;
	background-color: #F8F8F8;
}

.bx_provision .provision_list li {
	position: relative;
	padding: 5px 0;
}

.bx_provision .provision_list li input[type="checkbox"] {
	position: absolute;
}

.bx_provision .provision_list li input[type="checkbox"]+label {
	line-height: 20px;
}

.bx_provision .provision_list .btn_txt_more {
	position: absolute;
	right: 0;
	top: 10px;
	background-position: right 4px;
}
/* ê²°ì œìˆ˜ë‹¨ í˜œíƒ ì•ˆë‚´ */
.benifit_infor_wrap {
	padding: 30px;
}

.benifit_infor_wrap .tit_payment {
	margin-top: 0;
	padding-bottom: 10px;
	font-size: 15px;
}

.benifit_infor_wrap dl {
	position: relative;
	margin-top: 6px;
}

.benifit_infor_wrap dl:after {
	content: "";
	display: block;
	clear: both;
}

.benifit_infor_wrap dt {
	float: left;
	width: 95px;
	font-size: 11px;
}

.benifit_infor_wrap dt .add_icon {
	width: 10px;
	height: 11px;
	margin-right: 8px;
	vertical-align: top;
}

.benifit_infor_wrap dt .add_icon>img {
	width: 10px;
	height: 11px;
}

.benifit_infor_wrap dt em {
	display: inline-block;
	width: 70px;
	vertical-align: top;
}

.benifit_infor_wrap dt img {
	vertical-align: top;
}

.benifit_infor_wrap dd {
	float: left;
	line-height: 1.3;
	font-size: 11px;
	color: #666;
}

.benifit_infor_wrap dd strong {
	color: #000;
}
/* ê²°ì œí•˜ê¸° */
.payment_sum_wrap {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #414141;
}

.payment_sum_wrap dl {
	padding: 10px 30px;
	border-top: 1px solid rgba(255, 255, 255, .2);
}

.payment_sum_wrap dl:after {
	content: "";
	display: block;
	clear: both;
}

.payment_sum_wrap dl:first-child {
	border-top: none;
}

.payment_sum_wrap dl dt {
	clear: both;
	float: left;
	line-height: 25px;
	padding: 4px 0;
	font-size: 13px;
	color: #FFF;
}

.payment_sum_wrap dl dd {
	float: right;
	clear: right;
	line-height: 25px;
	padding: 4px 0;
	font-size: 11px;
	color: #FFF;
}

.payment_sum_wrap dl dd strong {
	display: inline-block;
	line-height: 25px;
	margin: 0 4px 0 8px;
	font-family: 'Roboto';
	font-size: 17px;
	font-weight: bold;
	vertical-align: bottom;
}

.payment_sum_wrap dl dd .txt_col8 {
	width: 68px;
	line-height: 25px;
	margin-right: 25px;
	border-color: rgba(255, 255, 255, .15);
	vertical-align: bottom;
}

.payment_sum_wrap .btn_confirm {
	display: block;
	border-radius: 0;
	height: 64px;
	line-height: 64px;
	font-size: 17px;
}

.layer_pay_term .txtarea_box {
	overflow-y: scroll;
	height: 300px;
	line-height: 1.4;
	padding: 20px;
	border-bottom: 1px solid #CCC;
}

.layer_pay_term .txtarea_box .title, .layer_pay_term .txtarea_box .sub_tit
	{
	font-size: 15px;
}

.layer_pay_term .txtarea_box .sub_tit, .layer_pay_term .txtarea_box .txt,
	.layer_pay_term .txtarea_box .list {
	margin-top: 18px
}

.layer_pay_term .txtarea_box .txt+.list {
	margin-top: 0;
}

.layer_pay_term .layer_pay_term .btn_btm_wrap {
	margin: 10px 0;
}

/* ì˜ˆë§¤ : 03ê²°ì œ/íŒì—…/ì˜í™”ê´€ì˜ˆë§¤ì•ˆë‚´ ============================== */
.cinema_pay_infor .infor_thm {
	margin-bottom: 20px;
}

.cinema_pay_infor .infor_thm img {
	width: 100%;
}

.cinema_pay_infor .infor_con {
	margin-top: 20px;
}

.cinema_pay_infor .infor_con .tit_infor {
	padding-bottom: 10px;
	border-bottom: 1px solid #DDD;
	text-align: center;
}

.cinema_pay_infor .infor_con .tit_infor strong {
	font-size: 18px;
}

.cinema_pay_infor .infor_con .con_infor {
	padding: 20px 0;
}

.cinema_pay_infor .infor_con .con_infor .bx_article {
	margin-bottom: 20px;
}

.cinema_pay_infor .infor_con .con_infor .bx_article .tit_article {
	display: block;
	margin-bottom: 8px;
	font-size: 15px;
}

.cinema_pay_infor .infor_con .con_infor .bx_article .bx_con {
	padding: 0 0 0 10px;
}

.cinema_pay_infor .infor_con .con_infor .bx_article .bx_con .tit {
	margin-bottom: 4px;
	font-size: 13px;
	color: #414141;
}

.cinema_pay_infor .infor_con .con_infor .bx_article .bx_con .txt {
	line-height: 1.4;
	margin-bottom: 8px;
	font-size: 11px;
	color: #8B8B8B;
}

/* ì˜ˆë§¤ : 04ê²°ì œì™„ë£Œ ============================================================ */
/* ì˜ˆë§¤ : 04ê²°ì œì™„ë£Œ/ë³¸ë¬¸ ============================== */
.payment_fin_wrap {
	width: 685px;
	margin: 0 auto;
}

.payment_fin_wrap .btn_btm_wrap {
	margin: 50px 0 0;
}

.top_notice_ic {
	margin: 50px 0 20px;
	padding-top: 52px;
	font-size: 15px;
	text-align: center;
	background-repeat: no-repeat;
	background-position: center top;
}

.top_notice_ic.ty1 {
	background-image: url("../../Content/images/icon/top_notice_ic_01.png");
}
/* ì˜ˆë§¤ì •ë³´ ========== */
.reserve_result_wrap {
	position: relative;
	width: 605px;
	margin: 18px 0;
	padding: 40px 40px 25px;
	border-radius: 4px;
	border: 1px solid #DDD;
	background-color: #FFF;
}

.reserve_result_wrap:after {
	content: "";
	position: absolute;
	left: 15px;
	right: 15px;
	bottom: -1px;
	height: 6px;
	background: url("../../Content/images/member/bg_ticket.gif") repeat-x 0
		bottom;
}

.reserve_result_wrap .infor_wrap:after {
	content: "";
	display: block;
	clear: both;
}

.reserve_result_wrap .infor_wrap .bx_thm {
	overflow: hidden;
	float: left;
	width: 150px;
	height: 215px;
	margin-right: 50px;
	border-radius: 4px;
}

.reserve_result_wrap .infor_wrap .bx_thm img {
	width: 100%;
}

.reserve_result_wrap .infor_wrap .group_infor {
	float: left;
	margin-top: -4px;
}

.reserve_result_wrap .infor_wrap .group_infor dl {
	margin: 0 0 10px 0;
}

.reserve_result_wrap .infor_wrap .group_infor dl:after {
	content: "";
	display: block;
	clear: both;
}

.reserve_result_wrap .infor_wrap .group_infor dl dt {
	clear: both;
	float: left;
	width: 86px;
	line-height: 1.4;
	margin: 4px 0;
	font-size: 15px;
}

.reserve_result_wrap .infor_wrap .group_infor dl dd {
	float: left;
	width: 315px;
	line-height: 1.4;
	margin: 4px 0;
	font-size: 15px;
	color: #666;
}

.reserve_result_wrap .infor_wrap .group_infor dl dd strong.txt_num {
	font-family: 'Roboto';
	color: #000;
}

.reserve_result_wrap .infor_wrap .group_infor .btn_col1 {
	margin-left: 86px;
}

.reserve_result_wrap .infor_wrap .group_infor dl:first-child {
	padding-bottom: 10px;
	border-bottom: 1px solid #333;
}
/* ê²°ì œì •ë³´ ========== */
.reserve_result_wrap .payment_wrap {
	margin-top: 30px;
	padding-top: 20px;
	border-top: 1px solid #DDD;
}

.reserve_result_wrap .payment_wrap:after {
	content: "";
	display: block;
	clear: both;
}

.reserve_result_wrap .payment_wrap .group_price {
	position: relative;
	float: left; /*height:80px;*/
	padding: 0 25px;
	border-right: 1px dashed #DDD;
} /* 2020.03.02 */
.reserve_result_wrap .payment_wrap .group_price.case1 {
	width: 135px;
	padding-left: 0;
}

.reserve_result_wrap .payment_wrap .group_price.case1:after {
	content: "";
	position: absolute;
	right: -10px;
	top: 0;
	width: 21px;
	height: 21px;
	background: url("../../Content/images/icon/ic_rnd_21_01.png") no-repeat;
	z-index: 1;
}

.reserve_result_wrap .payment_wrap .group_price.case2 {
	width: 150px;
}

.reserve_result_wrap .payment_wrap .group_price.case2:after {
	content: "";
	position: absolute;
	right: -10px;
	top: 0;
	width: 21px;
	height: 21px;
	background: url("../../Content/images/icon/ic_rnd_21_02.png") no-repeat;
}

.reserve_result_wrap .payment_wrap .group_price.case3 {
	width: 215px;
	padding-right: 0;
	border-right: 0;
}

.reserve_result_wrap .payment_wrap dl:after {
	content: "";
	display: block;
	clear: both;
}

.reserve_result_wrap .payment_wrap dl dt {
	clear: both;
	float: left;
	line-height: 1.4;
	margin: 2px 0 6px;
	font-size: 13px;
}

.reserve_result_wrap .payment_wrap dl dd {
	float: right;
	line-height: 1.4;
	margin: 2px 0 6px;
	font-size: 13px;
}

.reserve_result_wrap .payment_wrap dl dd strong {
	font-family: 'Roboto';
}
/* dl.sml */
.reserve_result_wrap .payment_wrap dl.sml {
	margin-top: 10px;
}

.reserve_result_wrap .payment_wrap dl.sml dt {
	font-size: 11px;
}

.reserve_result_wrap .payment_wrap dl.sml dd {
	font-size: 11px;
}

.reserve_result_wrap .payment_wrap dl.sml dd .txt_card1 {
	margin-top: -3px;
}
/* ê²°ì œë°©ë²• */
.reserve_result_wrap .payment_wrap .pay_method dl dt {
	overflow: hidden;
	position: absolute;
	float: left;
	width: 1px;
	height: 1px;
}

.reserve_result_wrap .payment_wrap .pay_method dl dd {
	float: left;
}

.reserve_result_wrap .payment_wrap .pay_method dl dd.last {
	float: right;
}

/* ì˜ˆë§¤ : 04ê²°ì œì™„ë£Œ/íŒì—… : ì ë¦½,ì‹ ì²­ ============================== */
/* ìƒë‹¨ë¬¸êµ¬ */
.layer_saving_request .top_notice_ic {
	margin: 0 0 30px;
	padding-top: 32px;
	padding-bottom: 10px;
	border-bottom: 1px solid #DDD;
	font-size: 13px;
	background-size: 28px auto;
}
/* í˜„ê¸ˆì˜ìˆ˜ì¦ ì¢…ë¥˜ */
.group_saving_cash .bx_cate .list_pay_item li button {
	position: relative;
	height: 68px;
	line-height: 95px;
	background-repeat: no-repeat;
}

.group_saving_cash .bx_cate .list_pay_item li button.cate1 {
	background-image:
		url("../../Content/images/payment/method_ic_phone.png");
	background-position: center 17px;
}

.group_saving_cash .bx_cate .list_pay_item li button.cate2 {
	background-image:
		url("../../Content/images/payment/method_ic_simple.png");
	background-position: center 15px;
}

.group_saving_cash .bx_cate .list_pay_item li button.cate3 {
	background-image:
		url("../../Content/images/payment/method_ic_simple.png");
	background-position: center 17px;
}

.group_saving_cash .bx_cate .list_pay_item li button img {
	margin-top: 42px;
}

.group_saving_cash .bx_cate .list_pay_item li button.active:after {
	content: "";
	position: absolute;
	left: 50%;
	bottom: -5px;
	width: 7px;
	height: 5px;
	margin-left: -3px;
	background: url("../../Content/images/payment/bg_boxarrow.png")
		no-repeat;
}
/* í˜„ê¸ˆì˜ìˆ˜ì¦ ë°©ë²• */
.group_saving_cash .bx_method_tit {
	position: relative;
	margin: 20px -1% 10px;
}

.group_saving_cash .bx_method_tit dl:after {
	content: "";
	display: block;
	clear: both;
}

.group_saving_cash .bx_method_tit dl dt {
	float: left;
	margin: 0 1%;
	padding: 10px 0;
	font-size: 11px;
	text-align: center;
	background-color: #EAEAEA;
}

.group_saving_cash .bx_method_tit dl dt.tit_1_3 {
	width: 31.33%;
}

.group_saving_cash .bx_method_tit dl dt.tit_2_3 {
	width: 64.66%;
}

.group_saving_cash .bx_method_tit dl dd {
	position: absolute;
	left: 0;
	top: 0;
	text-indent: -9999em;
}

.nonCinemaSpecialText {
	margin: -30px 0 10px 6px;
}
/* ì¶”ê°€ 20191231 */
/* ë§ˆì´íŽ˜ì´ì§€ ìƒë‹¨ ìˆ˜ì •*/
.vip_top_infor .my_info .profile_img {
	box-shadow: 0px 5px 10px 3px #d3d3d4;
}

.my_info .profile_img {
	box-shadow: 0px 5px 10px 3px #d3d3d4;
}
/* ë“±ê¸‰ë‹¬ì„±ê²Œì´ì§€ ìˆ˜ì • */
.area_gauge .infograde {
	position: relative;
}

.area_gauge .infograde li {
	position: absolute;
	top: 8px;
	font-size: 13px;
}

.area_gauge .infograde li:first-child {
	left: 0;
}

.area_gauge .infograde li:last-child {
	right: 0;
}

.area_gauge .infograde li>* {
	display: inline-block;
}

.area_gauge .infograde li strong {
	position: absolute;
	top: -30px;
	right: 0;
	width: 200px;
	font-family: "Roboto";
	font-weight: 600;
	text-align: right;
}

.area_gauge .infograde li:first-child strong {
	left: 0;
	color: #666666;
	font-weight: normal;
	text-align: left;
}

.area_gauge .infograde li span+em {
	margin-left: 4px;
}

.area_gauge .infograde li em {
	font-family: "Roboto";
	font-size: 13px;
	color: #000000;
}

.area_gauge .infograde li em.won {
	font-family: "Noto Sans KR"
}

.area_gauge .infograde li.active span, .area_gauge .infograde li.active em
	{
	font-weight: 400;
}
/* vip zone ìˆ˜ì • */
.rank_2020_wrap .rank_2020_list_ty2 {
	position: relative;
	margin-top: 20px;
	border-top: 1px solid #bbb;
}

.rank_2020_wrap .rank_2020_list_ty2::before {
	content: '';
	position: absolute;
	left: 0;
	top: 79px;
	width: 100%;
	height: 1px;
	background-color: #bbb;
}

.rank_2020_wrap .rank_2020_list_ty2::after {
	display: block;
	content: '';
	clear: both;
}

.rank_2020_wrap .rank_2020_list_ty2 dl {
	float: left;
	width: 22%;
	text-align: center;
}

.rank_2020_wrap .rank_2020_list_ty2 dl.tit {
	width: 12%;
}

.rank_2020_wrap .rank_2020_list_ty2 dl dt {
	margin-bottom: 16px;
	padding-top: 40px;
}

.rank_2020_wrap .rank_2020_list_ty2 dl dd {
	padding: 28px 0;
	font-size: 15px;
	border-bottom: 1px solid #eee;
}

.rank_2020_wrap .rank_2020_list_ty2 dl dd em {
	font-family: "Roboto";
}

.benefit_wrap .benefit_box_ty2 {
	margin-top: 60px;
}

.benefit_wrap .benefit_box_ty2::after {
	display: block;
	content: '';
	clear: both;
}

.benefit_wrap .benefit_box_ty2>li {
	position: relative;
	float: left;
	padding: 56px 25px 30px;
	width: 230px;
	font-size: 12px;
	border-radius: 4px;
	border: 1px solid #ddd;
	background-color: #f8f8f8;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.benefit_wrap .benefit_box_ty2>li ~ li {
	margin-left: 19px;
}

.benefit_wrap .benefit_box_ty2 .benefit .tit {
	padding-bottom: 8px;
	font-size: 15px;
	border-bottom: 1px solid #000;
}

.benefit_wrap .benefit_box_ty2 .benefit .tit span {
	margin-left: 5px;
	font-size: 11px;
}

.benefit_wrap .benefit_box_ty2 .benefit .list {
	padding-left: 6px;
	padding-right: 12px;
}

.benefit_wrap .benefit_box_ty2 strong+.benefit .tit+.list {
	min-height: 70px;
}

.benefit_wrap .benefit_box_ty2 strong+.benefit .tit+.list.type1 {
	min-height: 40px;
}

.benefit_wrap .benefit_box_ty2 .benefit .tit+.list {
	padding-top: 12px;
}

.benefit_wrap .benefit_box_ty2 .benefit .list+.list {
	min-height: 48px;
}

.benefit_wrap .benefit_box_ty2 .benefit+.benefit {
	margin-top: 28px;
}

.benefit_wrap .benefit_box_ty2 .benefit .list li {
	position: relative;
	line-height: 25px;
}

.benefit_wrap .benefit_box_ty2 .benefit .list li ~ li {
	margin-top: 4px;
}

.benefit_wrap .benefit_box_ty2 .benefit .list strong {
	font-size: 13px;
}

.benefit_wrap .benefit_box_ty2 .benefit .list strong::before {
	display: inline-block;
	content: 'Â·';
	padding-right: 4px;
}

.benefit_wrap .benefit_box_ty2 .benefit .list span {
	position: absolute;
	right: 0;
	top: 0;
	font-size: 13px;
}

.benefit_wrap .benefit_box_ty2 .benefit .list span::before {
	content: '';
	position: absolute;
	right: 35px;
	top: 7px;
	width: 11px;
	height: 11px;
	background: url('../images/icon/cross_11.png') no-repeat;
}

.benefit_wrap .benefit_box_ty2 .benefit .list span.bgnone::before {
	background: none
}

.benefit_wrap .benefit_box_ty2 .benefit .list span em {
	font-size: 18px;
	font-family: "Roboto";
}

.benefit_wrap .benefit_box_ty2 .benefit .list ~ .list {
	padding-top: 15px;
	border-top: 1px dashed #ddd;
}

.benefit_wrap .benefit_box_ty2 .benefit .list li.vodinfolink {
	line-height: 20px
}

.benefit_wrap .benefit_box_ty2 .benefit .list li.vodinfolink .secondline
	{
	display: block;
	padding-left: 5px;
}

.mypage_event_box_ty2 {
	margin-top: 100px;
	padding-left: 140px;
	height: 255px;
	background: url('../images/member/bg_vip_event.jpg') repeat;
}

.mypage_event_box_ty2::after {
	display: block;
	content: '';
	clear: both;
}

.mypage_event_box_ty2 li {
	float: left;
	width: 200px;
	padding-left: 70px;
}

.mypage_event_box_ty2 li:first-child {
	padding-left: 0;
}

.mypage_event_box_ty2 li a {
	display: block;
	position: relative;
	padding-top: 110px;
	padding-left: 6spx;
}

.mypage_event_box_ty2 li em {
	font-family: "Roboto";
	letter-spacing: 0;
}

.mypage_event_box_ty2 li .thm {
	position: absolute;
	left: 0;
	top: -40px;
}

.mypage_event_box_ty2 li .num {
	display: block;
	width: 42px;
	height: 17px;
	color: #fff;
	line-height: 17px;
	font-size: 11px;
	text-align: center;
	background-color: #786D4C;
}

.mypage_event_box_ty2 li .cont {
	margin-top: 8px;
	line-height: 20px;
	font-size: 16px;
	letter-spacing: -.5px;
}

.mypage_event_box_ty2 li .cont .tip {
	display: block;
	margin-top: 8px;
	font-size: 11px;
	font-family: "Roboto";
	letter-spacing: 0;
	line-height: 15px;
}

.mypage_event_box_ty2.case4 {
	padding-left: 5px;
}

.mypage_event_box_ty2.case4 li {
	width: 204px;
	padding-left: 53px;
}

.mypage_event_box_ty2.case4 li:last-child {
	padding-left: 0;
}
/* í…ìŠ¤íŠ¸ ëž­í¬ */
/* [class*="txt_rank"] {display: inline-block;padding: 0 12px;min-width: 48px;height: 24px;color: #fff;line-height: 24px;font-size: 11px;font-weight: bold;text-align: center;font-family: "Roboto";border-radius: 25px;border: 1px solid #fff;box-sizing: border-box;-webkit-box-sizing: border-box;} ì‚­ì œ 2020.02.07 */
.txt_rank_common {
	background-color: #AFAFAF;
}

.txt_rank_vip {
	background-color: #675448;
}

.txt_rank_vvip {
	background-color: #969697;
}

.txt_rank_vipgold {
	background-color: #756023;
}

.txt_rank_vipplatinum {
	background-color: #000;
}

.ic_rank_vip {
	color: #666;
	background: url('../images/member/ic_rank_vip3.png') #fff no-repeat
		center 23px;
}

.ic_rank_vvip {
	color: #666;
	background: url('../images/member/ic_rank_vvip.png') #fff no-repeat
		center 21px;
}

.ic_rank_vip, .ic_rank_vvip, .ic_rank_gold, .ic_rank_platinum {
	box-shadow: 0px 5px 10px 3px #e6e6e6;
}

.btn_col4_ty1 {
	display: inline-block;
	min-height: 25px;
	line-height: 26px;
	padding: 0 17px;
	box-sizing: border-box;
	border: 1px solid #dddddd;
	border-radius: 52px;
	font-size: 11px;
	color: #000;
	text-align: center;
	vertical-align: middle;
	background-color: #fff;
}

.btn_col2.ty6.link {
	padding: 0 45px;
}

.btnwrap {
	text-align: center;
	padding-top: 50px;
}
/* ë“±ê¸‰í‘œ êµ¬í˜•ì²´ */
[class*="rankbox_"] {
	position: relative;
	margin-bottom: 11px;
	padding-top: 38px;
	width: 64px;
	height: 64px;
	color: #B27456;
	font-size: 10px;
	font-family: "Roboto";
	text-align: center;
	border-radius: 64px;
	background-color: #000;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

[class*="rankbox_"]::before {
	content: '';
	position: absolute;
	left: 50%;
	bottom: 33px;
	margin-left: -14px;
	width: 29px;
	height: 15px;
	background: url('../images/member/ic_rank_vip.png') no-repeat;
}

[class*="rankbox_"]::after {
	content: '';
	position: absolute;
	left: 50%;
	top: 70px;
	margin-left: -18px;
	width: 36px;
	height: 7px;
	background: url('../images/member/shadow_36.png') no-repeat;
}

.rankbox_vip {
	color: #B27456;
}

.rankbox_vip::before {
	margin-left: -14px;
	width: 29px;
	height: 15px;
	background: url('../images/member/ic_rank_vip.png') no-repeat;
}

.rankbox_vvip {
	color: #D4D1C9;
}

.rankbox_vvip::before {
	margin-left: -16px;
	width: 34px;
	height: 18px;
	background: url('../images/member/ic_rank_vvip2.png') no-repeat;
}

.rankbox_gold {
	color: #B6A36C;
}

.rankbox_gold::before {
	margin-left: -22px;
	width: 46px;
	height: 23px;
	background: url('../images/member/ic_rank_gold2.png') no-repeat;
}

.rankbox_platinum {
	color: #AFAFAE;
}

.rankbox_platinum::before {
	margin-left: -16px;
	width: 35px;
	height: 23px;
	background: url('../images/member/ic_rank_platinum2.png') no-repeat;
}

.rankbox_normal {
	color: #C5C4C3;
}

.rankbox_normal::before {
	margin-left: -22px;
	bottom: 29px;
	width: 46px;
	height: 23px;
	background: url('../images/member/ic_rank_normal.png') no-repeat;
}
/* ì¿ í°ë‹¤ìš´ë¡œë“œ íŒì—… */
.vip_coupon_box [class*="rankbox_"] {
	margin: 0 auto 6px;
}

.vip_coupon_box .tit {
	display: block;
	padding-top: 10px;
	font-size: 18px;
	text-align: center;
}

.vip_coupon_box .txt {
	display: block;
	margin-top: 4px;
	font-size: 12px;
	text-align: center;
}

.vip_coupon_box .txt_ty2 {
	display: block;
	margin-top: 4px;
	font-size: 12px;
	color: #666;
	text-align: center;
}

.vip_coupon_box .txt em {
	font-family: "Roboto";
}

.total_coupon {
	position: relative;
	margin: 15px auto 0;
	width: 300px;
	height: 40px;
	line-height: 40px;
	font-size: 0;
	border-radius: 4px;
	background-color: #fafafa;
}

.total_coupon::after {
	content: '';
	position: absolute;
	left: 50%;
	top: 50%;
	margin-top: -6px;
	width: 1px;
	height: 13px;
	background-color: #ddd;
}

.total_coupon .coupon {
	display: inline-block;
	width: 50%;
	font-size: 13px;
	text-align: center;
}

.total_coupon .coupon em {
	font-size: 11px;
	font-family: "Roboto";
}

.layer_wrap .layer_contents.ty2 {
	padding: 30px 45px
}

.basic_list dl dd .coupon {
	color: #000
}

.basic_list dl dd.bgnone:before {
	content: '';
	margin-right: 0;
}

.benefit_list_box .quantity.bgnone::before {
	background: none
}

.layer_wrap .layer_header.ty2 {
	border-bottom: 0;
	background-color: #F5F5F5;
}

.layer_wrap .notice_box.ty2 {
	background-color: #F5F5F5;
}

/* 2020.01.02 popup : VIP ì§„ìž…ì‹œ ëœ¨ëŠ” íŒì—…, 2ì›”ë§ì— ì—†ì–´ì§ˆ ì˜ˆì •ì´ë¼í•¨ ë‚´ìš© í™•ì¸ í›„ ì‚­ì œí•˜ë©´ë¨ */
.banner_layer_wrap.vip_into {
	position: fixed;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	margin: 0;
	background-color: rgba(0, 0, 0, .5);
	z-index: 9999;
}

.banner_layer_wrap.vip_into .conts-wrap {
	position: relative;
	top: 12%;
	left: 50%;
	width: 470px;
	margin-left: -13%;
}

.banner_layer_wrap.vip_into .conts-wrap .link_goto {
	position: absolute;
	left: 125px;
	top: 539px;
	width: 221px;
	height: 42px;
	font: 0/0 a;
}

.banner_layer_wrap.vip_into .conts-wrap button {
	position: absolute;
	right: 26px;
	top: 28px;
	width: 34px;
	height: 34px;
	font: 0/0 a;
	border: 0;
	background: none;
}

.banner_layer_wrap.vip_into img {
	width: 100%;
}
/* //2020.01.02 popup : VIP ì§„ìž…ì‹œ ëœ¨ëŠ” íŒì—…, 2ì›”ë§ì— ì—†ì–´ì§ˆ ì˜ˆì •ì´ë¼í•¨ ë‚´ìš© í™•ì¸ í›„ ì‚­ì œí•˜ë©´ë¨ */

/* ì£¼ë¬¸/ê²°ì œ : ì¶”ê°€ìƒí’ˆ êµ¬ë§¤ 2020.08.14 */
.article_sum_infor .movie_infor.new2020 .thm {
	margin-bottom: 20px;
	text-align: center
}

.article_sum_infor .movie_infor.new2020 .thm img {
	width: 120px
}

.article_sum_infor .addprodlistwrap {
	position: relative;
	padding: 25px 20px 25px 30px;
}

.article_sum_infor .addprodlistwrap .tit {
	padding-bottom: 5px;
	font-size: 13px;
	line-height: 18px;
}

.addprodlistwrap .mCustomScrollbar {
	width: 250px;
	height: 360px;
	padding-right: 18px;
}

.addprodlistwrap .addprodlist {
	width: 240px;
}

.addprodlistwrap .addprodlist .pay_movie_infor {
	display: flex;
	position: relative;
	min-height: 80px;
	padding: 10px 0;
	border-bottom: 1px solid #eee;
	background-color: #fff;
	box-sizing: border-box;
}

.addprodlistwrap .pay_movie_infor .bx_infor .badge_wrap {
	display: inline-block;
	padding-bottom: 3px;
}

.addprodlistwrap .pay_movie_infor .img_product {
	min-height: 68px;
	margin-right: 10px;
	line-height: 68px;
}

.addprodlistwrap .pay_movie_infor .img_product .thm {
	display: inline-block;
	overflow: hidden;
	width: 72px;
	height: 58px;
	vertical-align: middle;
}

.addprodlistwrap .pay_movie_infor .img_product .thm img {
	width: 100%;
	height: 100%;
}

.addprodlistwrap .pay_movie_infor .img_product+.bx_infor {
	display: flex;
	flex: 1;
	flex-flow: column;
	justify-content: center;
}

.addprodlistwrap .pay_movie_infor .bx_infor .between_txt {
	display: initial;
	font-size: 11px;
	text-align: right
}

.addprodlistwrap .pay_movie_infor .bx_infor .between_txt .pay,
	.addprodlistwrap .pay_movie_infor .bx_infor .between_txt .num {
	font-family: 'Roboto';
	font-size: 17px;
	font-weight: normal
}
/* ì£¼ë¬¸/ê²°ì œ : ì„ íƒìƒí’ˆ ë³€ê²½í•˜ê¸° 2020.08.14 */
.addprodlistwrap .addprodlist li {
	position: relative;
}

.addprodlistwrap .addprodlist li .pay_movie_infor .btn_close {
	position: absolute;
	top: 10px;
	right: 0;
	width: 20px;
	height: 20px;
	background: url('../../Content/images/icon/icon_close_addproddel.png') 0
		0;
	background-size: 100%;
	font: 0 auto;
}

.addprodlistwrap .prodchange {
	position: absolute;
	top: 20px;
	right: 30px;
	font-size: 11px;
}
/* ê²°ì œì™„ë£Œ 2020.08.14 */
.reserve_result_wrap .infor_wrap .group_infor dl dd li {
	line-height: 24px;
}

.reserve_result_wrap .payment_wrap.new2020 .group_price {
	border-right: 0;
}

.reserve_result_wrap .payment_wrap.new2020 .group_price.case1:after {
	display: none;
}

.reserve_result_wrap .payment_wrap.new2020 .group_price.case2 {
	border-right: 1px solid #DDD;
	border-left: 1px dashed #DDD;
}

.reserve_result_wrap .payment_wrap.new2020 .group_price .minus,
	.reserve_result_wrap .payment_wrap.new2020 .group_price .plus {
	position: relative;
}

.reserve_result_wrap .payment_wrap.new2020 .group_price .minus::before,
	.reserve_result_wrap .payment_wrap.new2020 .group_price .plus::before {
	content: "";
	position: absolute;
	left: -36px;
	top: 0;
	width: 21px;
	height: 21px;
}

.reserve_result_wrap .payment_wrap.new2020 .group_price .minus::before {
	background: url("../../Content/images/icon/ic_rnd_21_01.png") no-repeat;
}

.reserve_result_wrap .payment_wrap.new2020 .group_price .plus::before {
	background: url("../../Content/images/icon/icon_rnd_plus.png") no-repeat;
}

.reserve_result_wrap .payment_wrap.new2020 .group_price .plus dt {
	margin-bottom: 15px;
}
/* íŒì—… : ì¶”ê°€ìƒí’ˆ êµ¬ë§¤ 2020.08.14 */
.layer_wrap.active.layer_pay_addprodbuy_infor {
	position: absolute;
	left: 50%;
	top: 55px;
	width: 700px;
	margin-left: -405px;
}

.layer_wrap.active.layer_pay_addprodbuy_infor .layer_contents.scroll {
	overflow-y: hidden;
	padding: 10px 25px 5px 25px;
	padding-right: 0;
}

.layer_wrap.active.layer_pay_addprodbuy_infor .layer_contents.scroll .mCustomScrollbar
	{
	height: 500px;
	padding-right: 30px;
}

.layer_wrap .layer_foot {
	padding: 15px 30px;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.addprodpay:after {
	content: '';
	display: block;
	clear: both;
}

.addprodpay .tit, .addprodpay .desc {
	position: relative;
}

.addprodpay .tit {
	float: left;
	font-size: 15px;
	line-height: 33px;
}

.addprodpay .desc {
	float: right;
	font-size: 20px
}

.addprodpay .desc .paysum {
	padding-left: 10px;
	padding-right: 5px;
	font-family: 'Roboto';
	font-size: 30px;
	vertical-align: -3px;
}

.txt_redcolor02 {
	color: #E5153C;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info {
	display: flex;
	position: relative;
	min-height: 80px;
	padding: 20px 0 30px 0;
	background-color: #fff;
	box-sizing: border-box;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .img_product {
	min-height: 68px;
	margin-right: 25px;
	line-height: 68px;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .img_product .thm {
	display: inline-block;
	overflow: hidden;
	width: 150px;
	height: 122px;
	vertical-align: middle;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .img_product .thm img {
	width: 100%;
	height: 100%;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .img_product+.bx_infor
	{
	display: flex;
	flex: 1;
	flex-flow: column;
	justify-content: center;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_infor .badge_wrap {
	display: inline-block;
	padding-bottom: 5px;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_infor .between_txt
	{
	display: initial;
	padding-top: 10px;
	font-size: 11px;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_infor .between_txt .pay,
	.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_infor .between_txt .num
	{
	font-family: 'Roboto';
	font-size: 17px;
	font-weight: 600
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_infor .badge_wrap,
	.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_infor .between_txt,
	.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_infor .tit,
	.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_infor .txt {
	width: 260px;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_infor .tit {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	padding-bottom: 10px;
	font-size: 20px;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_infor .txt {
	font-size: 12px;
	line-height: 18px;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .inner {
	position: absolute;
	top: 50%;
	right: 0;
	margin-top: -24px;
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_num {
	width: 148px
}

.layer_pay_addprodbuy_infor .pay_addprodbuy_info .bx_num .txt_num {
	padding: 15px 0;
}

.layer_pay_addprodbuy_infor .wrap_pay_addprodbuy_info {
	padding-bottom: 10px;
	border-bottom: 1px solid #ccc;
}

.layer_pay_addprodbuy_infor .wrap_pay_addprodbuy_info .icon_arrowup,
	.layer_pay_addprodbuy_infor .wrap_pay_addprodbuy_info .icon_arrowdown {
	display: inline-block;
	position: absolute;
	right: 0;
	top: 90%;
	width: 11px;
	height: 36px;
	margin-left: 5px;
	margin-top: -10px;
	background: url('../../Content/images/icon/icon_arrowup.png');
	background-repeat: no-repeat;
	background-position: 0 50%;
	background-size: 100%;
	transform: rotate(0deg);
	transition: all ease .3s;
}

.layer_pay_addprodbuy_infor .wrap_pay_addprodbuy_info .icon_arrowup.active
	{
	transform: rotate(180deg);
}

.layer_pay_addprodbuy_infor .wrap_pay_addprodbuy_info .useinfo {
	display: none;
	padding: 20px 20px 15px 20px;
	margin: 10px 0;
	background-color: #F8F8F8;
	border: 1px solid #eee;
	border-radius: 4px
}

.layer_pay_addprodbuy_infor .wrap_pay_addprodbuy_info .useinfo.active {
	display: block
}

.layer_pay_addprodbuy_infor .wrap_pay_addprodbuy_info .useinfo .noti_box
	{
	position: relative;
	padding: 0;
}

.layer_pay_addprodbuy_infor .wrap_pay_addprodbuy_info .useinfo .noti_box .addnoti
	{
	position: absolute;
	top: 0;
	right: 0;
	padding: 0 20px;
	font-size: 12px;
	background-color: #fff;
	border: 1px solid #DDDDDD;
}

.layer_pay_addprodbuy_infor .wrap_pay_addprodbuy_info .useinfo .noti_box .tit
	{
	height: 25px;
	margin-bottom: 10px;
	line-height: 25px;
}

.layer_pay_addprodbuy_infor .wrap_pay_addprodbuy_info .useinfo .noti_box .list_txt
	{
	font-size: 11px;
}

.layer_pay_addprodbuy_infor .box_info {
	width: 645px;
	padding: 15px 0;
	border-bottom: 1px solid #ccc;
}
/* ë§ˆì´íŽ˜ì´ì§€ ê²°ì œë‚´ì—­ 2020.08.14 */
.ticket_info.new2020 .ticket .info_area .info dd .addinfo {
	display: block;
	font-size: 11px;
	line-height: 18px;
}

.ticket_info.new2020 .payment_area .total_pay .pay_area .pay,
	.ticket_info.new2020 .payment_area .total_pay .pay_area .minus,
	.ticket_info.new2020 .payment_area .total_pay .pay_area .plus {
	position: relative;
}

.ticket_info.new2020 .payment_area .total_pay .pay_area .minus::before,
	.ticket_info.new2020 .payment_area .total_pay .pay_area .plus::before {
	content: "";
	position: absolute;
	left: -34px;
	top: -3px;
	width: 21px;
	height: 21px;
}

.ticket_info.new2020 .payment_area .total_pay .pay_area .pay::before,
	.ticket_info.new2020 .payment_area .total_pay .pay_area .minus::before
	{
	background: url("../../Content/images/icon/ic_rnd_21_01.png") no-repeat;
}

.ticket_info.new2020 .payment_area .total_pay .pay_area .plus::before {
	background: url("../../Content/images/icon/icon_rnd_plus.png") no-repeat;
}

.ticket_info.new2020 .payment_area .total_pay .pay_area .minus::after,
	.ticket_info.new2020 .payment_area .total_pay .pay_area .plus::after {
	content: '';
	display: block;
	clear: both;
}

.ticket_info.new2020 .payment_area .total_pay .pay_area dt {
	float: left;
}

.ticket_info.new2020 .payment_area .total_pay .pay_area .minus dt,
	.ticket_info.new2020 .payment_area .total_pay .pay_area .plus dt {
	font-size: 13px;
}

.ticket_info.new2020 .payment_area .total_pay .pay_area .minus dd,
	.ticket_info.new2020 .payment_area .total_pay .pay_area .plus dd {
	float: right
}

.ticket_info.new2020 .payment_area .total_pay .pay_area .minus em,
	.ticket_info.new2020 .payment_area .total_pay .pay_area .plus em {
	font-family: 'Roboto';
	font-weight: bold;
}

.ticket_info.new2020 .payment_area .pay_area.dotline {
	border-right: 1px dashed #e6e6e6;
	border-left: 1px dashed #e6e6e6;
}

.ticket_info.new2020 .payment_area .pay_area.dotline::before {
	border-left: 0
}

.ticket_info.new2020 .payment_area .pay_area.bgnone::after {
	background: none;
}

.ticket_info.new2020 .payment_area .date_pay {
	margin-top: 10px;
}

/* ë§ˆì´íŽ˜ì´ì§€ : ë©¤ë²„ì‹­ Friends */
.area_gauge.friendslv .infograde li strong.active {
	color: #F53B3C;
}

.area_gauge.friendslv .infograde li:nth-of-type(2) {
	left: 29%;
}

.area_gauge.friendslv .infograde li:nth-of-type(3) {
	left: 62%;
}

.area_gauge.friendslv .infograde li:last-child {
	left: auto;
	right: 0;
}

.area_gauge.friendslv .gauge {
	background-color: #F53B3C;
}

.txt_rank_level1, .txt_rank_level2, .txt_rank_level3 {
	color: #fff;
	font-size: 13px;
	font-weight: 600;
	border: 0;
}

.txt_rank_level1 {
	background-color: #FCB17F;
}

.txt_rank_level2 {
	background-color: #F97C61;
}

.txt_rank_level3 {
	background-color: #F53B3C;
}

.font22 {
	font-size: 22px !important
}

.minw190 {
	min-width: 190px;
}

#contents .contents_vip>.vip_title {
	margin-bottom: 50px;
	text-align: center;
}

.contents_vip .txt_list_wrap {
	margin-top: 60px;
}

.h2_memtit {
	padding: 20px 0 10px;
	margin-bottom: 10px;
	font-size: 24px;
	border-bottom: 1px solid #eee;
}

#contents .contents_friends>.friends_title {
	position: relative;
	height: 130px;
	margin-bottom: 50px;
	text-align: center;
	font: 0 auto;
}

#contents .contents_friends>.friends_title img {
	position: absolute;
	top: 40px;
	right: 135px;
}

#contents .contents_vip:before {
	content: "";
	position: absolute;
	z-index: -1;
	left: -200%;
	right: -200%;
	top: -10px;
	height: 280px;
	background: url('../../Content/images/member/bg_vipzone.jpg') repeat-x;
}

#contents .contents_vip>.vip_title img {
	margin-top: 20px;
}

#contents .contents_friends:before {
	content: "";
	position: absolute;
	z-index: -1;
	left: -200%;
	right: -200%;
	top: -10px;
	height: 280px;
	background: #fff3c9
		url('../../Content/images/member/bg_contents_friends.jpg') 50% 50%
		no-repeat;
}

.contents_friends .txt_list_wrap {
	margin-top: 60px;
}

.freindsmeminfo_box {
	position: relative;
	padding: 50px 0;
	margin: 18px 0 40px 0;
	background-color: #F5F5F5;
	border-radius: 5px;
	text-align: center;
	opacity: .9;
}

.freindsmeminfo_box .tip {
	font-size: 18px;
	color: #000;
}

.vip_top_infor .mypage_box .my_info .btn_txt_list.new {
	top: 40px;
}

.benefit_wrap .friendsbenefit_box:after {
	display: block;
	content: '';
	clear: both;
}

.benefit_wrap .friendsbenefit_box>li {
	display: inline;
	position: relative;
	float: left;
	padding: 20px 20px;
	width: 310px;
	height: 150px;
	font-size: 12px;
	border-radius: 4px;
	border: 1px solid #eae9e4;
	background-color: #fffcef;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.benefit_wrap .friendsbenefit_box>li ~ li {
	margin-left: 25px;
}

.benefit_wrap .friendsbenefit_box>li .benefit {
	min-height: 90px;
	padding-left: 90px;
}

.benefit_wrap .friendsbenefit_box>li .benefit .tit {
	padding-bottom: 8px;
	font-size: 15px;
	color: #000;
}

.benefit_wrap .friendsbenefit_box>li .benefit .tit span {
	margin-left: 5px;
	font-size: 11px;
}

.benefit_wrap .friendsbenefit_box>li .icon_lv {
	position: absolute;
	top: 50%;
	margin-top: -36px;
}

.benefit_wrap .friendsbenefit_box>li .benefit.item1 {
	padding-top: 30px;
}

.benefit_wrap .friendsbenefit_box>li .benefit.item2 {
	padding-top: 20px;
}

.benefit_wrap .friendsbenefit_box>li .benefit.item3 {
	padding-top: 10px;
}

.benefit_wrap .friendsbenefit_box strong+.benefit .tit+.list {
	min-height: 70px;
}

.benefit_wrap .friendsbenefit_box strong+.benefit .tit+.list.type1 {
	min-height: 40px;
}

.benefit_wrap .friendsbenefit_box .benefit .list+.list {
	min-height: 48px;
}

.benefit_wrap .friendsbenefit_box .benefit+.benefit {
	margin-top: 28px;
}

.benefit_wrap .friendsbenefit_box .benefit .list li {
	position: relative;
	line-height: 20px;
}

.benefit_wrap .friendsbenefit_box .benefit .list li ~ li {
	margin-top: 4px;
}

.benefit_wrap .friendsbenefit_box .benefit .list strong {
	font-size: 13px;
}

.benefit_wrap .friendsbenefit_box .benefit .list strong::before {
	display: inline-block;
	content: 'Â·';
	padding-right: 4px;
}

.benefit_wrap .friendsbenefit_box .benefit .list span {
	position: absolute;
	right: 0;
	top: 0;
	font-size: 13px;
}

.benefit_wrap .friendsbenefit_box .benefit .list span::before {
	content: '';
	position: absolute;
	right: 38px;
	top: 7px;
	width: 11px;
	height: 11px;
	background: url('../../Content/images/icon/cross_11.png') no-repeat;
}

.benefit_wrap .friendsbenefit_box .benefit .list span.bgnone::before {
	background: none
}

.benefit_wrap .friendsbenefit_box .benefit .list span em {
	font-size: 18px;
	font-family: "Roboto";
}

.basic_list.type0 dl {
	position: relative;
	padding: 12px 15px 12px 12px;
	min-height: 50px;
	border-bottom: 0px dashed #ddd;
	box-sizing: border-box;
}

.basic_list.type0 dl dt {
	display: none
}

.saving_selectitem {
	margin: 0 0 10px 0;
	text-align: right;
}
/* ì ë¦½ë‚´ì—­ íŒì—… : Friends ë“±ê¸‰ */
.layer_wrap.layer_saving_breakdown .layer_contents.scroll.type3 .my_rank_history ul
	{
	display: table;
	width: 100%;
}

.layer_wrap.layer_saving_breakdown .layer_contents.scroll.type3 .my_rank_history>ul>li
	{
	display: table-cell;
	float: none;
	min-width: 68.5px;
}

.layer_wrap.layer_saving_breakdown .layer_contents.scroll.type3 .my_rank_history>ul>li .rankbx
	{
	margin-top: 10px;
	margin-bottom: -13px;
}

.layer_wrap.layer_saving_breakdown .layer_contents.scroll.type3 .my_rank_history>ul>li 
	~ li:after {
	left: 0
}

.layer_wrap.layer_saving_breakdown .layer_contents.scroll.type3 .my_rank_history
	{
	padding: 30px 10px;
}

.my_rank_history>ul>li .year {
	display: block;
}

.my_rank_history>ul>li [class*="rankbox_"] {
	display: inline-block;
}

.my_rank_history>ul>li .tot {
	display: block;
	margin-top: 4px;
	font-size: 11px;
}

.my_rank_history>ul>li .tot em {
	font-size: 13px;
}

select.ty5 {
	min-width: 130px;
	padding: 0 0 0 18px;
	background-image: url('../../Content/images/icon/arr_dw_9.png');
}

select.ty5 ~ select.ty5 {
	margin-left: 5px;
}

.benefit_wrap .banner_friendslv3 {
	margin: 20px 0 50px;
}

.benefit_wrap .banner_friendslv3 li {
	display: inline-block;
}

.benefit_wrap .banner_friendslv3 li:first-child {
	padding-right: 17px;
}
/* ë§ˆì´íŽ˜ì´ì§€ : ë‹¹ì²¨ê²½í’ˆ */
.mypage_coupon .box_info {
	padding: 20px 0;
	background-color: #F8F8F8;
	text-align: center;
	font-size: 13px;
}

.mypage_coupon .box_info h3.tit {
	margin-bottom: 5px;
	font-size: 20px
}

.mypage_coupon .box_info .desc {
	padding-left: 250px;
	opacity: .8;
}

.mypage_coupon .box_info .desc li {
	padding-left: 20px;
	text-align: left;
	line-height: 1.8;
	background: url('../../Content/images/icon/caution_15_2.png') no-repeat
		0 50%;
}
/* ë¹„íšŒì› ë¡œê·¸ì¸, ë¹„íšŒì› ì˜ˆë§¤í™•ì¸ */
.member_login_wrap.tab_nomem {
	padding-top: 30px;
}

.member_login_wrap.tab_nomem .tab_wrap.outer {
	padding-top: 40px;
}

.member_login_wrap.tab_nomem .tab_wrap.outer .tab_tit {
	height: 30px;
	line-height: 30px;
	padding: 0 10px;
	background-color: transparent
}

.member_login_wrap.tab_nomem .tab_wrap.outer>li:first-child .tab_tit {
	padding-left: 0;
}

.member_login_wrap.tab_nomem .tab_wrap.outer>li:nth-child(n+2)>.tab_tit
	{
	padding-left: 8px;
}

.member_login_wrap.tab_nomem .tab_wrap.outer>li:nth-child(n+2)>.tab_tit:before
	{
	content: '';
	position: absolute;
	top: 9px;
	left: 0;
	width: 1px;
	height: 14px;
	background-color: #e0e0e0;
}

.member_login_wrap .login_input_box .login_form_wrap.type1 {
	padding-top: 65px;
}
/* êµ¿ì¦ˆ ìˆ˜ë ¹ */
.remainingnum_tit {
	padding: 50px 0 20px;
	font-size: 18px;
	color: #000
}

.remainingnum_list {
	
}

.remainingnum_list li {
	position: relative;
	padding: 30px 50px;
	margin-bottom: 8px;
	background-color: #F8F8F8;
	border: 1px solid #ddd;
}

.remainingnum_list li .list {
	width: 80%;
	font-size: 18px;
	color: #000;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.remainingnum_list li .list .tit {
	display: inline-block;
	padding-right: 10px;
	font-size: 18px;
	color: #000
}

.remainingnum_list li a.btn_col2.ty5 {
	position: absolute;
	top: 50%;
	right: 50px;
	margin-top: -20px;
	padding: 0 50px;
}
/* êµ¿ì¦ˆ ìˆ˜ë ¹ : ì˜í™”ê´€ ë ˆì´ì–´íŒì—… */
.layer_wrap.layer_select_cinema.goodsreceipt>.tit {
	padding: 0 40px 0 20px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.layer_wrap.layer_select_cinema.goodsreceipt>.titbox {
	padding: 12px 10px 14px;
	text-align: center;
	font-size: 12px;
	color: #000;
	background-color: #ddd;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.layer_wrap.layer_select_cinema.goodsreceipt .cinema_select_wrap .depth2 li.active>a:after
	{
	display: none
}

.layer_wrap.layer_select_cinema.goodsreceipt .cinema_select_wrap>ul .depth2 ul li.active a
	{
	color: inherit
}

.layer_wrap.layer_select_cinema.goodsreceipt .cinema_select_wrap>ul .depth2 ul li a
	{
	cursor: default;
}

.layer_wrap.layer_select_cinema.goodsreceipt .cinema_select_wrap>ul .depth2 ul li a .tit
	{
	display: block;
}

.layer_wrap.layer_select_cinema.goodsreceipt .cinema_select_wrap>ul .depth2 ul li a .desc
	{
	display: block;
	position: relative;
	padding-top: 4px;
	padding-left: 15px;
	font-size: 11px;
}

.layer_wrap.layer_select_cinema.goodsreceipt .cinema_select_wrap>ul .depth2 ul li a .desc:before
	{
	content: '';
	position: absolute;
	top: 9px;
	left: 0;
	display: block;
	width: 12px;
	height: 12px;
	background: url('../../Content/images/icon/icon_blackchk.svg') 0 0
		no-repeat;
	background-size: 100%;
}

.layer_wrap.layer_select_cinema.goodsreceipt .cinema_select_wrap>ul .depth2 ul li a .desc .num
	{
	padding-right: 1px;
	font-size: 18px;
	color: #ED4C6B
}

.goodsreceipt .layer_foot {
	padding: 20px 15px;
	text-align: center;
}

.goodsreceipt .layer_foot .desc {
	letter-spacing: -1px
}

.goodsreceipt .layer_foot .desc .ico_imp {
	vertical-align: -3px;
}

.layer_wrap.layer_select_cinema.goodsreceipt .cinema_select_wrap>ul>li.depth1>a
	{
	padding: 20px 16px;
	min-height: 57px;
}
/* ë“œë¼ì´ë¸Œ ì˜í™”ê´€ íŒì—… */
.box_driveosia {
	padding: 25px 0 20px;
	margin-bottom: 30px;
	border-radius: 10px;
	text-align: center;
	background: #f6f6f6;
	opacity: .9;
}

.box_driveosia .desc {
	padding-top: 20px;
	font-size: 13px;
	line-height: 20px;
	text-align: center;
}

.box_driveosia_line {
	padding: 20px 0;
	text-align: center;
	border: 1px solid #DDD;
	border-radius: 10px;
}

.box_driveosia_desc {
	font-size: 16px;
	line-height: 24px
}
/* ì •ë³´ë³´í˜¸ ìˆ˜ì¤€ì§„ë‹¨ ê°œì„  2021.07.09 */
.group_item .bx_item.tit_field {
	margin-bottom: 10px;
}

.group_item .bx_item.tit_field input[type="checkbox"]+label {
	font-size: 15px;
	color: #000
}

.bx_provision .txtarea {
	height: 137px;
	padding: 0 9px 0 0;
	border: 0;
	background-color: #f8f8f8;
	font-size: 11px;
	word-break: keep-all;
}

.coupon_gift_con .bx_provision .txtarea {
	height: 90px;
}

.layer_wrap.active.layer_monitor_gift {
	width: 500px;
}
/* ê°œì¸ì •ë³´ë™ì˜ ê°œì„  ì¶”ê°€ 2021.07.13 */
.box_psinfocollectagree .inner {
	position: relative;
	padding: 60px 40px 0;
}

.box_psinfocollectagree .inner:after {
	content: '';
	position: absolute;
	display: block;
	clear: both;
}

.box_psinfocollectagree .inner.pad_0 {
	padding: 0 20px;
}

.box_psinfocollectagree label {
	font-size: 15px
}

.box_psinfocollectagree .link {
	float: right;
	font-size: 15px;
	text-decoration: underline
}

.box_psinfocollectagree .btn_btm_wrap {
	margin: 50px 0 90px;
	padding-top: 60px;
	border-top: 1px solid #eee;
}

#psinfocollectagreelayerPopup .layer_contents {
	padding: 30px 25px 0 25px
}

#psinfocollectagreelayerPopup .layer_contents .h2_tit {
	padding: 25px 0 35px;
	font-size: 32px
}

#psinfocollectagreelayerPopup .layer_contents .dt_tit {
	padding-bottom: 5px;
	font-size: 16px
}

#psinfocollectagreelayerPopup .layer_contents .dd_desc {
	padding-bottom: 25px;
	font-size: 13px;
	color: #777;
	line-height: 22px;
}
/* ê´€ëžŒê¶Œ 90% í™˜ë¶ˆê¸°ëŠ¥ ê°œë°œ 2021.08.20 */
.contents_mypage .mypage_myinfo .tab_wrap.mid>li.active>.tab_tit span {
	border-bottom: 1px solid #000;
}

.contents_mypage .mypage_myinfo .bx_category_slct {
	position: relative;
	margin-top: 70px;
	margin-bottom: 25px;
}

.contents_mypage .mypage_myinfo .bx_category_slct .tab_wrap.outer {
	padding-top: 60px;
}

.contents_mypage .mypage_myinfo .bx_category_slct .tab_wrap.outer>li>.tab_tit
	{
	height: 30px;
	line-height: 30px;
}

.contents_mypage .mypage_myinfo .bx_category_slct .btn_only_txt {
	border: 0 none;
	margin-right: 20px;
	padding: 0;
	font-size: 15px;
	line-height: 17px;
	color: #666;
}

.contents_mypage .mypage_myinfo .bx_category_slct .btn_only_txt:last-child
	{
	margin: 0;
}

.contents_mypage .mypage_myinfo .bx_category_slct .slct_group {
	display: inline-block;
	width: 100%;
}

.contents_mypage .mypage_myinfo .bx_category_slct .slct_group .btn_only_txt
	{
	border-bottom: 1px solid transparent;
}

.contents_mypage .mypage_myinfo .bx_category_slct .slct_align {
	position: absolute;
	right: 0;
	top: 20px;
}

.contents_mypage .mypage_myinfo .bx_category_slct .slct_align.mod2 {
	top: -45px;
}

.contents_mypage .mypage_myinfo .bx_category_slct .btn_only_txt.active {
	color: #000;
}

.contents_mypage .mypage_myinfo .search_wrap .btn_text {
	border: 0 none;
	background: none;
	font-size: 15px;
	margin-right: 40px;
}

.contents_mypage .mypage_myinfo .acc_head td .tg_wrap {
	font-size: 13px;
	color: #666666;
}

.contents_mypage .mypage_myinfo .acc_head td .txt_ic_mall {
	vertical-align: top;
	margin: 3px 5px 0 0;
}

.contents_mypage .mypage_myinfo .acc_head td .txt_ic_mall ~.tg_wrap {
	padding-left: 45px;
}

.contents_mypage .mypage_myinfo .acc_head.active td, .contents_mypage .mypage_myinfo .acc_body.active td
	{
	border-bottom: 0 none;
}

.contents_mypage .mypage_myinfo .acc_body.active td {
	padding-bottom: 5px;
}

.contents_mypage .mypage_myinfo .acc_body.active .cp_dtl_wrap:after {
	content: '';
	display: table;
	clear: both;
}

.contents_mypage .mypage_myinfo .cp_is.ty1 {
	color: #FF243E;
}

.contents_mypage .mypage_myinfo .cp_is.ty2 {
	color: #233CA3;
}

.contents_mypage .mypage_myinfo .cp_is.ty3 {
	color: #666666;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap {
	position: relative;
	border-radius: 0 0 4px 4px;
	border: 1px solid #EEE;
	padding: 15px 40px;
	text-align: left;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap::before {
	content: '';
	position: absolute;
	left: 50%;
	top: 25px;
	margin-left: -1px;
	width: 1px;
	height: calc(100% - 50px);
	border-right: 1px dashed #EEE;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap:after, .contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_itm:after
	{
	content: '';
	display: table;
	clear: both;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_info {
	float: left;
	width: 385px;
	padding-right: 64px;;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_info:before,
	.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_info:after {
	content: '';
	position: absolute;
	left: 50%;
	width: 30px;
	height: 15px;
	margin-left: -15px;
	border: 1px solid #EEE;
	background-color: #FFF;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_info:before {
	top: -1px;
	border-top: none;
	border-radius: 0 0 30px 30px;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_info:after {
	bottom: -1px;
	border-bottom: none;
	border-radius: 30px 30px 0 0;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_itm {
	padding: 10px 0;
	border-bottom: 1px dashed #E6E6E6;
	line-height: 33px;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_itm:last-child {
	border-bottom: 0 none;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_tit {
	float: left;
	width: 100px;
	text-align: left;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_txt {
	float: right;
	width: 280px;
	color: #414141;
	text-align: right;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_txt button {
	margin-left: 5px;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_txt .btn_txt_detail {
	font-size: 15px;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_txt strong {
	color: #FF243E;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule {
	float: right;
	width: 400px;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .list_txt {
	margin: 10px 0 0;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .list_txt+p {
	margin: 52px 0 20px;
	font-size: 14px;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .bx_article {
	margin: 17px 0;
	padding-top: 17px;
	border-top: 1px solid #EEE;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .bx_article:first-child
	{
	padding-top: 0;
	border-top: none;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .bx_article .tit_article
	{
	display: block;
	margin-bottom: 4px;
	font-size: 15px;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .bx_article dl:after
	{
	content: "";
	display: block;
	clear: both;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .bx_article dl dt
	{
	clear: both;
	float: left;
	font-size: 14px;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .bx_article dl dt:before
	{
	content: "";
	display: inline-block;
	width: 1px;
	height: 1px;
	margin: 12px 5px 0 1px;
	vertical-align: top;
	background-color: #000;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .bx_article dl dd
	{
	float: right;
	font-size: 14px;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .bx_article .list_txt
	{
	margin-top: 4px;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule .bx_article .list_txt.ty2 li
	{
	color: #666;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_itm.bdb0 {
	border-bottom: 0
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list, .contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list
	{
	position: relative;
	padding: 10px 0 15px;
	font-size: 14px
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list:after,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list:after {
	content: '';
	display: block;
	clear: both
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list .tit,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list .tit {
	position: relative;
	float: left;
	width: 100px;
	padding-left: 8px;
	text-align: left
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list .tit:before,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list .tit:before {
	content: '';
	position: absolute;
	top: 12px;
	left: 0;
	display: inline-block;
	width: 1px;
	height: 1px;
	background-color: #000;
	border-radius: 50%;
	vertical-align: top;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list .desc,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list .desc {
	float: right;
	width: 280px;
	text-align: right
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list .desc .txt,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list .desc .txt {
	font-family: "Roboto";
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list.bdb1,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list.bdb1 {
	border-bottom: 1px dashed #E6E6E6
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list.type1,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list.type1 {
	padding-left: 0;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list.type1 .tit,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list.type1 .tit {
	padding-left: 0;
	font-size: 16px
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list.type1 .tit:before,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list.type1 .tit:before
	{
	width: 0;
	height: 0;
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .dl_list.type1 .desc,
	.contents_mypage .mypage_coupon .cp_dtl_wrap .dl_list.type1 .desc {
	font-size: 16px
}

.contents_mypage .mypage_myinfo .cp_dtl_wrap .cp_rule>.btn_wrap [class^="btn_col"],
	.contents_mypage .mypage_coupon .cp_dtl_wrap .cp_rule>.btn_wrap [class^="btn_col"]
	{
	width: 146px;
}

.contents_mypage .mypage_myinfo .infotxt, .contents_mypage .mypage_coupon .infotxt
	{
	padding-bottom: 20px;
	font-size: 16px;
}

.tbl_list+.area_totalrefund {
	margin-top: 40px;
}

.contents_mypage .mypage_myinfo .area_totalrefund, .contents_mypage .mypage_coupon .area_totalrefund
	{
	padding: 20px 40px;
	border-top: 1px solid #bbb;
	border-bottom: 1px solid #bbb;
	text-align: right
}

.contents_mypage .mypage_myinfo .area_totalrefund .tit, .contents_mypage .mypage_coupon .area_totalrefund .tit
	{
	display: inline-block;
	padding-right: 10px;
	font-size: 16px;
	color: #000
}

.contents_mypage .mypage_myinfo .area_totalrefund .desc,
	.contents_mypage .mypage_coupon .area_totalrefund .desc {
	display: inline-block;
	min-width: 120px;
	color: #FF243E;
}

.contents_mypage .mypage_myinfo .area_totalrefund .desc .txt,
	.contents_mypage .mypage_coupon .area_totalrefund .desc .txt {
	font-family: "Roboto";
	font-size: 24px;
}

.contents_mypage .mypage_myinfo .area_totalrefund .desc .won,
	.contents_mypage .mypage_coupon .area_totalrefund .desc .won {
	font-size: 15px;
	padding: 3px;
}

.contents_mypage .mypage_myinfo .area_totalrefund+.btn_wrap [class^="btn_col"],
	.contents_mypage .mypage_coupon .area_totalrefund+.btn_wrap [class^="btn_col"]
	{
	width: 146px;
	margin-top: 40px;
}

.contents_mypage .mypage_myinfo .cp_is.ty05 {
	color: #233CA3
}

.contents_mypage .mypage_myinfo .cp_is.ty06 {
	color: #000
}

.contents_mypage .mypage_myinfo .cp_is.ty07 {
	color: #000;
	opacity: .6
}

.contents_mypage .mypage_myinfo .cp_is.ty08 {
	color: #FF243E;
	opacity: .6
}
/* ê´€ëžŒê¶Œ 90% í™˜ë¶ˆê¸°ëŠ¥ ê°œë°œ : í™˜ë¶ˆì •ë³´ìž…ë ¥ */
.contents_mypage .con_tit {
	overflow: hidden;
	font-size: 20px;
	margin: 10px 0;
}

.contents_mypage .con_tit.ty2 .tit {
	display: inline-block;
}

.contents_mypage .con_tit .group_rgt {
	float: right;
	margin-top: 4px;
}

.contents_mypage .con_tit .txt_req {
	font-size: 14px;
	color: #FF243E;
}

.contents_mypage .con_tit .txt_req:before {
	content: '*';
	margin-right: 4px;
	font-size: 14px;
	color: #FF243E;
}

.contents_mypage .refundnum .txt {
	font-family: "Roboto";
	font-size: 18px;
}

.contents_mypage .refundnum .won {
	font-size: 15px;
}

.contents_mypage .refundaccount {
	width: 600px
}

.contents_mypage .refundaccount .dt_tit {
	display: inline-block;
	min-width: 80px;
}

.contents_mypage .refundaccount .dd_desc {
	display: inline-block;
	min-width: 440px;
	margin-bottom: 13px;
}

.contents_mypage .refundaccount .dd_desc [class^="btn_col"] {
	width: auto;
	margin-left: 5px;
}

.contents_mypage .refundaccount .dd_desc>.inp_name {
	width: 420px;
}

.contents_mypage .refundaccount .dd_desc select.ty2 {
	width: 280px
}

.contents_mypage .refundaccount+.txt_caution1 {
	margin-left: 85px;
}

.contents_mypage .tbl_form th.va_top {
	vertical-align: top;
}

.tbl_form.type1 th, .tbl_form.type1 td {
	height: auto;
	padding: 17px 4px;
}

.contents_mypage .privacy_wrap {
	background: transparent;
	margin-bottom: 50px;
}

.contents_mypage .privacy_wrap .agree_box {
	overflow-y: auto;
	height: 170px;
	width: 100%;
	padding: 21px 33px;
	border: 1px solid #ddd;
	border-radius: 3px;
	background: #f8f8f8;
	font-size: 14px;
	line-height: 1.5;
	box-sizing: border-box;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-ms-border-radius: 3px;
	-o-border-radius: 3px;
}

.contents_mypage .privacy_wrap .agree_box .tit_info {
	display: block;
	margin-bottom: 10px;
	font-size: 16px;
}

.contents_mypage .privacy_wrap .agree_box .list_info {
	margin-bottom: 10px;
}

.contents_mypage .privacy_wrap .agree_box .txt_info {
	margin-bottom: 10px;
}

.contents_mypage .privacy_wrap .bx_inp {
	margin: 30px 0;
	text-align: right;
}

.lineh18 {
	line-height: 18px;
}

.contents_mypage .mypage_coupon .cp_is.type2 {
	display: inline-block;
	line-height: 17px;
}
/* ë°±ì‹ ì „ìš©ê´€ ì–¼ëŸ¿ ë…¸ì¶œ */
.time_select_wrap ul.list_hall li .vaccinehalltype {
	padding: 0 3px;
	border-radius: 3px;
	background-color: #d7562a;
	color: white
}

.time_select_wrap ul.list_time li.active>a.vaccinehalltype,
	.time_select_wrap ul.list_time li>a.vaccinehalltype:focus {
	border: 1px solid #d7562a
}
/* 2022ë…„ VIP ì œë„ ê°œì„  */
.benefit_wrap .benefit_box_ty2.type2>li {
	padding: 56px 18px 10px;
}

.benefit_wrap .benefit_box_ty2.type2 .benefit+.benefit {
	margin-top: 24px;
	border-bottom: 1px dashed #DDDDDD
}

.benefit_wrap .benefit_box_ty2.type2 .benefit+.benefit+.benefit {
	padding-bottom: 0;
	border-bottom: 0
}

.benefit_wrap .benefit_box_ty2.type2 .benefit .list span em {
	color: #FF7787
}

.benefit_wrap .benefit_box_ty2.type2 .benefit .tit span {
	color: #333
}

.benefit_wrap .benefit_box_ty2 .benefit .list {
	padding-left: 6px;
	padding-right: 12px;
}

.benefit_wrap .benefit_box_ty2.type2 .benefit .list {
	padding: 15px 15px 15px 15px
}

.benefit_wrap .benefit_box_ty2.type2 .benefit .gap_or {
	padding-top: 8px;
	margin-bottom: -12px;
	color: #333;
	font-size: 11px;
	text-align: center
}

.benefit_wrap .benefit_box_ty2.type2 .listbox {
	position: relative;
	margin-top: 30px;
	border: 1px solid #333333;
	border-radius: 5px;
	box-sizing: border-box;
	background-color: #fff
}

.benefit_wrap .benefit_box_ty2.type2 .listbox .typetit {
	position: absolute;
	top: -12px;
	left: 50%;
	margin-left: -30px;
	height: 24px;
	display: flex;
	align-items: center;
	padding: 0 20px;
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
	background-color: #FF7787;
	font-size: 13px;
	color: #fff
}

.benefit_wrap .benefit_box_ty2.type2 .listbox .typetit strong {
	font-family: 'Roboto';
	font-size: 15px;
}

.box_list dl {
	position: relative;
	padding: 18px 25px 18px 90px;
	border: 1px solid #DDDDDD;
	border-radius: 5px;
	box-sizing: border-box;
	background-color: #fff
}

.box_list.type2 dl {
	display: flex;
	flex-wrap: wrap;
	flex-direction: column;
	justify-content: center;
	min-height: 80px;
}

.benefit_list_box .tit_area.type2 {
	border-bottom: 0;
	padding-bottom: 0;
}

.box_list dl dt {
	position: absolute;
	left: 50px;
	top: 50%;
	margin-top: -17px;
	text-align: center;
	font-family: 'Roboto';
	font-weight: bold;
	font-size: 32px;
	color: #FF7787
}

.box_list dl dt span {
	display: block;
	margin-top: 5px;
	font-size: 11px;
	opacity: 0.3;
}

.box_list dl dd {
	position: relative;
	color: #000;
	font-size: 13px;
	line-height: 25px;
}

.box_list dl dd ~ dd {
	margin-top: 3px;
}

.box_list dl dd:last-child {
	margin-bottom: 0;
}

.box_list dl dd:before {
	content: 'Â·';
	margin-right: 2px;
}

.box_list .quantity em, .benefit_list_box .basic_list.type2 .quantity em
	{
	margin-right: 2px;
	color: #FF7787
}

.basic_list.type2 dl {
	padding: 18px 25px 18px 90px;
}

.basic_list.type2 dl dt {
	left: 25px;
}

.box_list .selectbox {
	position: relative;
	padding-top: 10px;
}

.box_list .selectbox dl {
	border-color: #ddd
}

.box_list .selectbox dl:hover {
	cursor: pointer;
}

.box_list .selectbox dl.active {
	border-color: #FF7787
}

.box_list .gap_or {
	padding-top: 7px;
	margin-bottom: -5px;
	color: #666666;
	font-size: 12px;
	text-align: center
}

.box_list .selectbox input[type="radio"] {
	position: absolute;
}

.box_list .selectbox input[type="radio"]+label:last-of-type {
	width: 100%
}

.box_list .selectbox input[type="radio"]+label:before {
	position: absolute;
	border: 0;
	top: 50%;
	left: 20px;
	margin-top: -10px;
	width: 20px;
	height: 20px;
	background: url(../../Content/images/common/ico_radio2_vip.png)
		no-repeat 0 0;
	z-index: 2;
}

.box_list .selectbox input[type="radio"]:checked+label:before {
	position: absolute;
	border: 0;
	background: url(../../Content/images/common/ico_radio2_vip_on.png)
		no-repeat 0 0;
	z-index: 2
}

.box_list .selectbox input[type="radio"]:checked+label dl {
	border-color: #FF7787;
}
/* ê°€ìž¥ ê°€ê¹Œìš´ êµ­ë¦½ê·¹ìž¥ ë™ì˜ìƒ */
.movie_onnationaltheater {
	position: relative;
	height: 430px;
	margin-top: 60px;
}

.movie_onnationaltheater .evt_player {
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	width: 790px;
	margin: 0 auto;
}

.movie_onnationaltheater .evt_player .video-js .vjs-big-play-button {
	position: absolute;
	left: 50%;
	top: 50%;
	width: 60px;
	height: 68px;
	margin-left: -30px;
	margin-top: -29px;
	background:
		url('../../Content/images/icon/icon_play_movie_nationaltheater.png') 0
		0 no-repeat;
	background-size: 100%;
	box-sizing: border-box;
	border: 0;
	border-color: transparent;
	background-color: transparent;
}

.movie_onnationaltheater .video-js .vjs-big-play-button:focus,
	.movie_onnationaltheater .video-js:hover .vjs-big-play-button {
	border-color: transparent !important;
	background-color: transparent !important;
	background-color: rgba(115, 133, 159, 0);
	transition: all 0s
}

.movie_onnationaltheater .movie_onnationaltheater .evt_player .video-js .vjs-big-play-button .vjs-icon-placeholder
	{
	display: none;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	line-height: 0
}

.movie_onnationaltheater .evt_player .video-js .vjs-big-play-button .vjs-icon-placeholder::before
	{
	display: none;
	line-height: 0;
	vertical-align: middle;
	top: 50%;
	height: auto;
}

.movie_onnationaltheater .evt_player .video-js .vjs-play-progress:before
	{
	display: block;
	width: 4px;
	height: 4px;
	background: #c62424;
	border: 5px solid #fff;
	border-radius: 50% 50%;
	font-size: 0;
	box-sizing: content-box;
	top: 50%;
	right: -7px;
	margin: -7px 0 0 0;
}

.movie_onnationaltheater .evt_player .video-js .vjs-control-bar {
	background-color: #000;
	background-color: rgba(25, 25, 25, 0.8);
}

.movie_onnationaltheater .evt_player .video-js .vjs-load-progress div {
	background: white;
	background: rgba(100, 100, 100, 0.75);
}

.movie_onnationaltheater .evt_player .video-js button .vjs-icon-placeholder
	{
	position: static
}

.movie_onnationaltheater .evt_player .video-js .vjs-remaining-time-display
	{
	line-height: 3em;
}
/* ê°€ê¹Œìš´ êµ­ë¦½ê·¹ìž¥ 2022.01.07 */
.nationaltheater_area {
	position: relative;
	margin-bottom: 60px;
	padding-bottom: 70px;
	background: #fafafa
}

.nationaltheater_desc {
	position: relative;
	width: 800px;
	min-height: 600px;
	padding: 50px 95px 0;
	text-align: left;
}

.nationaltheater_desc .h5_tit {
	padding-bottom: 20px;
	font-size: 21px;
	letter-spacing: -1px;
}

.nationaltheater_desc .h5_tit .title {
	font-size: 40px;
	font-weight: bolder;
	letter-spacing: -2px;
}

.nationaltheater_desc .desc_left {
	width: 540px;
	font-size: 16px;
	color: #000;
	line-height: 1.5;
}

.nationaltheater_desc .desc_right {
	position: absolute;
	top: 50px;
	left: 680px;
	font-size: 14px;
	letter-spacing: -1px;
}

.nationaltheater_desc .desc_right .h5_tit {
	padding-bottom: 10px;
	font-size: 16px;
	font-weight: bold
}

.nationaltheater_desc .desc_right .desc_top {
	line-height: 1.3;
}

.nationaltheater_desc .desc_right .desc_top dt {
	display: inline-block;
	width: 116px;
	vertical-align: top;
	font-weight: bold;
	line-height: 1.5;
}

.nationaltheater_desc .desc_right .desc_top dd {
	display: inline-block;
	width: 94px;
	padding-bottom: 10px;
	font-weight: lighter;
	line-height: 1.5;
}

.nationaltheater_desc .desc_right .desc_bottom {
	padding-bottom: 15px;
	line-height: 1.3;
}

.nationaltheater_desc .desc_right .txt {
	width: 210px;
	font-size: 13px;
	font-weight: lighter;
	color: #333;
	line-height: 1.3;
}

.nationaltheater_area .movie_info {
	position: relative;
	min-height: 310px;
	margin: 50px 95px;
	padding: 50px 0;
	border-top: 1px solid #000;
	color: #000;
	letter-spacing: -1px;
}

.nationaltheater_area .movie_info .h5_tit {
	padding-bottom: 5px;
	font-size: 22px;
	font-weight: bold;
	line-height: 1.3;
}

.nationaltheater_area .movie_info .desc_left {
	width: 390px;
	line-height: 1.8;
}

.nationaltheater_area .movie_info .desc_left .desc {
	font-size: 16px;
	letter-spacing: -1px;
}

.nationaltheater_area .movie_info .noti {
	position: relative;
	padding-left: 15px;
	font-size: 13px;
	color: #333;
	line-height: 1.5;
}

.nationaltheater_area .movie_info .noti::before {
	content: 'â€»';
	position: absolute;
	left: 0
}

.nationaltheater_area .movie_info .desc_right {
	position: absolute;
	top: 50px;
	left: 440px;
}

.nationaltheater_area .movie_info .desc_right .h6_tit {
	padding-bottom: 8px;
	font-size: 16px;
	font-weight: bold;
}

.nationaltheater_area .movie_info .desc_right .zone {
	width: 350px;
	font-size: 14px;
	line-height: 1.8;
}

.nationaltheater_area .movie_info .desc_right .zone dt {
	display: inline-block;
	width: 88px;
	font-weight: bold;
	vertical-align: top;
}

.nationaltheater_area .movie_info .desc_right .zone dd {
	display: inline-block;
	width: 250px;
	color: #333;
	word-break: keep-all;
}

.nationaltheater_area .movie_info .desc_list li {
	font-size: 14px;
	line-height: 1.8
}

.nationaltheater_area .slide_nationaltheater {
	width: 980px
}

.nationaltheater_area .owl-carousel .owl-item .item {
	text-align: center
}

.nationaltheater_area .owl-carousel .owl-item img {
	display: initial;
	width: auto;
}

.nationaltheater_area .notice_box {
	padding: 30px 40px;
	margin: 0 95px;
	border: 1px solid #000;
}

.nationaltheater_area .notice_box .txt {
	font-size: 16px;
	line-height: 1.5;
	word-break: keep-all;
}

.nationaltheater_area .notice_box .tit {
	padding: 20px 0 10px;
	font-size: 14px;
}

.nationaltheater_area .owl-carousel .owl-dots {
	bottom: 80px
}

.nationaltheater_area .owl-carousel .owl-dots .owl-dot span {
	width: 7px;
	height: 7px;
	margin: 0 9px;
	background-color: transparent;
	border: 1px solid #333;
	opacity: 1;
}

.nationaltheater_area .owl-carousel .owl-dots .owl-dot.active span,
	.nationaltheater_area .owl-carousel .owl-dots .owl-dot:hover span {
	width: 7px;
	height: 7px;
	margin: 0 9px;
	background-color: #333;
}

.nationaltheater_area .owl-carousel .owl-nav .owl-next {
	right: 15px;
	background: url(../../Content/images/icon/arr_rg_15.png) no-repeat
		center center;
}

.nationaltheater_area .owl-carousel .owl-nav .owl-prev {
	left: 15px;
	background: url(../../Content/images/icon/arr_lf_15.png) no-repeat
		center center;
}

.nationaltheater_area .owl-carousel .owl-nav {
	height: 0;
}

.nationaltheater_desc .color_pink {
	color: #E92867 !important;
}

.nationaltheater_desc .color_brown {
	color: #B10C0C !important;
}

.nationaltheater_desc .color_blue {
	color: #4369E4 !important;
}
/* ì„¤ì„¸ë±ƒëˆ íŒì—… */
#layerPopupnewyear21money.layer_wrap.active {
	border-radius: 0;
}

#layerPopupnewyear21money .layer_contents .txt_info {
	padding: 60px 0 40px;
	color: #333;
	font-size: 26px
}

#layerPopupnewyear21money .layer_contents .txt_info .h2_tit {
	font-size: 70px
}

#layerPopupnewyear21money .layer_contents .btn_col10 {
	height: 75px;
	line-height: 72px;
	padding: 0 75px;
	margin-top: 30px;
	border-radius: 0;
	font-size: 30px;
}

#layerPopupnewyear21money .layer_contents .closebtn {
	position: absolute;
	right: 15px;
	top: -45px;
	width: 32px;
	height: 32px;
	border: none;
	text-indent: -9999em;
	background: transparent
		url("../../Content/images/event/img_newyear21close.png") no-repeat 0 0;
	outline-color: black
}

#layerPopupnewyear21money.layer_wrap .layer_contents .wrap_alertimg .popalertnewyear21img
	{
	position: absolute;
	top: -180px;
	left: 50%;
	width: 440px;
	height: 227px;
	margin-left: -220px;
}

#layerPopupnewyear21money .layer_contents .box_evtdesc {
	background-color: #f9f9f9;
}
/* ê´€ëžŒê¶Œ ì„ ë¬¼í•˜ê¸° UI ê°œì„  */
.monitor_gift>.gift_con.type2 {
	height: 500px
}

.monitor_gift>.gift_con li ~ li {
	margin-top: 15px;
}

.font13 {
	font-size: 13px !important
}
/* ì˜í™”ê´€ ì •ë³´ ë‚´ ë‹¨ì²´/ëŒ€ê´€ë¬¸ì˜ ë²„íŠ¼ ì¶”ê°€ */
.contents_theater_detail .theater_top_wrap .info_wrap .pop_wrap>li:last-child
	{
	margin-right: 0;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_info dd.adr .link_viewmap
	{
	position: relative;
	padding-left: 15px;
	margin-left: 13px;
}

.contents_theater_detail .theater_top_wrap .info_wrap .theater_info dd.adr .link_viewmap:before
	{
	content: '';
	position: absolute;
	top: 5px;
	left: 0;
	width: 1px;
	height: 14px;
	background: #ddd;
}

.icon_viewmap {
	display: inline-block;
	width: 15px;
	height: 19px;
	background: url('../../Content/images/icon/icon_viewmap.jpg') 0 0
		no-repeat;
	background-size: 100%;
	vertical-align: -4px;
}

.icon_groupvisit {
	display: inline-block;
	width: 16px;
	height: 16px;
	background: url("../../Content/images/icon/icon_groupvisit.jpg") 0 0
		no-repeat;
	vertical-align: middle;
}

.contents_theater_detail .theater_top_wrap .theater_tit {
	margin-bottom: 34px;
}

.contents_theater_detail .theater_top_wrap .theater_tit .tit {
	display: inline-block;
	margin-right: 10px;
	font-size: 32px;
	vertical-align: middle;
}
/* ì´ë²¤íŠ¸ ë‹¹ì²¨ìž ì´ë¦„ ë° ì•„ì´ë”” ê²€ìƒ‰ */
.box_winnersearch {
	float: right;
	margin: 20px 0;
}

.box_winnersearch:after {
	content: '';
	display: block;
	clear: both;
}

.box_winnersearch>.bx_search.ty2 input {
	width: 210px;
}
/* ì´ë²¤íŠ¸ ë‹¹ì²¨ í™•ì¸ ì¡°íšŒ ê¸°ëŠ¥ ê°œì„  */
.box_winnersearch.centertype {
	display: flex;
	justify-content: center;
	align-items: center;
	float: none;
	padding: 25px 0 0;
	margin: 25px 0 0;
	text-align: center;
	vertical-align: middle;
	border-top: 1px solid #EEEEEE
}

.box_winnersearch.centertype .btn_col3 {
	min-width: 75px;
	height: 30px;
	margin-left: 15px;
}

.box_winnersearch.centertype .desc_type1 {
	opacity: .8;
}
/* ì±„ë„ë³„ ê´€ë¦¬ìží™” ê°œë°œ : íŒì—… ì œëª© 24ìž ì ìš© */
.layer_wrap.layerMultiType .layer_header {
	overflow: hidden;
	padding: 0 14px;
}

.layer_wrap.layerMultiType .layer_header .tit {
	overflow: hidden;
	height: 50px;
	padding: 0 36px;
}
/* ëŒ€ê´€ë¬¸ì˜ íŒì—… ìˆ˜ì • */
#layerCinemaGroupNum.layer_wrap.cinemagroupnum .layer_header {
	display: flex;
	flex-direction: column;
	justify-content: center;
	height: 70px;
	line-height: 20px;
}

#layerCinemaGroupNum.layer_wrap.cinemagroupnum .layer_header .desc {
	display: block;
	font-size: 14px;
	font-weight: lighter
}
/* ëª¨ë‹ˆí„°ë§ ê´€ëžŒê¶Œ ì„ ë¬¼í•˜ê¸° ê°œì„  */
.ip_txt.type2 {
	position: relative;
}

.ip_txt.type2 label.tit {
	position: absolute;
	left: 15px;
	line-height: 45px;
	font-size: 15px;
	color: #999;
}

.ip_txt.type2 .desc_right {
	width: 100%;
	height: 45px;
	line-height: 45px;
	background-color: #f8f8f8;
	border-color: transparent;
	text-align: right;
	font-family: "Roboto";
	font-size: 17px;
}
</style>








<div class="wrap_reserve">
	<h2 class="hidden">예매하기</h2>
	<div class="section_step_tit">
		<ul>
			<li class="active step01">
				<a href="#reserveStep01">
					<strong class="tit">
						<span>01</span><br>
						상영시간
					</strong>
					<div class="bx_con">
						<dl>
							<dt>선택한 영화 제목</dt>
							<dd></dd>
							<dt>선택한 상영관</dt>
							<dd></dd>
							<dt>선택한 상영 날짜</dt>
							<dd>2022-06-07(오늘)</dd>
							<dt>선택한 시간</dt>
							<dd></dd>
						</dl>
					</div>
				</a>
			</li>
			<li class="disabled">
				<a style="cursor: default;">
					<strong class="tit">
						<span>02</span><br>
						인원/좌석
					</strong>
				</a>
			</li>
			<li class="disabled">
				<a style="cursor: default;">
					<strong class="tit">
						<span>03</span><br>
						결제
					</strong>
				</a>
			</li>
			<li class="disabled">
				<a style="cursor: default;">
					<strong class="tit">
						<span>04</span><br>
						결제완료
					</strong>
				</a>
			</li>
		</ul>
	</div>
	<div id="reserveStep01" class="section_step_con step01 active">
		<h3 class="hidden">상영시간</h3>
		<div class="article article_cinema">
			<div class="group_top">
				<h4 class="tit">영화관</h4>
			</div>
			<div class="inner">
				<ul class="tab_wrap outer">
					<li class="active"><button type="button" class="tab_tit"
							style="width: 50%; left: 0%;">
							<span>전체</span>
						</button>
						<div class="tab_con">
							<h5 class="hidden">전체</h5>
							<div class="cinema_select_wrap cinemaSelect basicCinema">
								<ul>
									<li class="depth1"><a href="#none">MY 영화관<em>(0)</em></a>
									<div class="depth2">
											<div
												class="mCustomScrollbar _mCS_10 mCS-autoHide mCS_no_scrollbar"
												data-mcs-theme="minimal-dark"
												style="position: relative; overflow: visible;">
												<div id="mCSB_10"
													class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
													style="max-height: 753px;" tabindex="0">
													<div id="mCSB_10_container"
														class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<div class="bx_notice">
															<p class="txt">로그인 후 이용해 주세요.</p>
															<a
																href="https://www.lottecinema.co.kr/NLCHS/Member/Login?hidUrlReferrer=https%3A%2F%2Fwww.lottecinema.co.kr%2FNLCHS%2FTicketing"
																class="btn_col3 ty3 rnd">로그인</a>
														</div>
													</div>
												</div>
												<div id="mCSB_10_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_10_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
													style="display: none;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_10_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 50px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div></li>
									<li class="depth1 active"><a href="#none">서울<em>(23)</em></a>
									<div class="depth2">
											<div
												class="mCustomScrollbar basicCinemaScroll _mCS_1 mCS-autoHide"
												data-mcs-theme="minimal-dark"
												style="position: relative; overflow: visible;">
												<div id="mCSB_1"
													class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
													style="max-height: none;" tabindex="0">
													<div id="mCSB_1_container" class="mCSB_container"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<ul>
															<li class=""><a href="#none">가산디지털</a></li>
															<li class=""><a href="#none">가양</a></li>
															<li class=""><a href="#none">강동</a></li>
															<li class=""><a href="#none">건대입구</a></li>
															<li class=""><a href="#none">김포공항</a></li>
															<li class=""><a href="#none">노원</a></li>
															<li class=""><a href="#none">도곡</a></li>
															<li class=""><a href="#none">독산</a></li>
															<li class=""><a href="#none">브로드웨이(신사)</a></li>
															<li class=""><a href="#none">서울대입구</a></li>
															<li class=""><a href="#none">수락산</a></li>
															<li class=""><a href="#none">수유</a></li>
															<li class=""><a href="#none">신도림</a></li>
															<li class=""><a href="#none">신림</a></li>
															<li class=""><a href="#none">에비뉴엘(명동)</a></li>
															<li class=""><a href="#none">영등포</a></li>
															<li class=""><a href="#none">용산</a></li>
															<li class=""><a href="#none">월드타워</a></li>
															<li class=""><a href="#none">은평(롯데몰)</a></li>
															<li class=""><a href="#none">중랑</a></li>
															<li class=""><a href="#none">청량리</a></li>
															<li class=""><a href="#none">합정</a></li>
															<li class=""><a href="#none">홍대입구</a></li>
														</ul>
													</div>
												</div>
												<div id="mCSB_1_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
													style="display: block;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 50px; display: block; height: 623px; max-height: 719px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div></li>
									<li class="depth1"><a href="#none">경기/인천<em>(48)</em></a>
									<div class="depth2">
											<div
												class="mCustomScrollbar basicCinemaScroll _mCS_2 mCS-autoHide mCS_no_scrollbar"
												data-mcs-theme="minimal-dark"
												style="position: relative; overflow: visible;">
												<div id="mCSB_2"
													class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
													style="max-height: 753px;" tabindex="0">
													<div id="mCSB_2_container"
														class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<ul>
															<li class=""><a href="#none">광교아울렛</a></li>
															<li class=""><a href="#none">광명(광명사거리)</a></li>
															<li class=""><a href="#none">광명아울렛</a></li>
															<li class=""><a href="#none">광주터미널</a></li>
															<li class=""><a href="#none">구리아울렛</a></li>
															<li class=""><a href="#none">동탄</a></li>
															<li class=""><a href="#none">라페스타</a></li>
															<li class=""><a href="#none">마석</a></li>
															<li class=""><a href="#none">별내</a></li>
															<li class=""><a href="#none">병점</a></li>
															<li class=""><a href="#none">부천(신중동역)</a></li>
															<li class=""><a href="#none">부천역</a></li>
															<li class=""><a href="#none">부평</a></li>
															<li class=""><a href="#none">부평갈산</a></li>
															<li class=""><a href="#none">부평역사</a></li>
															<li class=""><a href="#none">북수원(천천동)</a></li>
															<li class=""><a href="#none">산본피트인</a></li>
															<li class=""><a href="#none">서수원</a></li>
															<li class=""><a href="#none">성남중앙(신흥역)</a></li>
															<li class=""><a href="#none">센트럴락</a></li>
															<li class=""><a href="#none">송탄</a></li>
															<li class=""><a href="#none">수원(수원역)</a></li>
															<li class=""><a href="#none">수지</a></li>
															<li class=""><a href="#none">시화</a></li>
															<li class=""><a href="#none">시흥장현</a></li>
															<li class=""><a href="#none">안산</a></li>
															<li class=""><a href="#none">안산고잔</a></li>
															<li class=""><a href="#none">안성</a></li>
															<li class=""><a href="#none">안양(안양역)</a></li>
															<li class=""><a href="#none">안양일번가</a></li>
															<li class=""><a href="#none">양주고읍</a></li>
															<li class=""><a href="#none">영종하늘도시</a></li>
															<li class=""><a href="#none">오산(원동)</a></li>
															<li class=""><a href="#none">용인기흥</a></li>
															<li class=""><a href="#none">용인역북</a></li>
															<li class=""><a href="#none">위례</a></li>
															<li class=""><a href="#none">의정부민락</a></li>
															<li class=""><a href="#none">인덕원</a></li>
															<li class=""><a href="#none">인천아시아드</a></li>
															<li class=""><a href="#none">인천터미널</a></li>
															<li class=""><a href="#none">주엽</a></li>
															<li class=""><a href="#none">진접</a></li>
															<li class=""><a href="#none">파주운정</a></li>
															<li class=""><a href="#none">판교(창조경제밸리)</a></li>
															<li class=""><a href="#none">평촌(범계역)</a></li>
															<li class=""><a href="#none">평택비전(뉴코아)</a></li>
															<li class=""><a href="#none">하남미사</a></li>
															<li class=""><a href="#none">향남</a></li>
														</ul>
													</div>
												</div>
												<div id="mCSB_2_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
													style="display: none;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 50px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div></li>
									<li class="depth1"><a href="#none">충청/대전<em>(11)</em></a>
									<div class="depth2">
											<div
												class="mCustomScrollbar basicCinemaScroll _mCS_3 mCS-autoHide mCS_no_scrollbar"
												data-mcs-theme="minimal-dark"
												style="position: relative; overflow: visible;">
												<div id="mCSB_3"
													class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
													style="max-height: 753px;" tabindex="0">
													<div id="mCSB_3_container"
														class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<ul>
															<li class=""><a href="#none">당진</a></li>
															<li class=""><a href="#none">대전(백화점)</a></li>
															<li class=""><a href="#none">대전관저</a></li>
															<li class=""><a href="#none">대전둔산(월평동)</a></li>
															<li class=""><a href="#none">대전센트럴</a></li>
															<li class=""><a href="#none">서산</a></li>
															<li class=""><a href="#none">서청주(아울렛)</a></li>
															<li class=""><a href="#none">아산터미널</a></li>
															<li class=""><a href="#none">천안불당</a></li>
															<li class=""><a href="#none">청주용암</a></li>
															<li class=""><a href="#none">충주(모다아울렛)</a></li>
														</ul>
													</div>
												</div>
												<div id="mCSB_3_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_3_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
													style="display: none;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_3_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 50px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div></li>
									<li class="depth1"><a href="#none">전라/광주<em>(10)</em></a>
									<div class="depth2">
											<div
												class="mCustomScrollbar basicCinemaScroll _mCS_4 mCS-autoHide mCS_no_scrollbar"
												data-mcs-theme="minimal-dark"
												style="position: relative; overflow: visible;">
												<div id="mCSB_4"
													class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
													style="max-height: 753px;" tabindex="0">
													<div id="mCSB_4_container"
														class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<ul>
															<li class=""><a href="#none">광주(백화점)</a></li>
															<li class=""><a href="#none">광주광산</a></li>
															<li class=""><a href="#none">군산나운</a></li>
															<li class=""><a href="#none">군산몰</a></li>
															<li class=""><a href="#none">수완(아울렛)</a></li>
															<li class=""><a href="#none">익산모현</a></li>
															<li class=""><a href="#none">전주(백화점)</a></li>
															<li class=""><a href="#none">전주송천</a></li>
															<li class=""><a href="#none">전주평화</a></li>
															<li class=""><a href="#none">충장로</a></li>
														</ul>
													</div>
												</div>
												<div id="mCSB_4_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_4_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
													style="display: none;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_4_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 50px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div></li>
									<li class="depth1"><a href="#none">경북/대구<em>(17)</em></a>
									<div class="depth2">
											<div
												class="mCustomScrollbar basicCinemaScroll _mCS_5 mCS-autoHide mCS_no_scrollbar"
												data-mcs-theme="minimal-dark"
												style="position: relative; overflow: visible;">
												<div id="mCSB_5"
													class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
													style="max-height: 753px;" tabindex="0">
													<div id="mCSB_5_container"
														class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<ul>
															<li class=""><a href="#none">경주</a></li>
															<li class=""><a href="#none">경주황성</a></li>
															<li class=""><a href="#none">구미공단</a></li>
															<li class=""><a href="#none">대구광장</a></li>
															<li class=""><a href="#none">대구율하</a></li>
															<li class=""><a href="#none">대구현풍</a></li>
															<li class=""><a href="#none">동성로</a></li>
															<li class=""><a href="#none">상인</a></li>
															<li class=""><a href="#none">상주</a></li>
															<li class=""><a href="#none">성서</a></li>
															<li class=""><a href="#none">영주</a></li>
															<li class=""><a href="#none">영천</a></li>
															<li class=""><a href="#none">포항</a></li>
															<li class=""><a href="#none">프리미엄구미센트럴</a></li>
															<li class=""><a href="#none">프리미엄만경</a></li>
															<li class=""><a href="#none">프리미엄안동</a></li>
															<li class=""><a href="#none">프리미엄칠곡</a></li>
														</ul>
													</div>
												</div>
												<div id="mCSB_5_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_5_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
													style="display: none;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_5_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 50px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div></li>
									<li class="depth1"><a href="#none">경남/부산/울산<em>(26)</em></a>
									<div class="depth2">
											<div
												class="mCustomScrollbar basicCinemaScroll _mCS_6 mCS-autoHide mCS_no_scrollbar"
												data-mcs-theme="minimal-dark"
												style="position: relative; overflow: visible;">
												<div id="mCSB_6"
													class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
													style="max-height: 753px;" tabindex="0">
													<div id="mCSB_6_container"
														class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<ul>
															<li class=""><a href="#none">거창</a></li>
															<li class=""><a href="#none">광복</a></li>
															<li class=""><a href="#none">김해부원</a></li>
															<li class=""><a href="#none">김해아울렛(장유)</a></li>
															<li class=""><a href="#none">대영</a></li>
															<li class=""><a href="#none">동래</a></li>
															<li class=""><a href="#none">동부산아울렛</a></li>
															<li class=""><a href="#none">드라이브 오시리아</a></li>
															<li class=""><a href="#none">마산(합성동)</a></li>
															<li class=""><a href="#none">부산명지</a></li>
															<li class=""><a href="#none">부산본점</a></li>
															<li class=""><a href="#none">사천</a></li>
															<li class=""><a href="#none">서면(전포동)</a></li>
															<li class=""><a href="#none">센텀시티</a></li>
															<li class=""><a href="#none">양산물금</a></li>
															<li class=""><a href="#none">엠비씨네(진주)</a></li>
															<li class=""><a href="#none">오투(부산대)</a></li>
															<li class=""><a href="#none">울산(백화점)</a></li>
															<li class=""><a href="#none">울산성남</a></li>
															<li class=""><a href="#none">진주혁신(롯데몰)</a></li>
															<li class=""><a href="#none">진해</a></li>
															<li class=""><a href="#none">창원</a></li>
															<li class=""><a href="#none">통영</a></li>
															<li class=""><a href="#none">프리미엄경남대</a></li>
															<li class=""><a href="#none">프리미엄진주(중안)</a></li>
															<li class=""><a href="#none">프리미엄해운대(장산역)</a></li>
														</ul>
													</div>
												</div>
												<div id="mCSB_6_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_6_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
													style="display: none;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_6_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 50px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div></li>
									<li class="depth1"><a href="#none">강원<em>(4)</em></a>
									<div class="depth2">
											<div
												class="mCustomScrollbar basicCinemaScroll _mCS_7 mCS-autoHide mCS_no_scrollbar"
												data-mcs-theme="minimal-dark"
												style="position: relative; overflow: visible;">
												<div id="mCSB_7"
													class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
													style="max-height: 753px;" tabindex="0">
													<div id="mCSB_7_container"
														class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<ul>
															<li class=""><a href="#none">동해</a></li>
															<li class=""><a href="#none">속초</a></li>
															<li class=""><a href="#none">원주무실</a></li>
															<li class=""><a href="#none">춘천</a></li>
														</ul>
													</div>
												</div>
												<div id="mCSB_7_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_7_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
													style="display: none;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_7_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 50px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div></li>
									<li class="depth1"><a href="#none">제주<em>(3)</em></a>
									<div class="depth2">
											<div
												class="mCustomScrollbar basicCinemaScroll _mCS_8 mCS-autoHide mCS_no_scrollbar"
												data-mcs-theme="minimal-dark"
												style="position: relative; overflow: visible;">
												<div id="mCSB_8"
													class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
													style="max-height: 753px;" tabindex="0">
													<div id="mCSB_8_container"
														class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<ul>
															<li class=""><a href="#none">서귀포</a></li>
															<li class=""><a href="#none">제주삼화지구</a></li>
															<li class=""><a href="#none">제주아라</a></li>
														</ul>
													</div>
												</div>
												<div id="mCSB_8_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_8_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
													style="display: none;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_8_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 50px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div></li>
								</ul>
							</div>
						</div></li>
					<li><button type="button" class="tab_tit"
							style="width: 50%; left: 50%;">
							<span>스페셜관</span>
						</button>
						<div class="tab_con">
							<h5 class="hidden">전체</h5>
							<div class="cinema_select_wrap cinemaSelect">
								<ul>
									<li class="depth1 active"><a href="#none">샤롯데<em>(11)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">월드타워</a></li>
												<li class=""><a href="#none">동탄</a></li>
												<li class=""><a href="#none">건대입구</a></li>
												<li class=""><a href="#none">에비뉴엘(명동)</a></li>
												<li class=""><a href="#none">김포공항</a></li>
												<li class=""><a href="#none">안산</a></li>
												<li class=""><a href="#none">평촌(범계역)</a></li>
												<li class=""><a href="#none">광주(백화점)</a></li>
												<li class=""><a href="#none">동성로</a></li>
												<li class=""><a href="#none">광복</a></li>
												<li class=""><a href="#none">센텀시티</a></li>
											</ul>
										</div></li>
									<li class="depth1"><a href="#none">수퍼플렉스 G<em>(1)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">월드타워</a></li>
											</ul>
										</div></li>
									<li class="depth1"><a href="#none">수퍼 S<em>(4)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">월드타워</a></li>
												<li class=""><a href="#none">건대입구</a></li>
												<li class=""><a href="#none">천안불당</a></li>
												<li class=""><a href="#none">센텀시티</a></li>
											</ul>
										</div></li>
									<li class="depth1"><a href="#none">수퍼플렉스<em>(9)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">원주무실</a></li>
												<li class=""><a href="#none">수지</a></li>
												<li class=""><a href="#none">파주운정</a></li>
												<li class=""><a href="#none">은평(롯데몰)</a></li>
												<li class=""><a href="#none">청주용암</a></li>
												<li class=""><a href="#none">광명아울렛</a></li>
												<li class=""><a href="#none">상인</a></li>
												<li class=""><a href="#none">광복</a></li>
												<li class=""><a href="#none">수원(수원역)</a></li>
											</ul>
										</div></li>
									<li class="depth1"><a href="#none">수퍼 4D<em>(11)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">월드타워</a></li>
												<li class=""><a href="#none">가산디지털</a></li>
												<li class=""><a href="#none">광복</a></li>
												<li class=""><a href="#none">김포공항</a></li>
												<li class=""><a href="#none">노원</a></li>
												<li class=""><a href="#none">서청주(아울렛)</a></li>
												<li class=""><a href="#none">수완(아울렛)</a></li>
												<li class=""><a href="#none">수원(수원역)</a></li>
												<li class=""><a href="#none">울산(백화점)</a></li>
												<li class=""><a href="#none">청량리</a></li>
												<li class=""><a href="#none">평촌(범계역)</a></li>
											</ul>
										</div></li>
									<li class="depth1"><a href="#none">컬러리움<em>(1)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">수원(수원역)</a></li>
											</ul>
										</div></li>
									<li class="depth1"><a href="#none">씨네살롱<em>(1)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">도곡</a></li>
											</ul>
										</div></li>
									<li class="depth1"><a href="#none">씨네패밀리<em>(1)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">월드타워</a></li>
											</ul>
										</div></li>
									<li class="depth1"><a href="#none">씨네커플<em>(29)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">시흥장현</a></li>
												<li class=""><a href="#none">사천</a></li>
												<li class=""><a href="#none">도곡</a></li>
												<li class=""><a href="#none">홍대입구</a></li>
												<li class=""><a href="#none">부평역사</a></li>
												<li class=""><a href="#none">수원(수원역)</a></li>
												<li class=""><a href="#none">북수원(천천동)</a></li>
												<li class=""><a href="#none">대전관저</a></li>
												<li class=""><a href="#none">원주무실</a></li>
												<li class=""><a href="#none">은평(롯데몰)</a></li>
												<li class=""><a href="#none">대영</a></li>
												<li class=""><a href="#none">파주운정</a></li>
												<li class=""><a href="#none">인천아시아드</a></li>
												<li class=""><a href="#none">향남</a></li>
												<li class=""><a href="#none">인천터미널</a></li>
												<li class=""><a href="#none">청주용암</a></li>
												<li class=""><a href="#none">군산나운</a></li>
												<li class=""><a href="#none">제주삼화지구</a></li>
												<li class=""><a href="#none">의정부민락</a></li>
												<li class=""><a href="#none">진주혁신(롯데몰)</a></li>
												<li class=""><a href="#none">합정</a></li>
												<li class=""><a href="#none">오투(부산대)</a></li>
												<li class=""><a href="#none">상인</a></li>
												<li class=""><a href="#none">서산</a></li>
												<li class=""><a href="#none">월드타워</a></li>
												<li class=""><a href="#none">광복</a></li>
												<li class=""><a href="#none">노원</a></li>
												<li class=""><a href="#none">부산본점</a></li>
												<li class=""><a href="#none">충장로</a></li>
											</ul>
										</div></li>
									<li class="depth1"><a href="#none">씨네비즈<em>(5)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">월드타워</a></li>
												<li class=""><a href="#none">서청주(아울렛)</a></li>
												<li class=""><a href="#none">안양(안양역)</a></li>
												<li class=""><a href="#none">울산(백화점)</a></li>
												<li class=""><a href="#none">대구율하</a></li>
											</ul>
										</div></li>
									<li class="depth1"><a href="#none">씨네컴포트(리클라이너)<em>(19)</em></a>
									<div class="depth2">
											<ul>
												<li class=""><a href="#none">시흥장현</a></li>
												<li class=""><a href="#none">천안불당</a></li>
												<li class=""><a href="#none">전주송천</a></li>
												<li class=""><a href="#none">동탄</a></li>
												<li class=""><a href="#none">판교(창조경제밸리)</a></li>
												<li class=""><a href="#none">춘천</a></li>
												<li class=""><a href="#none">중랑</a></li>
												<li class=""><a href="#none">사천</a></li>
												<li class=""><a href="#none">당진</a></li>
												<li class=""><a href="#none">부산명지</a></li>
												<li class=""><a href="#none">제주삼화지구</a></li>
												<li class=""><a href="#none">제주아라</a></li>
												<li class=""><a href="#none">용인역북</a></li>
												<li class=""><a href="#none">성남중앙(신흥역)</a></li>
												<li class=""><a href="#none">수지</a></li>
												<li class=""><a href="#none">대전센트럴</a></li>
												<li class=""><a href="#none">대전관저</a></li>
												<li class=""><a href="#none">원주무실</a></li>
												<li class=""><a href="#none">영주</a></li>
											</ul>
										</div></li>
								</ul>
							</div>
						</div></li>
				</ul>
			</div>
		</div>
		<div class="article article_movie">
			<div class="group_top">
				<h4 class="tit movie_name">영화 선택</h4>
			</div>
			<div class="inner">
				<div class="list_filter">
					<select title="영화 정렬 방법 선택"><option value="A">예매순</option>
						<option value="B">관객순</option>
						<option value="C">평점순</option>
						<option value="D">예정작</option></select>
					<div class="bx_btn_view">
						<span class="hidden">목록 보기 방식</span>
						<ul>
							<li><button type="button"
									class="btn_view_txt viewTxt active">텍스트형</button></li>
							<li><button type="button" class="btn_view_thm viewThm">썸네일형</button></li>
						</ul>
					</div>
				</div>
				<div class="movie_select_wrap list movieSelect">
					<div class="mCustomScrollbar movieScroll _mCS_9 mCS-autoHide"
						data-mcs-theme="minimal-dark"
						style="position: relative; overflow: visible;">
						<div id="mCSB_9"
							class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
							tabindex="0" style="max-height: none;">
							<div id="mCSB_9_container" class="mCSB_container"
								style="position: relative; top: 0; left: 0;" dir="ltr">
								<ul>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>1</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18639_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">브로커</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>37.9%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>0.0</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.08</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>2</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18632_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_15">15세 관람가</span><strong
														class="tit">범죄도시 2</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>29.5%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>9.7</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.18</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>3</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18508_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">쥬라기 월드: 도미니언</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>10.9%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>8.4</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.01</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>4</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18713_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_all">0세 관람가</span><strong
														class="tit">극장판 포켓몬스터DP: 기라티나와 하늘의 꽃다발 쉐이미</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>10.3%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>9.1</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.01</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>5</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18750_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_15">15세 관람가</span><strong
														class="tit">마녀(魔女) Part2. The Other One</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>6.4%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>0.0</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.15</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>6</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18677_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">그대가 조국</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>1.9%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>9.9</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.25</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>7</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18538_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">닥터 스트레인지: 대혼돈의 멀티버스</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.7%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>8.9</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.04</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>8</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202006/14702_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">탑건: 매버릭</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.7%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>0.0</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.22</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>9</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18512_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_all">0세 관람가</span><strong
														class="tit">버즈 라이트이어</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.5%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>0.0</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.15</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>10</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18725_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_all">0세 관람가</span><strong
														class="tit">애프터 양</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.2%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>7.9</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.01</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>11</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18733_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_15">15세 관람가</span><strong
														class="tit">이공삼칠</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.1%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>0.0</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.08</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>12</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18715_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">카시오페아</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.1%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>9.2</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.01</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>13</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18633_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_all">0세 관람가</span><strong
														class="tit">아치의 노래, 정태춘</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>9.7</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.18</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>14</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18753_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">베르네 부인의 장미정원</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>0.0</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.09</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>15</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18656_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_15">15세 관람가</span><strong
														class="tit">우연과 상상</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>8.7</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.04</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>16</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18698_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">윤시내가 사라졌다</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>0.0</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.08</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>17</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18626_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">오마주</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>8.7</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.26</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>18</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18735_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">올리 마키의 가장 행복한 날</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>7.3</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.02</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>19</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18765_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_15">15세 관람가</span><strong
														class="tit">괴물, 유령, 자유인</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>6.0</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.02</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>20</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18700_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_all">0세 관람가</span><strong
														class="tit">그대라는기억 연숙씨</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>0.0</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.16</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>21</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18556_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_all">0세 관람가</span><strong
														class="tit">극장판 엉덩이 탐정: 수플레 섬의 비밀</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>9.0</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.05</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>22</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18610_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_all">0세 관람가</span><strong
														class="tit">나를 만나는 길</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>8.8</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.12</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>23</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18709_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_15">15세 관람가</span><strong
														class="tit">더 노비스</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>7.8</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.25</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>24</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18758_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_all">0세 관람가</span><strong
														class="tit">명색이 아프레걸</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>9.3</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.26</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>25</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18593_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_all">0세 관람가</span><strong
														class="tit">배드 가이즈</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>9.3</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.04</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>26</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18646_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">안녕하세요</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>8.8</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.25</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>27</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202206/18732_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_all">0세 관람가</span><strong
														class="tit">특수요원 빼꼼</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>7.7</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.06.01</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>28</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18630_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_18">18세 관람가</span><strong
														class="tit">파리, 13구</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>8.3</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.12</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
									<li class=""><a href="#none"><div class="bx_thm">
												<span class="rank"><span class="hidden">순위</span><strong>29</strong></span><img
													src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202205/18644_101_1.jpg"
													alt="포스터" class="mCS_img_loaded">
											</div>
											<div class="group_infor">
												<div class="bx_tit">
													<span class="ic_grade gr_12">12세 관람가</span><strong
														class="tit">플레이그라운드</strong>
												</div>
												<dl>
													<dt>예매율</dt>
													<dd>
														<strong>0.0%</strong>
													</dd>
													<dt class="side">
														<span class="txt_ic_score ty1"><em>평점</em></span>
													</dt>
													<dd>
														<span class="txt_ic_score ty1"><strong>9.2</strong></span>
													</dd>
													<dt>개봉일</dt>
													<dd>2022.05.25</dd>
													<dt class="side day">d -day</dt>
													<dd>
														<strong class="expired"></strong>
													</dd>
												</dl>
											</div></a></li>
								</ul>
							</div>
						</div>
						<div id="mCSB_9_scrollbar_vertical"
							class="mCSB_scrollTools mCSB_9_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
							style="display: block;">
							<div class="mCSB_draggerContainer">
								<div id="mCSB_9_dragger_vertical" class="mCSB_dragger"
									style="position: absolute; min-height: 50px; display: block; height: 368px; max-height: 720px; top: 0px;">
									<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
								</div>
								<div class="mCSB_draggerRail"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="article article_time">
			<div class="group_top">
				<h4 class="tit">2022-06-07(오늘)</h4>
			</div>
			<div class="inner">
				<div class="date_select_wrap dateReserveWrap">
					<div class="slide_wrap slide_reserve_date">
						<ul class="owl-carousel owl-loaded owl-drag">
							<div class="owl-stage-outer">
								<div class="owl-stage"
									style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1470px;">
									<div class="owl-item active" style="width: 52.5px;">
										<li class="item"><strong class="month">6월</strong><span
											class="date"><label><input type="radio"
													name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-07" data-isplaydate="Y"
													data-playweek="오늘" checked=""><strong>7</strong><em>오늘</em></label></span></li>
									</div>
									<div class="owl-item active" style="width: 52.5px;">
										<li class="item"><span class="date"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-08" data-isplaydate="Y"
													data-playweek="수"><strong>8</strong><em>수</em></label></span></li>
									</div>
									<div class="owl-item active" style="width: 52.5px;">
										<li class="item"><span class="date"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-09" data-isplaydate="Y"
													data-playweek="목"><strong>9</strong><em>목</em></label></span></li>
									</div>
									<div class="owl-item active" style="width: 52.5px;">
										<li class="item"><span class="date"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-10" data-isplaydate="Y"
													data-playweek="금"><strong>10</strong><em>금</em></label></span></li>
									</div>
									<div class="owl-item active" style="width: 52.5px;">
										<li class="item"><span class="date sat"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-11" data-isplaydate="Y"
													data-playweek="토"><strong>11</strong><em>토</em></label></span></li>
									</div>
									<div class="owl-item active" style="width: 52.5px;">
										<li class="item"><span class="date sun"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-12" data-isplaydate="Y"
													data-playweek="일"><strong>12</strong><em>일</em></label></span></li>
									</div>
									<div class="owl-item active" style="width: 52.5px;">
										<li class="item"><span class="date"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-13" data-isplaydate="Y"
													data-playweek="월"><strong>13</strong><em>월</em></label></span></li>
									</div>
									<div class="owl-item active" style="width: 52.5px;">
										<li class="item"><span class="date"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-14" data-isplaydate="Y"
													data-playweek="화"><strong>14</strong><em>화</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-15" data-isplaydate="Y"
													data-playweek="수"><strong>15</strong><em>수</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-16" data-isplaydate="Y"
													data-playweek="목"><strong>16</strong><em>목</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-17" data-isplaydate="Y"
													data-playweek="금"><strong>17</strong><em>금</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date sat"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-18" data-isplaydate="Y"
													data-playweek="토"><strong>18</strong><em>토</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date sun"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-19" data-isplaydate="Y"
													data-playweek="일"><strong>19</strong><em>일</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-20" data-isplaydate="Y"
													data-playweek="월"><strong>20</strong><em>월</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date"><label><input
													type="radio" name="radioDate1" data-displayyn="Y"
													data-playdate="2022-06-21" data-isplaydate="Y"
													data-playweek="화"><strong>21</strong><em>화</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-06-22" data-isplaydate="N"
													data-playweek="수"><strong>22</strong><em>수</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-06-23" data-isplaydate="N"
													data-playweek="목"><strong>23</strong><em>목</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-06-24" data-isplaydate="N"
													data-playweek="금"><strong>24</strong><em>금</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date sat disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-06-25" data-isplaydate="N"
													data-playweek="토"><strong>25</strong><em>토</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date sun disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-06-26" data-isplaydate="N"
													data-playweek="일"><strong>26</strong><em>일</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-06-27" data-isplaydate="N"
													data-playweek="월"><strong>27</strong><em>월</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-06-28" data-isplaydate="N"
													data-playweek="화"><strong>28</strong><em>화</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-06-29" data-isplaydate="N"
													data-playweek="수"><strong>29</strong><em>수</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-06-30" data-isplaydate="N"
													data-playweek="목"><strong>30</strong><em>목</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><strong class="month">7월</strong><span
											class="date disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-07-01" data-isplaydate="N"
													data-playweek="금"><strong>1</strong><em>금</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date sat disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-07-02" data-isplaydate="N"
													data-playweek="토"><strong>2</strong><em>토</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date sun disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-07-03" data-isplaydate="N"
													data-playweek="일"><strong>3</strong><em>일</em></label></span></li>
									</div>
									<div class="owl-item" style="width: 52.5px;">
										<li class="item"><span class="date disabled"><label><input
													type="radio" name="radioDate1" data-displayyn="N"
													data-playdate="2022-07-04" data-isplaydate="N"
													data-playweek="월"><strong>4</strong><em>월</em></label></span></li>
									</div>
								</div>
							</div>
							<div class="owl-nav">
								<button type="button" role="presentation"
									class="owl-prev disabled">
									<span aria-label="Previous">‹</span>
								</button>
								<button type="button" role="presentation" class="owl-next">
									<span aria-label="Next">›</span>
								</button>
							</div>
							<div class="owl-dots disabled"></div>
						</ul>
					</div>
				</div>
				<ul class="tab_wrap outer sml">
					<li class="active"><button type="button" class="tab_tit"
							style="width: 16.6667%; left: 0%;">
							<span>전체</span>
						</button>
						<div class="tab_con ty5">
							<h5 class="hidden">전체</h5>
							<div
								class="mCustomScrollbar timeScroll _mCS_11 mCS-autoHide mCS_no_scrollbar"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_11"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_11_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<div class="bx_notice">
											<p>조회 가능한 상영시간이 없습니다.</p>
											<p>조건을 변경해주세요.</p>
										</div>
									</div>
								</div>
								<div id="mCSB_11_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_11_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_11_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div></li>
					<li><button type="button" class="tab_tit"
							style="width: 16.6667%; left: 16.6667%;">
							<span>스페셜관</span>
						</button>
						<div class="tab_con ty5">
							<h5 class="hidden">스페셜관</h5>
							<div
								class="mCustomScrollbar timeScroll _mCS_12 mCS-autoHide mCS_no_scrollbar"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_12"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_12_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<div class="bx_notice">
											<p>조회 가능한 상영시간이 없습니다.</p>
											<p>조건을 변경해주세요.</p>
										</div>
									</div>
								</div>
								<div id="mCSB_12_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_12_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_12_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div></li>
					<li><button type="button" class="tab_tit"
							style="width: 16.6667%; left: 33.3333%;">
							<span>Atmos</span>
						</button>
						<div class="tab_con ty5">
							<h5 class="hidden">Atmos</h5>
							<div
								class="mCustomScrollbar timeScroll _mCS_13 mCS-autoHide mCS_no_scrollbar"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_13"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_13_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<div class="bx_notice">
											<p>조회 가능한 상영시간이 없습니다.</p>
											<p>조건을 변경해주세요.</p>
										</div>
									</div>
								</div>
								<div id="mCSB_13_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_13_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_13_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div></li>
					<li><button type="button" class="tab_tit"
							style="width: 16.6667%; left: 50%;">
							<span>13시간 이후</span>
						</button>
						<div class="tab_con ty5">
							<h5 class="hidden">13시 이후</h5>
							<div
								class="mCustomScrollbar timeScroll _mCS_14 mCS-autoHide mCS_no_scrollbar"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_14"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_14_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<div class="bx_notice">
											<p>조회 가능한 상영시간이 없습니다.</p>
											<p>조건을 변경해주세요.</p>
										</div>
									</div>
								</div>
								<div id="mCSB_14_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_14_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_14_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div></li>
					<li><button type="button" class="tab_tit"
							style="width: 16.6667%; left: 66.6667%;">
							<span>19시간 이후</span>
						</button>
						<div class="tab_con ty5">
							<h5 class="hidden">19시 이후</h5>
							<div
								class="mCustomScrollbar timeScroll _mCS_15 mCS-autoHide mCS_no_scrollbar"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_15"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_15_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<div class="bx_notice">
											<p>조회 가능한 상영시간이 없습니다.</p>
											<p>조건을 변경해주세요.</p>
										</div>
									</div>
								</div>
								<div id="mCSB_15_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_15_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_15_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div></li>
					<li><button type="button" class="tab_tit"
							style="width: 16.6667%; left: 83.3333%;">
							<span>심야</span>
						</button>
						<div class="tab_con ty5">
							<h5 class="hidden">심야</h5>
							<div
								class="mCustomScrollbar timeScroll _mCS_16 mCS-autoHide mCS_no_scrollbar"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_16"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_16_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<div class="bx_notice">
											<p>조회 가능한 상영시간이 없습니다.</p>
											<p>조건을 변경해주세요.</p>
										</div>
									</div>
								</div>
								<div id="mCSB_16_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_16_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_16_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div></li>
				</ul>
			</div>
		</div>
	</div>
</div>











<%@ include file="/WEB-INF/views/include/footer.jsp"%>