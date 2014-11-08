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
	</div>	<br/><br/><br/>


    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">erevus's blog</h1>
        <p class="lead blog-description">躲了一辈子的雨 雨会不会很难过...</p>
      </div>

      <div class="row">

        <div class="col-sm-8 blog-main">
        <?php if(is_array($posts)): $i = 0; $__LIST__ = $posts;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="blog-post">
            <h2 class="blog-post-title"><?php echo ($vo["title"]); ?></h2>
            <p class="blog-post-meta"><?php echo ($vo["create_time"]); ?> by <a href="#"><?php echo ($vo["author"]); ?></a></p>
            <p class="content">
            <?php echo ($vo["content"]); ?>
            </p>
          </div><!-- /.blog-post -->
          <hr/><?php endforeach; endif; else: echo "" ;endif; ?>
      <div class="container">
        <div class="row">
          <div class="col-md-5 col-md-offset-4"><div class="pagination"><?php echo ($page); ?></div></div>
        </div>
      </div>
        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
          <div class="sidebar-module sidebar-module-inset">
            <h4>About me</h4>
            <p>吴文灏<br/>桂林电子科技大学职业技术学院<br/>email:rootcve@gmail.com<br>演示地址:http://t.cn/R7ETK9g</p>
          </div>
          <div class="sidebar-module">
            <h4>Archives</h4>
            <ol class="list-unstyled">
              <li><a href="#">March 2014</a></li>
              <li><a href="#">February 2014</a></li>
              <li><a href="#">January 2014</a></li>
              <li><a href="#">December 2013</a></li>
              <li><a href="#">November 2013</a></li>
              <li><a href="#">October 2013</a></li>
              <li><a href="#">September 2013</a></li>
              <li><a href="#">August 2013</a></li>
              <li><a href="#">July 2013</a></li>
              <li><a href="#">June 2013</a></li>
              <li><a href="#">May 2013</a></li>
              <li><a href="#">April 2013</a></li>
            </ol>
          </div>
          <div class="sidebar-module">
            <h4>友情链接</h4>
            <ol class="list-unstyled">
              <li><a href="#">链接地址1</a></li>
              <li><a href="#">链接地址2</a></li>
              <li><a href="#">链接地址3</a></li>
            </ol>
          </div>
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->
<script src="__PUBLIC__/javascript/jquery.min.js"></script>
<script src="__PUBLIC__/javascript/Markdown.Converter.js"></script>
<script src="__PUBLIC__/javascript/Markdown.Sanitizer.js"></script>
<script>
	$(function () {
		$('.content').each(function (i, content) {
			var converter1 = Markdown.getSanitizingConverter();
			var markdown = $(content).html();
			$(content).html(converter1.makeHtml(markdown));
		});
	});
</script>
	<div id="footer">
		<div class="container"><p class="text-center">copyright all right &copy; reserve</p></div>
	</div>
</body>
</html>