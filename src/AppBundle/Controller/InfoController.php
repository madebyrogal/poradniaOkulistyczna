<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class InfoController extends Controller
{
    /**
     * @Route("informacje-o-lekach.html", name="info")
     */
    public function indexAction()
    {
        return $this->render('AppBundle:Info:index.html.twig', array(
                        // ...
        ));
    }

    /**
     * @Route("informacje-o-lekach-biodacyna.html", name="biodacyna")
     */
    public function biodacynaAction()
    {
        return $this->render('AppBundle:Info:biodacyna.html.twig', array(
                        // ...
        ));
    }

    /**
     * @Route("informacje-o-lekach-dicortineff.html", name="dicortineff")
     */
    public function dicortineffAction()
    {
        return $this->render('AppBundle:Info:dicortineff.html.twig', array(
                        // ...
        ));
    }

    /**
     * @Route("informacje-o-lekach-oflodinex.html", name="oflodinex")
     */
    public function oflodinexAction()
    {
        return $this->render('AppBundle:Info:oflodinex.html.twig', array(
                        // ...
        ));
    }

    /**
     * @Route("informacje-o-lekach-tobrosopt.html", name="tobrosopt")
     */
    public function tobrosoptAction()
    {
        return $this->render('AppBundle:Info:tobrosopt.html.twig', array(
                        // ...
        ));
    }

}
