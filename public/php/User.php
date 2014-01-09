<?php
/**
 * Created by JetBrains PhpStorm.
 * User: emanuelbohm
 * Date: 06.01.14
 * Time: 16:43
 * To change this template use File | Settings | File Templates.
 */

class User {
    private $id;

    private $name;

    private $email;

    private $pwd;

    private $details;


    public function __construct($id, $name, $email, $details, $pwd){

        $this->id=$id;
        $this->name=$name;
        $this->email=$email;
        $this->pwd=md5($pwd);
        $this->details=$details;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $email
     */
    public function setEmail($email)
    {
        $this->email = $email;
    }

    /**
     * @return mixed
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * @param mixed $details
     */
    public function setDetails($details)
    {
        $this->details = $details;
    }

    /**
     * @return mixed
     */
    public function getDetails()
    {
        return $this->details;
    }

    /**
     * @param mixed $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }

    /**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param mixed $pwd
     */
    public function setPwd($pwd)
    {
        $this->pwd = md5($pwd);
    }

    /**
     * @return mixed
     */
    public function getPwd()
    {
        return $this->pwd;
    }

}