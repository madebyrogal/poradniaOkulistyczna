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
        return $this->render('AppBundle:Search:search.html.twig', array(
            // ...
        ));
    }

}
