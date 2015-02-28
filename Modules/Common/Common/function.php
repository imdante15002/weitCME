<?php
/**
 * [function public ]
 * @param  [type] $code [description]
 * @param  string $id   [description]
 * @return [type]       [description]
 */
function check_verify($code, $id = ''){
    $verify = new \Think\Verify();
    return $verify->check($code, $id);
}
/**
 * [forum_display description]
 * @param  [type]  $cate [description]
 * @param  integer $pid  [description]
 * @return [type]        [description]
 */
 function forum_display($forum,$pid=0){
    $arr=array();
    foreach ($forum as $v) {
        if ($v['pid']==$pid) {
            $v['child']=forum_display($forum,$v['id']);
            $arr[]=$v;
        }
    }
    return $arr;
}
function category($category,$pid=0){
    $arr=array();
    foreach ($category as $v) {
        if ($v['pid']==$pid) {
            $v['child']=category($category,$v['id']);
            $arr[]=$v;
        }
    }
    return $arr;
}
/**
 * [getPic description]
 * 获取文本中首张图片地址
 * @param  [type] $content [description]
 * @return [type]          [description]
 */
  function getPic($content){
        if(preg_match_all("/(src)=([\"|']?)([^ \"'>]+\.(gif|jpg|jpeg|bmp|png))\\2/i", $content, $matches)) {
           $str=$matches[3][0];
       if (preg_match('/\/Uploads\/images/', $str)) {
           return $str1=substr($str,7);
       }
    }
    /**
     * 截取文本中的内容作为内容描述
     * @param  [type] $str    [description]
     * @param  [type] $start  [description]
     * @param  [type] $length [description]
     * @return [type]         [description]
     */
    function getTxt($content) {   
    preg_match_all('/./us',0,$match);    
     $chars = is_null(600)? array_slice($match[0],0) : array_slice($match[0],0,600);   
     unset($content);
     return implode('', $chars);   
    } 
    /**
     * 对内容进行锚文本处理
     * @param [type] $content [description]
     * @param [type] $anchor  [description]
     * @param [type] $anlink  [description]
     */
    function AnchorText($content,$anchor,$anlink){
        foreach ($anchor as $key => $v) {
            foreach ($anlink as $key => $value) {
               $anlink="<a href=".$anlink.">".$v."</a>";
            }
        }
        $content=str_replace($anchor,$anlink,$content);
        return $content;
    }
    /**
     * 时间轴函数
     * @param  [type] $time [description]
     * @return [type]       [description]
     */
    function tranTime($time) {  
        $rtime = date("m-d H:i",$time);  
        $htime = date("H:i",$time);  
          
        $time = time() - $time;  
      
        if ($time < 60) {  
            $str = '刚刚';  
        }  
        elseif ($time < 60 * 60) {  
            $min = floor($time/60);  
            $str = $min.'分钟前';  
        }  
        elseif ($time < 60 * 60 * 24) {  
            $h = floor($time/(60*60));  
            $str = $h.'小时前 '.$htime;  
        }  
        elseif ($time < 60 * 60 * 24 * 3) {  
            $d = floor($time/(60*60*24));  
            if($d==1)  
               $str = '昨天 '.$rtime;  
            else  
               $str = '前天 '.$rtime;  
        }  
        else {  
            $str = $rtime;  
        }  
        return $str;  
    }  
}