<?php
/**
 * Created by JetBrains PhpStorm.
 * User: emanuelbohm
 * Date: 06.01.14
 * Time: 16:43
 * To change this template use File | Settings | File Templates.
 */

class Project {
    private $projectId;
    private $title;
    private $category;
    private $description;
    private $stuffId;
    private $matrNr;
    private $finally;
    private $additionalText;

    public function __construct($projectId, $title, $category, $description, $stuffId, $matrNr, $additionalText)
    {
        $this->projectId=$projectId;
        $this->title=$title;
        $this->category=$category;
        $this->description=$description;
        $this->stuffId=$stuffId;
        $this->matrNr=$matrNr;
        $this->additionalText=$additionalText;
        $this->finally=false;
    }

    /**
     * @param mixed $additionalText
     */
    public function setAdditionalText($additionalText)
    {
        $this->additionalText = $additionalText;
    }

    /**
     * @return mixed
     */
    public function getAdditionalText()
    {
        return $this->additionalText;
    }

    /**
     * @param mixed $category
     */
    public function setCategory($category)
    {
        $this->category = $category;
    }

    /**
     * @return mixed
     */
    public function getCategory()
    {
        return $this->category;
    }

    /**
     * @param mixed $description
     */
    public function setDescription($description)
    {
        $this->description = $description;
    }

    /**
     * @return mixed
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * @param mixed $finally
     */
    public function setFinally($finally)
    {
        $this->finally = $finally;
    }

    /**
     * @return mixed
     */
    public function getFinally()
    {
        return $this->finally;
    }

    /**
     * @param mixed $matrNr
     */
    public function setMatrNr($matrNr)
    {
        $this->matrNr = $matrNr;
    }

    /**
     * @return mixed
     */
    public function getMatrNr()
    {
        return $this->matrNr;
    }

    /**
     * @param mixed $projectId
     */
    public function setProjectId($projectId)
    {
        $this->projectId = $projectId;
    }

    /**
     * @return mixed
     */
    public function getProjectId()
    {
        return $this->projectId;
    }

    /**
     * @param mixed $stuffId
     */
    public function setStuffId($stuffId)
    {
        $this->stuffId = $stuffId;
    }

    /**
     * @return mixed
     */
    public function getStuffId()
    {
        return $this->stuffId;
    }

    /**
     * @param mixed $title
     */
    public function setTitle($title)
    {
        $this->title = $title;
    }

    /**
     * @return mixed
     */
    public function getTitle()
    {
        return $this->title;
    }



}