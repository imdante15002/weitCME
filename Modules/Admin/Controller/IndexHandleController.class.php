<?php
namespace Admin\Controller;
use Think\Controller;
class IndexHandleController extends Controller{
	public function cacheHandle(){
       if(I('cache')==1) {
            $dir1=RUNTIME_PATH.'Cache/';
        }
        if(I('logs')==1) {
            $dir2=RUNTIME_PATH.'Logs/';
        }
        if(I('temp')==1) {
            $dir3=RUNTIME_PATH.'Temp/';
        }
        if(I('data')==1) {
            $dir4=RUNTIME_PATH.'Data/';
        }
        if(I('html')==1) {
            $dir5='Html/';
        }
        if(is_dir($dir1)){
            $file_list= scandir($dir1);
            foreach ($file_list as $file){
                if( $file!='.' && $file!='..'){
                    deldir($dir1.'/'.$file);
                    }
                }
                rmdir($dir1);      
            }else{
                unlink($dir1);    
            }
            if(is_dir($dir2)){
                $file_list= scandir($dir2);
                foreach ($file_list as $file){
                if( $file!='.' && $file!='..'){
                    deldir($dir2.'/'.$file);
                    }
                }
                rmdir($dir12);      
            }
            else{
                unlink($dir2);    
            }
        if(is_dir($dir3)){
                $file_list= scandir($dir3);
                foreach ($file_list as $file){
                if( $file!='.' && $file!='..'){
                    deldir($dir3.'/'.$file);
                    }
                }
                rmdir($dir3);      
            }
            else{
                unlink($dir3);    
            }
        if(is_dir($dir4)){
            $file_list= scandir($dir4);
            foreach ($file_list as $file){
                if( $file!='.' && $file!='..'){
                    deldir($dir4.'/'.$file);
                    }
                }
                rmdir($dir4);      
            }else{
                unlink($dir4);    
            }
        if(is_dir($dir5)){
            $file_list= scandir($dir5);
            foreach ($file_list as $file){
                if( $file!='.' && $file!='..'){
                    deldir($dir5.'/'.$file);
                    }
                }
                rmdir($dir5);      
            }
            else{
                unlink($dir5);    
            }
        $this->success('更新成功');
    }
}