<?php


class MysqlDbSetting
{
    var $mysqlServerSite = "localhost";
    var $mysqlUsername = "root";
    var $mysqlPasswd = "xxxx";
    var $mysqlDatabase = "SzpcDownloadSite";
    var $mysqlSetCode = "set character set 'utf-8'";
    
    var $mysqlGetIdeList  = "SELECT * FROM download WHERE class='ide'";
    var $mysqlGetGhoList  = "SELECT * FROM download WHERE class='gho'";
    var $mysqlGetDevList  = "SELECT * FROM download WHERE class='devlop_environment'";
    var $mysqlGetSoftwareList  = "SELECT * FROM download WHERE class='software'";
    var $mysqlGetVedioList  = "SELECT * FROM download WHERE class='vedio'";

    var $mysqlGetLectureList  = "SELECT * FROM activity WHERE class='lecture'";
    var $mysqlGetCompetitionList  = "SELECT * FROM activity WHERE class='competition'";
    var $mysqlGetElectiveList  = "SELECT * FROM activity WHERE class='elective'";
    var $mysqlGetEntertainmentList  = "SELECT * FROM activity WHERE class='entertainment'";

    
    var $mysqlGetWorkList  = "SELECT * FROM recruit WHERE  class='work'";
    var $mysqlGetInternshipList  = "SELECT * FROM recruit WHERE class='internship'";
    var $mysqlGetPracticeList  = "SELECT * FROM recruit WHERE class='practice'";
    public function mysqlGetSearchList($tablename,$key){
    	
    	return "SELECT * FROM $tablename WHERE name like '%$key%' ";
    }

}
class MysqlDatabaseCheck{
    var $sqlCreateDatabase = "CREATE DATABASE SzpcDownloadSite";

    var $userTableSql="CREATE TABLE `SzpcDownloadSite`.`user` ( `user_id` CHAR(255) NOT NULL , `passwd` CHAR(255) NOT NULL , PRIMARY KEY (`user_id`)) ENGINE = InnoDB CHARSET=utf8;";
    var $userAddSql = "INSERT INTO `user` (`user_id`, `passwd`) VALUES ('admin', 'admin');";
    public function databaseInit(){
        $mysql = new MysqlDbSetting();
        $mysqlConn=mysql_connect( $mysql->mysqlServerSite,$mysql->mysqlUsername,$mysql->mysqlPasswd)or die("数据库连接失败");
        mysql_query($this->sqlCreateDatabase,$mysqlConn);
        mysql_select_db($mysql->mysqlDatabase);
        mysql_query($mysql->mysqlSetCode);
        mysql_query($this->userTableSql);
        mysql_query($this->userAddSql);
        mysql_query($this->GetSoftwareTableSql("download"));
        mysql_query($this->GetZoomTableSql("activity"));
        mysql_query($this->GetRecruitTableSql("recruit"));
        
        }
    public function GetSoftwareTableSql($tableName)
    {
        $sql1 = "CREATE TABLE `SzpcDownloadSite`.`$tableName` ( `id` CHAR(255) NOT NULL , `name` CHAR(255) NOT NULL , `username` CHAR(255) NOT NULL , `path` CHAR(255) NOT NULL ,`type` CHAR(255) NOT NULL, `class` CHAR(255) NOT NULL,`img` CHAR(255) NOT NULL , `abstract` CHAR(255) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB CHARSET=utf8";
        return $sql1;
    }
    public function GetZoomTableSql($tableName)
    {
        $sql2 = "CREATE TABLE `SzpcDownloadSite`.`$tableName` ( `id` CHAR(255) NOT NULL , `name` CHAR(255) NOT NULL , `username` CHAR(255) NOT NULL , `local` CHAR(255) NOT NULL,`type` CHAR(255) NOT NULL ,`class` CHAR(255) NOT NULL,`time` CHAR(255) NOT NULL , `img` CHAR(255) NOT NULL , `abstract` CHAR(255) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB CHARSET=utf8";
        return $sql2;
    }
    public function GetRecruitTableSql($tableName)
    {
        $sql3 = "CREATE TABLE `SzpcDownloadSite`.`$tableName` ( `id` CHAR(255) NOT NULL , `name` CHAR(255) NOT NULL , `username` CHAR(255) NOT NULL , `local` CHAR(255) NOT NULL ,`type` CHAR(255) NOT NULL ,`class` CHAR(255) NOT NULL, `time` CHAR(255) NOT NULL ,`img` CHAR(255) NOT NULL , `abstract` CHAR(255) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB CHARSET=utf8";
        return $sql3;
    }

}
?>
