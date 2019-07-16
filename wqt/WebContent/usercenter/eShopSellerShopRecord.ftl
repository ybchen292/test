<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.25,maximum-scale=1.0">
    <title>知识产权-出售列表</title>
    <link rel="shortcut icon " type="images/x-icon" href="/image/logo.ico">
    <link rel="stylesheet" href="/templates/css/wqt_header.css">
    <link rel="stylesheet" href="/usercenter/css/sellOrderRecord.css">
    <link rel="stylesheet" href="/templates/css/footer.css">
    <script>
            //百度推送
            (function(){
                    var bp = document.createElement('script');
                    var curProtocol = window.location.protocol.split(':')[0];
                    if (curProtocol === 'https') {
                        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
                    }else {
                        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
                    }
                    var s = document.getElementsByTagName("script")[0];
                    s.parentNode.insertBefore(bp, s);
            })();
            //百度统计
                    var _hmt = _hmt || [];
                    (function() {
                      var hm = document.createElement("script");
                      hm.src = "https://hm.baidu.com/hm.js?e97b0d63dc2f6999abf0ec6dc77b6596";
                      var s = document.getElementsByTagName("script")[0];
                      s.parentNode.insertBefore(hm, s);
                    })();
        </script>
</head>
<body>
<!--头部-->
<#include "/templates/wqt_header.ftl">

