<?php
/**
 * Created by JetBrains PhpStorm.
 * User: emanuelbohm
 * Date: 07.01.14
 * Time: 09:32
 * To change this template use File | Settings | File Templates.
 */

class DB
{

    private $connection;


    public function getConnection($host, $dbname, $pwd)
    {
        if (!$this->connection) {
            $this->connection = new mysqli('localhost', 'root', '', 'mydb', '8889');
            if ($this->connection->connect_errno) {
                echo "Failed to connect to MySQL: (" . $this->connection->connect_errno . ") " . $this->connection->connect_error;
            }
        }
        return $this->connection;
    }

    public function closeConnection()
    {
        mysql_close($this->connection);
    }


}