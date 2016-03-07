<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class ExamController extends Controller
{
    /**
     * @Route("badania-narzadow-wzroku.html")
     */
    public function indexAction()
    {
        return $this->render('AppBundle:Exam:index.html.twig', array(
            // ...
        ));
    }

}
