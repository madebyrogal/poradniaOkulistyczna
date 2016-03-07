<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DiseaseController extends Controller
{
    /**
     * @Route("schorzenie.html")
     */
    public function indexAction()
    {
        return $this->render('AppBundle:Disease:index.html.twig', array(
            // ...
        ));
    }

}
