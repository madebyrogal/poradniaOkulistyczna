<?php

namespace Madebyrogal\AdminBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class MainController extends Controller
{
    /**
     * @Route("", name="adminHome")
     */
    public function indexAction()
    {
        return $this->render('MadebyrogalAdminBundle:Main:index.html.twig', array());
    }
    
    public function userAction(){
        $user =  $this->getUser();
        return $this->render('MadebyrogalAdminBundle:Main:user.html.twig', array('user'=>$user));
    }

}
