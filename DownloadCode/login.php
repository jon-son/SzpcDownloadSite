<?php
if(isset($_POST["submit"]) && $_POST["submit"] == "登录")  
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
            $sql = "select user_id,passwd from user where user_id = '$_POST[ID]' and passwd = '$_POST[passwd]'";
            $result = mysql_query($sql);  
            $num = mysql_num_rows($result);  
            if($num)  
            {  
                $row = mysql_fetch_array($result);
                session_start();
                $_SESSION['username']= $user;
                $_SESSION['login'] = "allow-login"; 
              	echo '<script language="JavaScript">;alert("登录成功！！");location.href="download/index.php";</script>;'; mysql_close($mysqlConn);exit;
            }
            else  
            {

                echo "<script>alert('用户名或密码不正确！');history.go(-1);</script>";mysql_close($mysqlConn);exit;

            }  
        }  
    }  
    else  
    {  
        echo "<script>alert('提交未成功！'); history.go(-1);</script>"; mysql_close($mysqlConn);exit;
    }  
  
?>  