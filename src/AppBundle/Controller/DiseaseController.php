<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DiseaseController extends Controller
{
    /**
     * @Route("schorzenie.html", name="disease")
     */
    public function indexAction()
    {
        $diseaseCategories = $this->getDoctrine()->getRepository('AppBundle:DiseaseCategory')->findAll();
                
        return $this->render('AppBundle:Disease:index.html.twig', array(
            'diseaseCategories' => $diseaseCategories
        ));
    }

}
