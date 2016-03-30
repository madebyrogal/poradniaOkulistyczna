<?php

namespace AppBundle\Twig;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AppExtension
 *
 * @author rogal
 */
class AppExtension extends \Twig_Extension
{

    public function getFilters()
    {
        return array(
            new \Twig_SimpleFilter('writeType', array($this, 'writeType')),
        );
    }

    public function writeType($type)
    {
        switch($type){
            case 'A':
                $typeText = 'tryb pilny';
                break;
            case 'B':
                $typeText = 'tryb przyspieszony';
                break;
            case 'C':
                $typeText = 'tryb planowy';
                break;
            default :
                $typeText = 'niezdefiniowany';
                break;
        }
        
        return $typeText;
    }
    
    public function getName()
    {
        return 'app_extension';
    }

}
