<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;


class MedicineController extends Controller
{
    /**
     * @Route("rodzaje-stosowanych-lekow.html", name="medicine")
     */
    public function indexAction()
    {
       return new Response('Not found', 404);
//        return $this->render('AppBundle:Medicine:index.html.twig', array(
//            // ...
//        ));
    }
}
