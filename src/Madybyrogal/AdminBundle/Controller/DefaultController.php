<?php

namespace Madybyrogal\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('MadybyrogalAdminBundle:Default:index.html.twig');
    }
}
