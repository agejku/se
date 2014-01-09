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

    public function __construct($db){
        $this->db=$db;
    }

    public function getUsers(){
        if(!$res=$this->db->query('SELECT * FROM Users;')){
            echo "Operation getUsers failed: (" . $this->db->errno . ") " . $this->db->error;
        }else
            return $res;
    }

    public function getUserById($id){
         if(!$res=$this->db->query('SELECT * FROM Users WHERE id = "' . $id . '"')){
             echo "Operation getUserById failed: (" . $this->db->errno . ") " . $this->db->error;
         }else
             return $res;
    }
    public function createUser(User $user){
       if(!$this->db->query('INSERT INTO Users("id", "name", "email", "details", "pwd") VALUES '
        . $user->getId() . ', ' . $user->getName() . ', ' . $user->getEmail() . ', ' .$user->getDetails() . ',' . $user->getPwd())){
           echo "Insert failed: (" . $this->db->errno . ") " . $this->db->error;
       }
    }
    public function setUser($id, $active=true){

    }

    public function login(User $user){
        if(!$this->getUserById($user->getId())){
            return false;
        }
        return true;

    }
    public function logout(User $user){
        if(!$this->getUserById($user->getId())){
            return false;
        }
        return true;
    }
}