<!--内容区域-->
<div class="content">
    <div class="content_lf">
        <div>
            <h4>个人资料</h4>
            <ul>
                <li><a href="/user/personalinfo">基本资料</a></li>
                <li><a href="/user/postaddr">寄送地址</a></li>
                <li><a href="/user/contract">主体管理</a></li>
            </ul>
        </div>
        <div>
            <h4>我是买家</h4>
            <ul>
                <li class=""><a href="/order/buyer/list">我的知识产权</a></li>
                <li class=""><a href="/order/es/buyer/list">我的企业</a></li>
                <li class=""><a href="/order/wd/buyer/list">我的网店</a></li>
                <li class=""><a href="/user/collection">我的收藏</a></li>
            </ul>
        </div>
        <div>
            <h4>我是卖家</h4>
            <ul>
                <li class=""><a href="/shop/seller/list">我出售的知识产权</a></li>
                <li class=""><a href="/shop/es/seller/list">我出售的企业服务</a></li>
                <li class="hover"><a href="/shop/wd/seller/list">我出售的网店</a></li>
            </ul>
        </div>
        <div>
            <h4>资金管理</h4>
            <ul>
                <li><a href="/user/recharge">我要充值</a></li>
                <li><a href="/user/withdraw">我要提现</a></li>
                <li><a href="/user/capital">资金明细</a></li>
                <li><a href="/user/bill">索取发票</a></li>
                <li><a href="/user/bank">绑定银行卡</a></li>
            </ul>
        </div>
        <div>
            <h4>安全设置</h4>
            <ul>
                <li><a href="/user/safety">实名认证</a></li>
                <li><a href="/user/password">修改密码</a></li>
                <li><a href="/user/email">绑定邮箱</a></li>
                <li><a href="/user/mobile">修改手机号</a></li>
            </ul>
        </div>
        <div>
            <h4>其他管理</h4>
            <ul>
                <li><a href="/user/suggest">我要建议</a></li>
                <li><a href="/user/suggestlist">我的建议</a></li>
            </ul>
        </div>
    </div>


    <div class="content_rt">
        <h4 class="theme">我是卖家 /我出售的网店</h4>
        <ul class="indent_state">
         <#if eShopSellerShopList.shopstate==0>
            <li class="active">
                <a href="/shop/wd/seller/list">全部网店</a>
                <i></i>
            </li>
         <#else>
             <li class="active">
                <a href="/shop/wd/seller/list">全部网店</a>
                <i></i>
             </li>
         </#if>
         
         <#if eShopSellerShopList.shopstate==1>
            <li class="active">
                <a href="/shop/wd/seller/1/list/1">审核中</a>
                <i></i>
            </li>
         <#else>    
            <li>
                <a href="/shop/wd/seller/1/list/1">审核中</a>
                <i></i>
            </li>
         </#if>    
            
        <#if eShopSellerShopList.shopstate==2>
            <li class="active">
                <a href="/shop/wd/seller/2/list/1">在售</a>
                <i></i>
            </li>
        <#else> 
            <li>
                <a href="/shop/wd/seller/2/list/1">在售</a>
                <i></i>
            </li>  
         </#if>   
         <#if eShopSellerShopList.shopstate==4>
            <li class="active">
                <a href="/shop/wd/seller/4/list/1">交接中</a>
                <i></i>
            </li>
        <#else>
            <li>
                <a href="/shop/wd/seller/4/list/1">交接中</a>
                <i></i>
            </li>
         </#if>    
        
         <#if eShopSellerShopList.shopstate==5>
            <li class="active">
                <a href="/shop/wd/seller/5/list/1">已售出</a>
                <i></i>
            </li>
        <#else>
            <li>
                <a href="/shop/wd/seller/5/list/1">已售出</a>
                <i></i>
            </li>
         </#if>    
            
        </ul>
        <!--<div class="search_box">
            <input type="text" placeholder="请输入您要查找的网店名称或者编号">
            <a href="javascript:;">搜索</a>
        </div>-->
        <div class="order_tab">
            <ul>
                <li>商品出售信息</li>
                <li>价格</li>
                <li>当前状态</li>
                <li>商品操作</li>
            </ul>
        </div>
        <#assign allnum=0>
        <!--全部网店-->
        <div class="ttab on" id="all_order">
            <!--有数据加on 否则给class="ttab_data"加on-->
            <div class="ttab_data on">
                <#if eShopSellerShopList.l_UEShopShop?exists>
                    <#assign allnum=1>
	                <#list eShopSellerShopList.l_UEShopShop as wdShop>
	                  <#if wdShop.plateformcode?string=='tm'>
			                <!--天猫-->
			                <div class="brand_order">
			                    <div class="order_number">
			                        <div class="order_time lf">发布时间：${wdShop.shopdeveloptime?if_exists}</div>
			                        <div class="my_kefu rt"><a href="tencent://message/?uin=${wqtworker.qq?if_exists}&amp;Site=&amp;menu=yes" target="_blank">联系我的客服</a></div>
			                    </div>
			                    <div class="order_det clearfix">
			                        <div class="pay_info">
			                            <div class="img">
			                                <a href="/${wdShop.htmlpath?if_exists}" target="_blank">
			                                    <img src="/catTypeIcon/tmpai_${wdShop.shopcategoryordernum?if_exists}.jpg" width="100" height="100" alt="">
			                                </a>
			                            </div>
			                            <div class="info">
			                                <div class="info_ul clear">
			                                    <ul class="txt lf">
			                                        <li>
			                                            <div class="info_tit">
			                                                <span class="info_tit01">网店标题</span>
			                                                <a href="/${wdShop.htmlpath?if_exists}" target="_blank" class="info_tit02">${wdShop.shopname?if_exists}</a>
			                                            </div>
			                                        </li>
			                                        <li class="half">网店类型：天猫商城</li>
			                                        <li class="half">主营类目：${wdShop.shopcategoryname?if_exists}</li>
			                                        <li class="half">商城类型：${wdShop.shopmalltypename?if_exists}</li>
			                                        <li class="half">商标类型：${wdShop.shopbrandcategoryname?if_exists}</li>
			                                        <li class="half">商标类别：${wdShop.shopbrandkindname?if_exists}</li>
			                                        <li class="half">商品编号：${wdShop.shopcode?if_exists}</li>
			                                    </ul>
			                                    <div class="numm lf">
			                                        <p>当前价格：<span>¥${wdShop.shopprice?if_exists}</span></p>
			                                    </div>
			                                    <div class="detail lf">
			                                         <#if wdShop.shopstate==1>
				                                        <span>未付款</span>
				                                     <#elseif wdShop.shopstate==2> 
				                                        <span>在售</span>
				                                     <#elseif wdShop.shopstate==3> 
				                                        <span>已预订</span>
				                                     <#elseif wdShop.shopstate==4> 
				                                        <span>交接中</span>
				                                     <#elseif wdShop.shopstate==5> 
				                                        <span>售完</span>
				                                     <#else>
													  	<span>交易完成</span>
													 </#if>
			                                </div>
			                                <div class="ddzt lf">
			                                    <span>/</span>
			                                </div>
			                                <div class="web_show lf">
			                                    <a href="http://wd.w7tong.com/${wdShop.htmlpath?if_exists}" target="_blank">查看前台展示</a>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			         <#elseif wdShop.plateformcode?string=='tb'>
		                <!--淘宝-->
		                <div class="brand_order">
		                    <div class="order_number">
		                        <div class="order_time lf">发布时间：${wdShop.shopdeveloptime?if_exists}</div>
		                        <div class="my_kefu rt"><a href="tencent://message/?uin=${wqtworker.qq?if_exists}&amp;Site=&amp;menu=yes" target="_blank">联系我的客服</a></div>
		                    </div>
		                    <div class="order_det clearfix">
		                        <div class="pay_info">
		                            <div class="img">
		                                <a href="http://wd.w7tong.com/${wdShop.htmlpath?if_exists}" target="_blank">
		                                    <img src="/catTypeIcon/tbpai_${wdShop.shopcategoryordernum?if_exists}.jpg" width="100" height="100" alt="">
		                                </a>
		                            </div>
		                            <div class="info">
		                                <div class="info_ul clear">
		                                    <ul class="txt lf">
		                                        <li>
		                                            <div class="info_tit">
		                                                <span class="info_tit01">网店标题</span>
		                                                <a href="http://wd.w7tong.com/${wdShop.htmlpath?if_exists}" target="_blank" class="info_tit02">${wdShop.shopname?if_exists}</a>
		                                            </div>
		                                        </li>
		                                        <li class="half">网店类型：淘宝商城</li>
		                                        <li class="half">主营类目：${wdShop.shopcategoryname?if_exists}</li>
			                                    <li class="half">信誉等级：${wdShop.shopcreditlevel?if_exists}</li>
			                                    <li class="half">商品编号：${wdShop.shopcode?if_exists}</li>
		                                    </ul>
		                                    <div class="numm lf">
		                                        <p>当前价格：<span>¥${wdShop.shopprice?if_exists}</span></p>
		                                    </div>
		                                    <div class="detail lf">
		                                         <#if wdShop.shopstate==1>
			                                        <span>未付款</span>
			                                     <#elseif wdShop.shopstate==2> 
			                                        <span>在售</span>
			                                     <#elseif wdShop.shopstate==3> 
			                                        <span>已预订</span>
			                                     <#elseif wdShop.shopstate==4> 
			                                        <span>交接中</span>
			                                     <#elseif wdShop.shopstate==5> 
			                                        <span>售完</span>
			                                     <#else>
												  	<span>交易完成</span>
												 </#if>
		                                    </div>
		                                    <div class="ddzt lf">
		                                        <span>/</span>
		                                    </div>
		                                    <div class="web_show lf">
		                                         <a href="http://wd.w7tong.com/${wdShop.htmlpath?if_exists}" target="_blank">查看前台展示</a>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		             <#elseif wdShop.plateformcode?string=='jd'>
		                <!--京东-->
		                <div class="brand_order">
		                    <div class="order_number">
		                        <div class="order_time lf">发布时间：${wdShop.shopdeveloptime?if_exists}</div>
		                        <div class="my_kefu rt"><a href="tencent://message/?uin=${wqtworker.qq?if_exists}&amp;Site=&amp;menu=yes" target="_blank">联系我的客服</a></div>
		                    </div>
		                    <div class="order_det clearfix">
		                        <div class="pay_info">
		                            <div class="img">
		                                <a href="http://wd.w7tong.com/${wdShop.htmlpath?if_exists}" target="_blank">
		                                    <img src="/catTypeIcon/jdpai_${wdShop.shopcategoryordernum?if_exists}.png" width="100" height="100" alt="">
		                                </a>
		                            </div>
		                            <div class="info">
		                                <div class="info_ul clear">
		                                    <ul class="txt lf">
		                                        <li>
		                                            <div class="info_tit">
		                                                <span class="info_tit01">网店标题</span>
		                                                <a href="http://wd.w7tong.com/${wdShop.htmlpath?if_exists}" target="_blank" class="info_tit02">${wdShop.shopname?if_exists}</a>
		                                            </div>
		                                        </li>
		                                        <li class="half">网店类型：京东商城</li>
		                                        <li class="half">主营类目：${wdShop.shopcategoryname?if_exists}</li>
			                                    <li class="half">商城类型：${wdShop.shopmalltypename?if_exists}</li>
			                                    <li class="half">商标类型：${wdShop.shopbrandcategoryname?if_exists}</li>
			                                    <li class="half">商标类别：${wdShop.shopbrandkindname?if_exists}</li>
			                                    <li class="half">商品编号：${wdShop.shopcode?if_exists}</li>
		                                    </ul>
		                                    <div class="numm lf">
		                                        <p>当前价格：<span>¥${wdShop.shopprice?if_exists}</span></p>
		                                    </div>
		                                    <div class="detail lf">
		                                         <#if wdShop.shopstate==1>
			                                        <span>未付款</span>
			                                     <#elseif wdShop.shopstate==2> 
			                                        <span>在售</span>
			                                     <#elseif wdShop.shopstate==3> 
			                                        <span>已预订</span>
			                                     <#elseif wdShop.shopstate==4> 
			                                        <span>交接中</span>
			                                     <#elseif wdShop.shopstate==5> 
			                                        <span>售完</span>
			                                     <#else>
												  	<span>交易完成</span>
												 </#if>
		                                    </div>
		                                    <div class="ddzt lf">
		                                        <span>/</span>
		                                    </div>
		                                    <div class="web_show lf">
		                                        <a href="http://wd.w7tong.com/${wdShop.htmlpath?if_exists}" target="_blank">查看前台展示</a>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </#if>
		          </#list>
		        </#if>
