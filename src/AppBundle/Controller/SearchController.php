<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class SearchController extends Controller
{
    /**
     * @Route("szukaj.html", name="search")
     */
    public function searchAction()
    {
        $diseases = $this->getDoctrine()->getRepository('AppBundle:Disease')->findAll();

        return $this->render('AppBundle:Search:search.html.twig', array(
            '$diseases' => $diseases
        ));
    }

}
