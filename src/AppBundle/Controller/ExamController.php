<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class ExamController extends Controller
{
    /**
     * @Route("badania-narzadu-wzroku.html", name="exam")
     */
    public function indexAction()
    {
        return $this->render('AppBundle:Exam:index.html.twig', array(
            // ...
        ));
    }

}
