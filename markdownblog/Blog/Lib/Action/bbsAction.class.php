<?php
  class bbsAction extends Action{
    public function index(){
        $this->user = session('name');

            $bbsModel = M('bbs');                              
            import('ORG.Util.Page');// 导入分页类
            $count      = $bbsModel->count();// 查询满足要求的总记录数            
            $Page       = new Page($count, 10);// 实例化分页类 传入总记录数和每页显示的记录数
            $show       = $Page->show();// 分页显示输出            
            $list = $bbsModel->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();  
            $this->posts = $list;  
            $this->page = $show; 
      $this->display();
    }

    public function getArg(){        
        $this->mail = $this->_post('mail');
        $this->comment = $this->_post('comment');
    }
    public function checkComment(){    
      if(empty($this->mail) || empty($this->comment) ){
         throw new Exception('不能为空！');          
         return false;
      }else{ 
        return ture;
      }
    }
    public function addComment(){
      if($_POST){
        $this->getArg();
        if($this->checkComment()){
          $Bbs = M('bbs');
          $postData = array(
            'id' => NUll,
            'mail' => $this->mail,
            'comment' => $this->comment,
          );
          //var_dump($Bbs);
          $result = $Bbs->add($postData);
          var_dump($Bbs->getLastsql());
           if($result) {
                  $this->success('留言成功');
              }else{
                  $this->error('写入错误！');
              }
        } 
      }     
      // $this->display('index');     
    }
}
  
  ?>