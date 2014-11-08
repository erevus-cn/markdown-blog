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
					<?php if($user): ?><li><a href="__URL__/Sign/signout">退出</a></li>										
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
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet/less" href="__PUBLIC__/pagedown/demo/browser/demo.less">
    <script src="__PUBLIC__/pagedown/demo/browser/less/less-1.2.2.min.js"></script>
    <style>
        body {
            background-color: White;
            padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
        }

        .wmd-panel {
            position: relative;
        }

        .btn-html-md {
            position: absolute;
            right: 0;
            top: 0;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }
    </style>

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
						  <li class="active"><a href="">发表文章</a></li>
						</ol>
				    </h3>
				  </div>
				  <div class="panel-body">
				   	 <form action="__URL__/User/edit" method="post">
				   	  <p class="title"><input type="text" class="form-control" name="title" value="<?php echo ($post["title"]); ?>" placeholder="输入标题"></p>
				   	  <p class="post-content">
				   	  	<div id="wmd-button-bar"></div>
				   	  	<textarea class="wmd-input" id="wmd-input" name="content"><?php echo ($post["content"]); ?></textarea>
				   	  </p>
				   	  	<div id="wmd-preview" class="wmd-panel wmd-preview"></div>
				   	  <p class="tag">
				   	  	<input type="text" name="tag" class="form-control" value="<?php echo ($post["tag"]); ?>" placeholder="输入标签">
				   	  </p>
				   	   <button type="submit" class="btn btn-default">更新</button>
				   	   <input type="hidden" name="editing" value="<?php echo ($post["id"]); ?>" />
				   	 </form>
				  </div>
				</div>
			</div>
		</div>
	</div>
</div>
    <script type="text/javascript">
        (function () {
            var converter1 = Markdown.getSanitizingConverter();
            var editor1 = new Markdown.Editor(converter1);
            editor1.run();
            
            $(document)
                .on('click', '.btn-html-md', function () {
                    var $input = $('#wmd-input');
                    var html;

                    if (!$input.data('valueType') || $input.data('valueType') === 'markdown') {
                        $input.data('markdown', $input.val());

                        html = converter1.makeHtml($input.val());

                        $input.val(html);
                        $input.data('valueType', 'html');
                        $input.attr('disabled', 'disabled');
                    } else {
                        $input.val($input.data('markdown'));
                        $input.data('valueType', 'markdown');
                        $input.removeAttr('disabled');
                    }
                });
        })();
    </script>
	<div id="footer">
		<div class="container"><p class="text-center">copyright all right &copy; reserve</p></div>
	</div>
</body>
</html>