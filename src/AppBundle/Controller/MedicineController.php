<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class MedicineController extends Controller
{
    /**
     * @Route("rodzaje-stosowanych-lekow.html", name="medicine")
     */
    public function indexAction()
    {
        return $this->render('AppBundle:Medicine:index.html.twig', array(
            // ...
        ));
    }

}
