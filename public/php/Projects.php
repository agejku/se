<?php
/**
 * Created by JetBrains PhpStorm.
 * User: emanuelbohm
 * Date: 07.01.14
 * Time: 09:32
 * To change this template use File | Settings | File Templates.
 */
class Projects {

    private $db;

    public function __construct(){
        $this->db=mysqli_connect('localhost','root', 'root', 'mydb', '8889');;
    }

    public function getProjects(){
        $data=array();
        $rs= $this->db->query('SELECT * FROM Projects;');
        while ($row = $rs->fetch_row()) {
            $data[]=$row;
        }
        return $data;
    }

    public function getProjectById($id){
        $data=array();
        $rs= $this->db->query('SELECT * FROM Projects WHERE id = "' . $id .'"');
        while ($row = $rs->fetch_row()) {
            $data[]=$row;
        }
        return $data;
    }

    public function createProject(Project $project){
        if(!$this->db->query('INSERT INTO Users("id", "title", "description", "projectCategory", "additionalText", "stuffID", "active", "createDate") VALUES '
        . $project->getId() . ', ' . $project->getTitle() . ', ' . $project->getDescription() . ', ' .$project->getCategory() . ', ' . $project->getAdditionalText() . ', ' . $project->getStuffId() . ', true, ' . new DateTime('now'))){
            echo "Insert failed: (" . $this->db->errno . ") " . $this->db->error;
        }
    }
    public function deleteProject($id){
        if(!$this->db->query('DELETE FROM Projects WHERE id = "' . $id . "'")){
            echo "Delete row from Projects failed: (" . $this->db->errno . ") " . $this->db->error;
            return false;
        }
        return true;
    }

}