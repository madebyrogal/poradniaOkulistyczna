<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DiseaseController extends Controller
{

    const DISEASE_CHILD = 1;
    const DISEASE_ADULT = 2;

    /**
     * @Route("schorzenie/{patient}.html", name="disease", defaults={"patient" = "dziecko"})
     */
    public function indexAction($patient)
    {
        switch ($patient) {
            case 'dziecko':
                $diseaseCategories = $this->getDoctrine()->getRepository('AppBundle:DiseaseCategory')->findBy(array('patient' => self::DISEASE_CHILD));
                $patientID = self::DISEASE_CHILD;
                break;
            case 'dorosly':
                $diseaseCategories = $this->getDoctrine()->getRepository('AppBundle:DiseaseCategory')->findBy(array('patient' => self::DISEASE_ADULT));
                $patientID = self::DISEASE_ADULT;
                break;
            default :
                $diseaseCategories = $this->getDoctrine()->getRepository('AppBundle:DiseaseCategory')->findBy(array('patient' => self::DISEASE_CHILD));
                $patientID = self::DISEASE_CHILD;
                break;
        }

        return $this->render('AppBundle:Disease:index.html.twig', array(
                    'diseaseCategories' => $diseaseCategories,
                    'patientID' => $patientID
        ));
    }

    /**
     * Generate footer disease
     */
    public function generateFooterDiseasesAction()
    {
        $footerDiseases = $this->getDoctrine()->getRepository('AppBundle:Disease')->findBy(array('inFooter' => true), array('positionInFooter' => 'ASC'));

        return $this->render('AppBundle:Disease:_generateFooterDiseases.html.twig', array(
                    'footerDiseases' => $footerDiseases
        ));
    }

}
