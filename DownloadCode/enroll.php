<?php
if(isset($_POST["submit"]) && $_POST["submit"] == "注册")  
    {  
        $user = $_POST["ID"];  
        $psw = $_POST["passwd"];  
        if($user == "" || $psw == "")  
        {  
            echo "<script>alert('请输入用户名或密码！'); history.go(-1);</script>";  
        }  
        else  
        {
            include('MysqlDb.php');
            $mysql = new MysqlDbSetting();
            $mysqlConn=mysql_connect( $mysql->mysqlServerSite,$mysql->mysqlUsername,$mysql->mysqlPasswd)or die("数据库连接失败");
            if(!mysql_select_db($mysql->mysqlDatabase)){
                $check = new MysqlDatabaseCheck();
                $check->databaseInit();
            }
            mysql_query($mysql->mysqlSetCode);
            $sql = "select user_id from user where user_id = '$_POST[ID]'";
            $result = mysql_query($sql);  
            $num = mysql_num_rows($result);  
            if($num)  
            {  
              	echo "<script>alert('用户名已存在！');history.go(-1);</script>";mysql_close($mysqlConn);exit;
            }  
            else  
            {
            	$sql1 = "INSERT INTO `user` (`user_id`, `passwd`) VALUES ('$user', '$psw');";
            	$result1 = mysql_query($sql1);  
            	$num1 = mysql_num_rows($result1);
            	if($num1){
            		echo "<script>alert('注册失败！');history.go(-1);</script>";mysql_close($mysqlConn);exit;
            	}else{
            		echo '<script language="JavaScript">;alert("注册成功！！");location.href="index.html";</script>;'; mysql_close($mysqlConn);exit;
            	}
            }  
        }  
    }  
    else  
    {  
        echo "<script>alert('注册信息提交失败！'); history.go(-1);</script>"; mysql_close($mysqlConn);exit;
    }  
  
?>  