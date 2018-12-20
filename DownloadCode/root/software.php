
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8">

		<title>软件下载站</title>
		<meta name="viewport" content="width=800, user-scalable=no">

		<link rel="stylesheet" href="../css/mycss.css" type="text/css"/>
	</head>

	<body>

		<div class="meny">
			<?php
				$content = '未登录';
				$state = '登录';
				$href = '../index.html';
				session_start () ; 
				if (isset($_SESSION['login'])&&($_SESSION['login'])=="allow-login") {
					$content = $_SESSION['username'];
					$state = '注销';
					$href = '../logout.php';
				}
				echo "<h2>$content</h2><span><a href='$href'>$state</a></span>";
			?>
			<ul></br></br>
                <li><a href="../download/index.php">校内下载站</a></li></br></br>
                <li><a href="../zoom/index.php">活动空间</a></li></br></br>
                <li><a href="../recruit/index.php">招贤纳士</a></li></br></br>
            <?php
				if (isset($_SESSION['username'])&&($_SESSION['username'])=="admin") {
					echo "<li><a href='#'>后台管理</a></li></br></br>";
					echo "<li><a href='download.php'>--软件发布审核</a></li></br></br>";
					echo "<li><a href='zoom.php'>--活动发布审核</a></li></br></br>";
					echo "<li><a href='recruit.php'>--岗位信息审核</a></li></br></br>";
				}
			?>
			</ul>
		</div>


		<div class="meny-arrow">展</br>开</br>目</br>录</div>

	
		<div class="contents" align="center"></br>
  
			<img src="../img/logo.png" class="downloadlogo"width="30%" >
		     <form action="search.php?tablename=download" method="post" class="search">
                <input type="search" autocomplete="off" placeholder="输入关键字"  name="search" required>
            </form>
            
			<div class="classification">
	 			<ul id="nav"> 
    				<li><a href="download.php">开发工具</a></li> 
   					<li><a href="environmental.php">开发环境</a></li> 
   					<li><a href="gho.php">系统镜像</a></li> 
   					<li><a href="software.php" class="first">常用软件</a></li> 
   					<li><a href="vedio.php">教学视频</a></li>
				</ul> 
			</div>		

			<div class="hot_download">

                <div class="center">  
                <?php
                    include('../MysqlDb.php');
                    $mysql = new MysqlDbSetting();
    				$mysqlConn=mysql_connect( $mysql->mysqlServerSite,$mysql->mysqlUsername,$mysql->mysqlPasswd)or die("信息加载失败");
					if(!mysql_select_db($mysql->mysqlDatabase)){
					    $check = new MysqlDatabaseCheck();
					    $check->databaseInit();
                    }
					mysql_query($mysql->mysqlSetCode);
					$result=mysql_query($mysql->mysqlGetSoftwareList);
			  		while($row=mysql_fetch_assoc($result))
                    {

                        
                        if("$row[type]"=="0"){
                        ?>
				  		
		
                        </br></br>
                        <div class="img_set">
                            <img class="img" src="../img/software/<?="$row[img]"?>" />
                        </div>
                        <div class="name_set">
                            <p class="name"  id="<?="$row[id]"?>"><?="$row[name]"?></p>
                            <span>  上传者：<?="$row[username]"?> </span>
                            <p class="abstract"><?="$row[abstract]"?></p>
                        </div>
                        <div class="down_set">
                        	
                            <a href="<?="$row[path]"?>" ><input type="button" class="download" value="下载"></input></a></br></br>
                            <a href="review.php?state=success&tablename=download&id=<?="$row[id]"?>" ><button class="review"> 审核通过 </button></a>
                            <a href="review.php?state=failed&tablename=download&id=<?="$row[id]"?>" ><button class="review"> 审核失败 </button></a>
                        	
                        
                        </div></br></br>
                        <div class="hr">
                            <hr />
                        </div>
                        <?php
                    	}
                    
                    }
                    mysql_close($mysqlConn);
                    $mysqlConn=mysql_connect( $mysql->mysqlServerSite,$mysql->mysqlUsername,$mysql->mysqlPasswd)or die("信息加载失败");
					if(!mysql_select_db($mysql->mysqlDatabase)){
					    $check = new MysqlDatabaseCheck();
					    $check->databaseInit();
                    }
					mysql_query($mysql->mysqlSetCode);
					$result1=mysql_query($mysql->mysqlGetSoftwareList);
                    
                    while($row=mysql_fetch_assoc($result1))
                    {


                        if("$row[type]"=="1"){	
                        ?>
				  		
		
                        </br></br>
                        <div class="img_set">
                            <img class="img" src="../img/software/<?="$row[img]"?>" />
                        </div>
                        <div class="name_set">
                            <p class="name"  id="<?="$row[id]"?>"><?="$row[name]"?></p>
                            <span>  上传者：<?="$row[username]"?> </span>
                            <p class="abstract"><?="$row[abstract]"?></p>
                        </div>
                        <div class="down_set">
                            <a href="<?="$row[path]"?>" ><input type="button" class="download" value="下载"></input></a></br></br>
                            <a href="review.php?state=cancel&tablename=download&id=<?="$row[id]"?>" ><button class="review"> 下架 </button></a>
                            <a href="review.php?state=delete&tablename=download&id=<?="$row[id]"?>" ><button class="review"> 删除 </button></a>
                       
                        
                        </div></br></br>
                        <div class="hr">
                            <hr />
                        </div>
                        <?php
                    	}
                    }
                    
                   
                    
                    mysql_close($mysqlConn);?>
                </div>
            </div>
               
		</div>


		<script src="../js/meny.js"></script>
		<script>
			var meny = Meny.create({
				menuElement: document.querySelector( '.meny' ),
				contentsElement: document.querySelector( '.contents' ),
				position: Meny.getQuery().p || 'left',
				height: 200,
				width: 260,
				threshold: 40,
				mouse: true,
				touch: true
			});

			if( Meny.getQuery().u && Meny.getQuery().u.match( /^http/gi ) ) {
				var contents = document.querySelector( '.contents' );
				contents.style.padding = '0px';
				contents.innerHTML = '<div class="cover"></div><iframe src="'+ Meny.getQuery().u +'" style="width: 100%; height: 100%; border: 0; position: absolute;"></iframe>';
			}
		</script>
	</body>
</html>