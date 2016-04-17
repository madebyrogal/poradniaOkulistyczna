<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class CommonController extends Controller
{

    public function adverticeAction()
    {
        $advertice = $this->getDoctrine()->getRepository('AppBundle:Advertice')->getFirst();

        return $this->render('AppBundle:common:_advertice.html.twig', array(
                    'advertice' => $advertice,
        ));
    }

}
