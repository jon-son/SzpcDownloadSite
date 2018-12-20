<?php
//全局变量
session_start();
$arrType=array('image/jpg','image/gif','image/png','image/bmp','image/jpeg');
$max_size='1000000000000';      // 最大文件限制（单位：byte）
$upfile='../img/'.$_POST['uprecruit']; //图片目录路径
$file=$_FILES['upimg'];

  
   if($_SERVER['REQUEST_METHOD']=='POST'){ //判断提交方式是否为POST
       //判断上传文件是否存在
        if(!is_uploaded_file($file['tmp_name'])){
            echo '<script language="JavaScript">;alert("图片不存在！");location.href="addrecruit.html";</script>;';
            exit;
        }
       //判断文件大小是否大于500000字节
        if($file['size']>$max_size){
            echo '<script language="JavaScript">;alert("上传图片太大！");location.href="addrecruit.html";</script>;';
            exit;
        }
       //判断图片文件的格式
        if(!in_array($file['type'],$arrType)){
            echo '<script language="JavaScript">;alert("上传图片格式错误！");location.href="addrecruit.html";</script></script>;';
            exit;
         }
       // 判断存放文件目录是否存在
        if(!file_exists($upfile)){
            mkdir($upfile,0777,true);
        }
        $imageSize=getimagesize($file['tmp_name']);
        $img=$imageSize[0].'*'.$imageSize[1];
        $fname=iconv("UTF-8","GBK",$file['name']);
        $ftype=explode('.',$fname);
        $picName=$upfile."/".$fname;
        //判断在要上传的项目文件下，是否存在同名图片
        if(file_exists($picName)){

    
		     unlink ($picName);//删除同名图片
             echo '<script language="JavaScript">;alert("同名文件已存在！");</script></script>;';
        }
        //通过move_uploaded_file（）函数将图片从原本的目录移动到项目文件下
        if(!move_uploaded_file($file['tmp_name'],$picName)){
           echo '<script language="JavaScript">;alert("移动图片出错！");location.href="addrecruit.html";</script>;';
           exit;
        }
        else{
	    $name=$_POST['upname'];
	    $username = $_SESSION['username'];
        $local=$_POST['uplocal'];
        $time=$_POST['uptime'];
        $abstract=$_POST['upabstract'];
         $recruit= $_POST['uprecruit'];
        $img= iconv("GBK","UTF-8",$_COOKIE['img']);

		if($name == "")  
        {  
            echo "<script>alert('请输入活动名字！'); history.go(-1);</script>";  
            exit;
        } 
        else if($local == "")  
        {  
            echo "<script>alert('请输入活动地址！'); history.go(-1);</script>";  
             exit;
        } 
        else if($time == "")  
        {  
            echo "<script>alert('请输入活动时间！'); history.go(-1);</script>";  
             exit;
        } 
        else if($abstract == "")  
        {  
            echo "<script>alert('请输入活动描述！'); history.go(-1);</script>";  
             exit;
        }else{
        	
        include('../MysqlDb.php');
        $mysql = new MysqlDbSetting();
        $mysqlConn=mysql_connect( $mysql->mysqlServerSite,$mysql->mysqlUsername,$mysql->mysqlPasswd)or die("信息加载失败");
        if (!$mysqlConn)
        {
        		unlink ($fname);
            die('<script language="JavaScript">;alert("信息提交失败，请重试！");location.href="addrecruit.html";</script>;');exit;
        }

        mysql_select_db($mysql->mysqlDatabase);
        mysql_query($mysql->mysqlSetCode);
        $select="select * from $recruit";
        
        $result=mysql_query($select);
        $row=$username.strval(time());
        $type="0";
        $sql="INSERT INTO recruit(id,name,type,class,username,local,time,img,abstract)  VALUES('$row','$name',$type,'$recruit','$username','$local','$time','$fname','$abstract');";
     


        if (!mysql_query($sql,$mysqlConn))
        {
        		unlink ($fname);
            die('<script language="JavaScript">;alert("信息提交失败，请重试！");location.href="addrecruit.html";</script>;');exit;
            
        }else{
        	 echo '<script language="JavaScript">;alert("成功提交信息!");location.href="addrecruit.html";</script>;';
        mysql_close($mysqlConn);exit;
        }
       
        }

        }
   }
?>