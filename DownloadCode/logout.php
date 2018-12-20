<?php
    session_start();
    if(isset($_SESSION['login']) && $_SESSION['login']==='allow-login'){
            session_unset();// **session_unset()**：释放当前在内存中已经创建的所有$_SESSION变量，但是不删除session文件以及不释放对应的session id；
            session_destroy();//销毁一个会话中的全部数据**session_destroy()**：删除当前用户对应的session文件以及释放session id，内存中$_SESSION变量内容依然保留；

            echo '<script language="JavaScript">;alert("注销成功！！");location.href="index.html";</script>;';
        }else{
            echo "<script>alert('注销失败！');history.go(-1);</script>";
        }
?>