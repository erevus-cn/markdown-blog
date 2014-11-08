<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>为简洁而生-MarkdownBlog</title>
	<link rel="stylesheet" href="__PUBLIC__/stylesheet/bootstrap.css">
	<link rel="stylesheet" href="__PUBLIC__/stylesheet/main.css">
	<link rel="stylesheet" href="__PUBLIC__/stylesheet/page.css">
	<!-- pagedown -->
	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	<script src="__PUBLIC__/pagedown/jquery.min.js"></script>
    <script src="__PUBLIC__/pagedown/demo/browser/bootstrap/js/bootstrap-transition.js"></script>
    <script src="__PUBLIC__/pagedown/demo/browser/bootstrap/js/bootstrap-modal.js"></script>
    <script src="__PUBLIC__/pagedown/demo/browser/bootstrap/js/bootstrap-tooltip.js"></script>
    <script type="text/javascript" src="__PUBLIC__/pagedown/Markdown.Converter.js"></script>
    <script type="text/javascript" src="__PUBLIC__/pagedown/Markdown.Sanitizer.js"></script>
    <script type="text/javascript" src="__PUBLIC__/pagedown/Markdown.Editor.js"></script>


</head>
<body>
	<div id="header" class="navbar navbar-inverse navbar-fixed-top bs-docs-nav">		
		<div class="container">
			<div class="collapse navbar-collapse bs-navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="__URL__/">首页</a></li>
					<?php if($user): ?><li><a href="__URL__/bbs">留言板</a></li>						
						<li><a href="__URL__/Sign/signout">退出</a></li>										
						<?php else: ?>
						<li><a href="__URL__/Sign/signin">登录</a></li>
						<li><a href="__URL__/Sign/signup">注册</a></li>
                        <li><a href="__URL__/bbs">留言板</a></li><?php endif; ?>
				</ul>
				<?php if($user): ?><ul class="nav navbar-nav navbar-right">
						<li><a href="__URL__/User/index">你好：<?php echo ucwords($user);?></a></li>
					</ul><?php endif; ?>
			</div>
		</div>		
	</div>	
<div class="main">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
	<div class="panel panel-default">
	  <div class="panel-heading">基本功能</div>
	  <div class="panel-body">
	    <ul>
	    	<li><a href="__URL__/User/posts">所有文章</a></li>
	    	<li><a href="__URL__/User/post">发表文章</a></li>				    	
	    	<li><a href="__URL__/User/upload">上传附件</a></li>
	    </ul>
	  </div>
	</div>
</div>
			<div class="col-md-9">
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">
				    	<ol class="breadcrumb" style="margin-bottom: 0;">
						  <li>我的博客</li>						 
						  <li class="active"><a href="">所有文章</a></li>
						</ol>
				    </h3>
				  </div>
				  <div class="panel-body">
				   	<h2>共有<?php echo ($total); ?>篇文章</h2> 
				   	<?php if(is_array($posts)): $i = 0; $__LIST__ = $posts;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="row" style="padding-bottom:10px">
						  <div class="col-md-8">
						  	<a href="__URL__/User/edit/id/<?php echo ($vo["id"]); ?>"><?php echo ($vo["title"]); ?></a>
						  </div>
						  <div class="col-md-2 col-md-offset-2 text-right">							  	
			   				<span class="btn btn-danger  btn-xs">
			   					<a data-id="<?php echo ($vo["id"]); ?>" class="delete" style="color:#fff;">删除</a>
			   				</span>
						  </div>
						</div><?php endforeach; endif; else: echo "" ;endif; ?>
				   	<div class="pagination"><?php echo ($page); ?></div>
				  </div>
				</div>
			</div>
		</div>
	</div>
	<script>
		(function(){
			var btns = document.getElementsByClassName('delete'), i = 0;
			for( i = 0, l = btns.length; i < l; i++){
				btns[i].onclick = function(){
					var sure = confirm('要删除这篇文章吗？');
					if(sure) this.href = '__URL__/User/delete/id/' + this.getAttribute('data-id');
				}
			}
		})();
	</script>
	
</div>
	<div id="footer">
		<div class="container"><p class="text-center">copyright all right &copy; reserve</p></div>
	</div>
</body>
</html>