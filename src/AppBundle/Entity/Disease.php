<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Disease
 *
 * @ORM\Table(name="disease")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\DiseaseRepository")
 */
class Disease
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

   /**
     * @ORM\ManyToOne(targetEntity="DiseaseCategory", inversedBy="diseases")
     * @ORM\JoinColumn(name="category_id", referencedColumnName="id")
     */
    private $category;
    
    /**
     * @ORM\ManyToOne(targetEntity="PatientCategory")
     * @ORM\JoinColumn(name="patient_id", referencedColumnName="id")
     */
    private $patient;

    /**
     * @var string
     *
     * @ORM\Column(name="type", type="string", length=1)
     */
    private $type;

    /**
     * @var string
     *
     * @ORM\Column(name="symptoms", type="text", nullable=true)
     */
    private $symptoms;
    
    /**
     * @var string
     *
     * @ORM\Column(name="symptomsSearch", type="text", nullable=true)
     */
    private $symptomsSearch;

    /**
     * @var string
     *
     * @ORM\Column(name="recommendation", type="text", nullable=true)
     */
    private $recommendation;

    /**
     * @var string
     *
     * @ORM\Column(name="comments", type="text", nullable=true)
     */
    private $comments;

    /**
     * @var string
     *
     * @ORM\Column(name="picture1", type="string", length=255, nullable=true)
     */
    private $picture1;
    
    /**
     * @var string
     * 
     * @ORM\Column(name="picture1Desc", type="string", length=255, nullable=true)
     */
    private $picture1Desc;

    /**
     * @var string
     *
     * @ORM\Column(name="picture2", type="string", length=255, nullable=true)
     */
    private $picture2;
    
    /**
     * @var string
     * 
     * @ORM\Column(name="picture2Desc", type="string", length=255, nullable=true)
     */
    private $picture2Desc;

    /**
     * @var string
     *
     * @ORM\Column(name="picture3", type="string", length=255, nullable=true)
     */
    private $picture3;
    
    /**
     * @var string
     * 
     * @ORM\Column(name="picture3Desc", type="string", length=255, nullable=true)
     */
    private $picture3Desc;
    
    /**
     * @var string
     *
     * @ORM\Column(name="inFooter", type="boolean", nullable=true)
     */
    private $inFooter;
    
    /**
     * @var string
     *
     * @ORM\Column(name="positionInFooter", type="integer", nullable=true)
     */
    private $positionInFooter;
    
    /**
     * @ORM\OneToOne(targetEntity="Disease")
     * @ORM\JoinColumn(name="disease_id", referencedColumnName="id")
     */
    private $otherPatientDisease;

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return Disease
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

   
    /**
     * Set type
     *
     * @param string $type
     * @return Disease
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Get type
     *
     * @return string 
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * Set symptoms
     *
     * @param string $symptoms
     * @return Disease
     */
    public function setSymptoms($symptoms)
    {
        $this->symptoms = $symptoms;

        return $this;
    }

    /**
     * Get symptoms
     *
     * @return string 
     */
    public function getSymptoms()
    {
        return $this->symptoms;
    }

    /**
     * Set recommendation
     *
     * @param string $recommendation
     * @return Disease
     */
    public function setRecommendation($recommendation)
    {
        $this->recommendation = $recommendation;

        return $this;
    }

    /**
     * Get recommendation
     *
     * @return string 
     */
    public function getRecommendation()
    {
        return $this->recommendation;
    }

    /**
     * Set comments
     *
     * @param string $comments
     * @return Disease
     */
    public function setComments($comments)
    {
        $this->comments = $comments;

        return $this;
    }

    /**
     * Get comments
     *
     * @return string 
     */
    public function getComments()
    {
        return $this->comments;
    }

    /**
     * Set picture1
     *
     * @param string $picture1
     * @return Disease
     */
    public function setPicture1($picture1)
    {
        $this->picture1 = $picture1;

        return $this;
    }

    /**
     * Get picture1
     *
     * @return string 
     */
    public function getPicture1()
    {
        return $this->picture1;
    }

    /**
     * Set picture2
     *
     * @param string $picture2
     * @return Disease
     */
    public function setPicture2($picture2)
    {
        $this->picture2 = $picture2;

        return $this;
    }

    /**
     * Get picture2
     *
     * @return string 
     */
    public function getPicture2()
    {
        return $this->picture2;
    }

    /**
     * Set picture3
     *
     * @param string $picture3
     * @return Disease
     */
    public function setPicture3($picture3)
    {
        $this->picture3 = $picture3;

        return $this;
    }

    /**
     * Get picture3
     *
     * @return string 
     */
    public function getPicture3()
    {
        return $this->picture3;
    }

    /**
     * Set category
     *
     * @param \AppBundle\Entity\DiseaseCategory $category
     * @return Disease
     */
    public function setCategory(\AppBundle\Entity\DiseaseCategory $category = null)
    {
        $this->category = $category;

        return $this;
    }

    /**
     * Get category
     *
     * @return \AppBundle\Entity\DiseaseCategory 
     */
    public function getCategory()
    {
        return $this->category;
    }

    /**
     * Set patient
     *
     * @param \AppBundle\Entity\PatientCategory $patient
     * @return Disease
     */
    public function setPatient(\AppBundle\Entity\PatientCategory $patient = null)
    {
        $this->patient = $patient;

        return $this;
    }

    /**
     * Get patient
     *
     * @return \AppBundle\Entity\PatientCategory 
     */
    public function getPatient()
    {
        return $this->patient;
    }

    /**
     * Set inFooter
     *
     * @param boolean $inFooter
     * @return Disease
     */
    public function setInFooter($inFooter)
    {
        $this->inFooter = $inFooter;

        return $this;
    }

    /**
     * Get inFooter
     *
     * @return boolean 
     */
    public function getInFooter()
    {
        return $this->inFooter;
    }

    /**
     * Set positionInFooter
     *
     * @param integer $positionInFooter
     * @return Disease
     */
    public function setPositionInFooter($positionInFooter)
    {
        $this->positionInFooter = $positionInFooter;

        return $this;
    }

    /**
     * Get positionInFooter
     *
     * @return integer 
     */
    public function getPositionInFooter()
    {
        return $this->positionInFooter;
    }

    /**
     * Set otherPatientDisease
     *
     * @param \AppBundle\Entity\Disease $otherPatientDisease
     * @return Disease
     */
    public function setOtherPatientDisease(\AppBundle\Entity\Disease $otherPatientDisease = null)
    {
        $this->otherPatientDisease = $otherPatientDisease;

        return $this;
    }

    /**
     * Get otherPatientDisease
     *
     * @return \AppBundle\Entity\Disease 
     */
    public function getOtherPatientDisease()
    {
        return $this->otherPatientDisease;
    }

    /**
     * Set symptomsSearch
     *
     * @param string $symptomsSearch
     * @return Disease
     */
    public function setSymptomsSearch($symptomsSearch)
    {
        $this->symptomsSearch = $symptomsSearch;

        return $this;
    }

    /**
     * Get symptomsSearch
     *
     * @return string 
     */
    public function getSymptomsSearch()
    {
        return $this->symptomsSearch;
    }

    /**
     * Set picture1Desc
     *
     * @param string $picture1Desc
     * @return Disease
     */
    public function setPicture1Desc($picture1Desc)
    {
        $this->picture1Desc = $picture1Desc;

        return $this;
    }

    /**
     * Get picture1Desc
     *
     * @return string 
     */
    public function getPicture1Desc()
    {
        return $this->picture1Desc;
    }

    /**
     * Set picture2Desc
     *
     * @param string $picture2Desc
     * @return Disease
     */
    public function setPicture2Desc($picture2Desc)
    {
        $this->picture2Desc = $picture2Desc;

        return $this;
    }

    /**
     * Get picture2Desc
     *
     * @return string 
     */
    public function getPicture2Desc()
    {
        return $this->picture2Desc;
    }

    /**
     * Set picture3Desc
     *
     * @param string $picture3Desc
     * @return Disease
     */
    public function setPicture3Desc($picture3Desc)
    {
        $this->picture3Desc = $picture3Desc;

        return $this;
    }

    /**
     * Get picture3Desc
     *
     * @return string 
     */
    public function getPicture3Desc()
    {
        return $this->picture3Desc;
    }
}
