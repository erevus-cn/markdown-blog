<?php
  class UserAction extends Action{  
    public function __construct(){   
          parent::__construct();
          if($this->checkLogin()){
             $this->user = session('name');
             //$this->posts();
          }else{
            $this->error('没有登录',$_SERVER[SCRIPT_NAME]);
          }     
        }
    public function Index(){
      $this->posts();
    }
    public function post(){
      $this->user = session('name');
      if($_POST['posting']){
         $post = array(
            'author' => $this->user,
            'title' => $this->_post('title'),
            'content' =>$_POST['content'],
            'tag' =>$this->_post('tag'),
            'artical_category'=>'default'
         );  
         $PostModel = M('Post');
         $result = $PostModel->add($post);         
         if($result){
            $this->success('成功发表');
            return;
         }
         $this->error('发表失败');
      }
      $this->display('post');
    }
    public function posts(){
      import('ORG.Util.Page');// 导入分页类
      $this->user = session('name');
      $PostModel = M('Post');
      $count = $PostModel->where('author="%s"',array($this->user))->count();// 查询满足要求的总记录数
      $Page = new Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数
      $Page->setConfig('header','篇文章');

      $show = $Page->show();// 分页显示输出 
      $list = $PostModel->where('author="%s"',array($this->user))->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
      $this->total = $count;
      $this->posts = $list;
      $this->page = $show;

      $this->display('index');
    }
    public function edit(){
      $postID = $this->_get('id');
      $this->user = session("name");
      $PostModel = M('Post');
      $result = $PostModel->where('id="%d" and author="%s"',array($postID,$this->user))->find();
      if(empty($result) && !empty($postID)){
        $this->error("没有权限");
      }
      $this->post = $result;
      if(isset($_POST['editing'])){     
         $postData = array(          
            'title' => $this->_post('title'),
            'content' =>$this->_post('content'),
            'tag' =>$this->_post('tag')          
          );
          $updated = $PostModel->where('id="%d" and author="%s"',array($_POST['editing'],$this->user))->save($postData);
          if($updated){
            $this->success('更新成功');
            return;
          }
          $this->error('没有权限');
      }     
      $this->display();
    }
    public function delete(){
      $postID = $this->_get('id');
      $this->user = session("name");
      $PostModel = M('Post');
      $result = $PostModel->where('id="%d" and author="%s"',array($postID,$this->user))->delete();
      if($result){
        $this->success('删除成功');
        return;
      }
      $this->error('没有权限');
      $this->display();
    }
    public function upload(){
      $this->user = session('name');  
      if(isset($_POST['uploading'])){
        import('ORG.Net.UploadFile'); 
        $upload = new UploadFile();
        $upload->maxSize = 1024*1024*2;
        $upload->allowExts = array('jpg','gif','png','jpeg');
        $upload->savePath = './Blog/Tpl/Public/uploads/';  
     
        if(!$upload->upload()){
          $this->error($upload->getErrorMsg());
        }else{
          $info = $upload->getUploadFileInfo();
        }
        $userMoedl = M('Upload');    
        foreach ($info as $key => $value) {  
           $userMoedl->file .=$info[$key]['savename'].',';
        }
        $result = $userMoedl->add();
        if($result){
          $this->success('保存成功');
          return;
        } 
        $this->error('上传失败');        
      }     
      $this->display('upload');
    }
    public function checkLogin(){     
      if(!isset($_SESSION['name']))  return false;    
      return true;
    }
  
  }
