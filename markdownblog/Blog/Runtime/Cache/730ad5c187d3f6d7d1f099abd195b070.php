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
<div class="row">
                <div class="col-sm-8 blog-main">

                    <?php if(is_array($posts)): $i = 0; $__LIST__ = $posts;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="list-group">
                      <a href="#" class="list-group-item active">
                        <h5 class="list-group-item-heading"><?php echo ($vo["mail"]); ?>说:</h5>
                        <p class="list-group-item-text"><?php echo ($vo["comment"]); ?></p>
                      </a>
                    </div><?php endforeach; endif; else: echo "" ;endif; ?>  
                    <div class="container">
                    <div class="row">
                      <div class="col-md-5 col-md-offset-4"><div class="pagination"><?php echo ($page); ?></div></div>
                    </div>
                  </div>
                    <form method="post" action="__URL__/bbs/addComment">

                            <div class="clearfix">
                                <label>e-mail</label>
                                <div class="input"><input name="mail" type="mail" class="form-control" id="exampleInputEmail1" placeholder="Enter email"</div>
                            </div>
                            <div class="clearfix">
                                <label for="textarea">Content</label>
                                <div class="input">
                                   <textarea class="form-control" name="comment" rows="3" placeholder="You must enter some content." ></textarea>
                                </div>
                            </div>
                            <div class="actions">
                                <button class="btn primary" type="submit">Add Comment</button>
                            </div>
                    </form>
                </div>
            </div>
</div>            
	<div id="footer">
		<div class="container"><p class="text-center">copyright all right &copy; reserve</p></div>
	</div>
</body>
</html>