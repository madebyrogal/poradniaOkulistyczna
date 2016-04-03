<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * DiseaseCategory
 *
 * @ORM\Table(name="disease_category")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\DiseaseCategoryRepository")
 */
class DiseaseCategory
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
     * @var string
     *
     * @ORM\Column(name="hash", type="string", length=255)
     */
    private $hash;
    
    /**
     * @ORM\ManyToOne(targetEntity="PatientCategory")
     * @ORM\JoinColumn(name="patient_id", referencedColumnName="id")
     */
    private $patient;
    
    /**
     * @ORM\OneToMany(targetEntity="Disease", mappedBy="category")
     */
    private $diseases;


    public function __construct() {
        $this->diseases = new ArrayCollection();
    }
    
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
     * @return DiseaseCategory
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
     * Set hash
     *
     * @param string $hash
     * @return DiseaseCategory
     */
    public function setHash($hash)
    {
        $this->hash = $hash;

        return $this;
    }

    /**
     * Get hash
     *
     * @return string 
     */
    public function getHash()
    {
        return $this->hash;
    }

    /**
     * Add diseases
     *
     * @param \AppBundle\Entity\Disease $diseases
     * @return DiseaseCategory
     */
    public function addDisease(\AppBundle\Entity\Disease $diseases)
    {
        $this->diseases[] = $diseases;

        return $this;
    }

    /**
     * Remove diseases
     *
     * @param \AppBundle\Entity\Disease $diseases
     */
    public function removeDisease(\AppBundle\Entity\Disease $diseases)
    {
        $this->diseases->removeElement($diseases);
    }

    /**
     * Get diseases
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getDiseases()
    {
        return $this->diseases;
    }

    /**
     * Set patient
     *
     * @param \AppBundle\Entity\PatientCategory $patient
     * @return DiseaseCategory
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
}
