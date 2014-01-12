<?php
/**
 * Created by JetBrains PhpStorm.
 * User: emanuelbohm
 * Date: 06.01.14
 * Time: 16:58
 * To change this template use File | Settings | File Templates.
 */

class Users {

    private $db;

    public function __construct(){
        $this->db=mysqli_connect('localhost','root', 'root', 'mydb', '8889');
    }

    public function getUsers(){
        if(!$res=$this->db->query('SELECT * FROM Users;')){
            echo "Operation getUsers failed: (" . $this->db->errno . ") " . $this->db->error;
        }else
            return $res;
    }

    public function getUserById($id){
        $rs= $this->db->query('SELECT * FROM Users WHERE id = "' . $id . '";');
        while ($row = $rs->fetch_row()) {
            return $row;
        }
        return false;
    }
    public function createUser(User $user){
       if(!$this->db->query('INSERT INTO Users("id", "name", "email", "details", "pwd") VALUES '
        . $user->getId() . ', ' . $user->getName() . ', ' . $user->getEmail() . ', ' .$user->getDetails() . ',' . $user->getPwd())){
           echo "Insert failed: (" . $this->db->errno . ") " . $this->db->error;
       }
    }
    public function setUser($id, $active=true){

    }


    public function getUserByName($name){

       $rs= $this->db->query('SELECT * FROM Users WHERE name = "' . $name . '";');
        while ($row = $rs->fetch_row()) {
            return $row[7];
        }
        return false;
    }




    public function login($name, $pwd){
       if(md5($pwd) == $this->getUserByName($name))
           return true;
        return false;

    }
    public function logout(User $user){
        if(!$this->getUserById($user->getId())){
            return false;
        }
        return true;
    }
}