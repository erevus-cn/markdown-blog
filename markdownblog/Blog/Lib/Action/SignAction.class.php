<?php
  class SignAction extends Action{   
    public function verify(){      
      import('ORG.Util.Image');     
      Image::buildImageVerify($length=5);
    } 
    public function index(){      
      $this->display();
    }
    public function getArg(){        
      $this->username = $this->_post('userName');
      $this->email = $this->_post('email');
      $this->pwd = md5($this->_post('pwd'));   
      $this->repwd = md5($this->_post('repwd')); 
    }
    public function signup(){          
      if($_POST){
        $this->getArg();
        if($this->checkPostData() && $this->issign() ){
          $User = M('User');
          $posData = array(
            'username' => $this->username,
            'email' => $this->email,
            'password' => md5($this->pwd)
          );
          $result = $User->add($posData);
           if($result) {
                  $this->success('操作成功！');
              }else{
                  $this->error('写入错误！');
              }
        } 
      }     
      $this->display('signup');     
    }
    public function checkPostData(){    
      $this->getArg();      
      if(empty($this->username) || empty($this->email) || empty($this->pwd) || empty($this->repwd)){
         throw new Exception('不能为空！');          
         return false;
      }else if($this->pwd !== $this->repwd){
         throw new Exception('两次密码不一样。');
         return false;
      }else{ 
        return ture;
      }
    }
    public function issign(){
      $this->getArg();
      $User = M('User');
      $username_result = $User->where('username="%s"',array($this->username))->field('username')->find();  
      $email_result = $User->where('email="%s"',array($this->email))->field('email')->find();  
      if ($username_result){
        throw new Exception('用户名已被注册');
        return false;
      }
      if ($email_result){
        throw new Exception('邮箱已被注册');
        return false;
      }
      return true;
    }
    public function signin(){
      if(isset($_SESSION['name'])) $this->success('登陆成功','../User/index/');
      if($_POST){
         $this->getArg();
         $User = M('User');
         $result = $User->where('username="%s"',array($this->username))->field('id,username,password')->find();   
         $password = $result['password'];
         if(session('verify') != md5(strtoupper($_POST['verify']))) {
           $this->error('验证码错误！');
         }
         if(!empty($password) && $password == $this->pwd){            
            session('name', $this->username);
            #redirect('/User/index',0);
            #$this->assign('jumpUrl','__URL__/User/index');
            $this->success('登陆成功','../User/index/');
         }else{
            #$this->redirect('Sign/signin', array('info' => 0));
            $this->assign('jumpUrl','__URL__/Sign/signin');
            $this->error('帐号或密码错误');
         }
      }     
      if(isset($_GET['info']) && $_GET['info'] == 0){
          $this->info = '帐号或密码错误';
      }
      $this->display('signin');
    }
    public function signout(){
        session('name',null);
        $this->success('退出成功');     
        $this->assign('jumpUrl','__URL__/User/index');
    }    
  }