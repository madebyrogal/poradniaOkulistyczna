<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class InfoController extends Controller
{
    /**
     * @Route("produkty.html", name="info")
     */
    public function indexAction()
    {
        return $this->render('AppBundle:Info:index.html.twig', array(
                        // ...
        ));
    }

    /**
     * @Route("produkty-biodacyna.html", name="biodacyna")
     */
    public function biodacynaAction()
    {
        return $this->render('AppBundle:Info:index.html.twig', array(
                        // ...
        ));
    }

    /**
     * @Route("produkty-dicortineff.html", name="dicortineff")
     */
    public function dicortineffAction()
    {
        return $this->render('AppBundle:Info:dicortineff.html.twig', array(
                        // ...
        ));
    }

    /**
     * @Route("produkty-oflodinex.html", name="oflodinex")
     */
    public function oflodinexAction()
    {
        return $this->render('AppBundle:Info:oflodinex.html.twig', array(
                        // ...
        ));
    }

    /**
     * @Route("produkty-tobrosopt.html", name="tobrosopt")
     */
    public function tobrosoptAction()
    {
        return $this->render('AppBundle:Info:tobrosopt.html.twig', array(
                        // ...
        ));
    }

}
