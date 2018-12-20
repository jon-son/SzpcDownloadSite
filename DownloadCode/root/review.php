<?php
	include('../MysqlDb.php');
	$mysql = new MysqlDbSetting();
    $mysqlConn=mysql_connect( $mysql->mysqlServerSite,$mysql->mysqlUsername,$mysql->mysqlPasswd)or die("信息加载失败");
    mysql_select_db($mysql->mysqlDatabase);
    mysql_query($mysql->mysqlSetCode);
    
	$state = $_GET['state'];
	$id = $_GET['id'];
	$tablename = $_GET['tablename'];


	if($state == "success"){

            $sql1 = "UPDATE $tablename SET type='1' WHERE id='$id'";
          
            //插入失败
            if (!mysql_query($sql1)){
 				die('<script language="JavaScript">;alert("审核失败，请重试！");history.go(-1);</script>;');mysql_close($mysqlConn);exit;
            }
            //插入成功，将审核通过的列表从待审核表里删除
            else {

           		die('<script language="JavaScript">;alert("审核成功！");history.go(-1);</script>;');mysql_close($mysqlConn);exit;
        		
            }
        
	}
	else if($state == "failed"){  //点击审核失败，相应待审核表中删除审核失败的内容
		$sql2="DELETE FROM $tablename where id='$id'";
   		if (!mysql_query($sql2,$mysqlConn))//删除失败
		{
			die('<script language="JavaScript">;alert("审核失败，请重试！");history.go(-1);</script>;');mysql_close($mysqlConn);exit;
			
		}else{//删除成功
            die('<script language="JavaScript">;alert("审核成功！");history.go(-1);</script>;');mysql_close($mysqlConn);exit;
        }
	}
	else if($state == "cancel"){
		$sql3 = "UPDATE $tablename SET type='0' WHERE id='$id'";
          
            //插入失败
            if (!mysql_query($sql3)){
 				die('<script language="JavaScript">;alert("下架失败，请重试！");history.go(-1);</script>;');mysql_close($mysqlConn);exit;
            }
            //插入成功，将审核通过的列表从待审核表里删除
            else {

           		die('<script language="JavaScript">;alert("下架成功！");history.go(-1);</script>;');mysql_close($mysqlConn);exit;
        		
            }
	}
	else if($state == "delete"){  //点击审核失败，相应待审核表中删除审核失败的内容
		$sql4="DELETE FROM $tablename where id='$id'";
   		if (!mysql_query($sql4,$mysqlConn))//删除失败
		{
			die('<script language="JavaScript">;alert("删除失败，请重试！");history.go(-1);</script>;');mysql_close($mysqlConn);exit;
			
		}else{//删除成功
            die('<script language="JavaScript">;alert("删除成功！");history.go(-1);</script>;');mysql_close($mysqlConn);exit;
        }
	}
?>