<?php
  class IndexAction extends Action{
    public function index(){
        $this->user = session('name');

            $postModel = M('Post');                              
            import('ORG.Util.Page');// 导入分页类
            $count      = $postModel->count();// 查询满足要求的总记录数            
            $Page       = new Page($count, 5);// 实例化分页类 传入总记录数和每页显示的记录数
            $show       = $Page->show();// 分页显示输出            
            $list = $postModel->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();  
            $this->posts = $list;  
            $this->page = $show; 
      $this->display();
    }
    public function view(){
      $this->user = session('name');
      $postID = $this->_get('id');
      $PostModel = M('Post');      
      $result = $PostModel->where('id="%d"',array($postID))->find();
      $before =  $PostModel->where('id<"%d"',array($postID))->order('id desc')->limit('0,1')->find();
      $after =  $PostModel->where('id>"%d"',array($postID))->order('id asc')->limit('0,1')->find();
      $this->before = $before;
      $this->after = $after;
      $this->post = $result;
      $this->display();
    }    
  }
  ?>