<!--分页-->
           <#if allnum gte 1>
                <div class="company_list_result_pages">
                    <span class="backhome">
                        <a href="/shop/wd/seller/${eShopSellerShopList.shopstate?if_exists}/list/1" id="firstPage0">首页</a>
                    </span>
                    <span class="prevpage">
                       <#if eShopSellerShopList.pagenum?number gt 1>
                           <a href="/shop/wd/seller/${eShopSellerShopList.shopstate?if_exists}/list/${eShopSellerShopList.pagenum?number-1}" id="prevA0">上一页</a>
                       <#else>
                          <a href="javascript:;" id="prevA0">上一页</a>
                       </#if>
                    </span>
                    <!--<span class="pagesN">
                        <a href="javascript:;">1</a>
                        <a href="javascript:;" class="active">2</a>
                        <a href="javascript:;">3</a>
                    </span>-->
                    <span class="nextpage">
                         <#if eShopSellerShopList.pagenum?number lt eShopSellerShopList.shoppage?number>
	                         <a href="/shop/wd/seller/${eShopSellerShopList.shopstate?if_exists}/list/${eShopSellerShopList.pagenum?number+1}" id="nextA0">下一页</a>
	                      <#else>
	                         <a href="javascript:;" id="nextA0">下一页</a>
	                      </#if>
                    </span>
                    <span class="lastpage">
                        <a href="/shop/wd/seller/${eShopSellerShopList.shopstate?if_exists}/list/${eShopSellerShopList.shoppage?if_exists}" id="nextPage0">尾页</a>
                    </span>
                    <span class="total">
                        共<span id="allPage20">${eShopSellerShopList.shoppage?if_exists}</span>页/当前为第
                        <strong id="nowPage20">${eShopSellerShopList.pagenum?if_exists}</strong>
                        页
                    </span>
                </div>
             </#if>
        </div>
    </div>
</div>
</div>
</div>
</div>






<!--底部-->
<#include "/templates/footer.ftl">
<script src="/wqt/js/jquery-1.11.1.min.js"></script>
<script src="/wqt/templates/js/wqt_header.js"></script>
<script src="/wqt/common/commonurl.js"></script>
<script src="/wqt/layui/layui.js"></script>
<script src="/wqt/usercenter/js/record.js"></script>
</body>
</html>