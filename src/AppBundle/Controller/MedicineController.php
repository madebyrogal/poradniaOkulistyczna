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

    /**
     * @Route("rodzaje-stosowanych-lekow-biodacyna.html", name="biodacyna")
     */
    public function biodacynaAction()
    {
        return $this->render('AppBundle:Medicine:biodacyna.html.twig', array(
            // ...
        ));
    }

    /**
     * @Route("rodzaje-stosowanych-lekow-dicortineff.html", name="dicortineff")
     */
    public function dicortineffAction()
    {
        return $this->render('AppBundle:Medicine:dicortineff.html.twig', array(
            // ...
        ));
    }

    /**
     * @Route("rodzaje-stosowanych-lekow-oflodinex.html", name="oflodinex")
     */
    public function oflodinexAction()
    {
        return $this->render('AppBundle:Medicine:oflodinex.html.twig', array(
            // ...
        ));
    }
}
